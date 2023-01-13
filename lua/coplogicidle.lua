local REACT_IDLE = AIAttentionObject.REACT_IDLE
local REACT_AIM = AIAttentionObject.REACT_AIM
local REACT_ARREST = AIAttentionObject.REACT_ARREST
local REACT_COMBAT = AIAttentionObject.REACT_COMBAT

-- Make cops react more aggressively when appropriate (less stare, more shoot)
local _chk_reaction_to_attention_object_original = CopLogicIdle._chk_reaction_to_attention_object
function CopLogicIdle._chk_reaction_to_attention_object(data, attention_data, ...)
	if data.cool then
		return _chk_reaction_to_attention_object_original(data, attention_data, ...)
	end

	local attention_reaction = attention_data.settings.reaction
	if attention_data.settings.relation ~= "foe" and attention_reaction <= REACT_AIM then
		return REACT_IDLE
	end

	local record = attention_data.criminal_record
	if not record or not attention_data.is_person then
		return attention_reaction
	end

	if record.status == "dead" or record.being_arrested then
		return math.min(attention_reaction, REACT_AIM)
	end

	if record.status == "disabled" then
		if record.assault_t and record.assault_t - record.disabled_t > 0.6 or data.tactics and data.tactics.murder then
			return REACT_COMBAT
		end
		return math.min(attention_reaction, REACT_AIM)
	end

	local can_arrest = not record.status and record.arrest_timeout < data.t and CopLogicBase._can_arrest(data)
	if not can_arrest or record.assault_t and attention_data.unit:base():arrest_settings().aggression_timeout > data.t - record.assault_t then
		return attention_data.verified and REACT_COMBAT or attention_reaction
	end

	for u_key, other_crim_rec in pairs(managers.groupai:state():all_criminals()) do
		local other_crim_attention_info = data.detected_attention_objects[u_key]
		if other_crim_attention_info and (other_crim_attention_info.is_deployable or other_crim_attention_info.verified and other_crim_rec.assault_t and data.t - other_crim_rec.assault_t < other_crim_rec.unit:base():arrest_settings().aggression_timeout) then
			return attention_data.verified and REACT_COMBAT or attention_reaction
		end
	end

	if attention_data.dis > 2000 then
		return math.min(attention_reaction, REACT_AIM)
	end

	return math.min(attention_reaction, REACT_ARREST)
end


-- Fix defend_area objectives being force relocated to areas with players in them
local _chk_relocate_original = CopLogicIdle._chk_relocate
function CopLogicIdle._chk_relocate(data, ...)
	local objective = data.objective
	local objective_type = objective and objective.type
	if objective_type == "follow" then
		return _chk_relocate_original(data, ...)
	elseif objective_type == "hunt" then
		local objective_area = objective.area
		if not objective_area or next(objective_area.criminal.units) then
			return
		end

		local found_areas = {
			[objective_area] = true
		}
		local areas_to_search = {
			objective_area
		}
		local target_area

		while next(areas_to_search) do
			local current_area = table.remove(areas_to_search, 1)

			if next(current_area.criminal.units) then
				target_area = current_area
				break
			end

			for _, n_area in pairs(current_area.neighbours) do
				if not found_areas[n_area] then
					found_areas[n_area] = true
					table.insert(areas_to_search, n_area)
				end
			end
		end

		if not target_area then
			return
		end

		objective.in_place = nil
		objective.path_data = nil
		objective.area = target_area
		objective.nav_seg = target_area.pos_nav_seg

		data.logic._exit(data.unit, "travel")

		return true
	end
end


-- Improve and simplify attention handling
-- Moved certain checks into their own functions for easier adjustments and improved target priority calculation
-- Enemies no longer put low priority on reviving players and will prefer keeping their current target if there's a priority tie
function CopLogicIdle._get_priority_attention(data, attention_objects, reaction_func)
	local best_target_distance
	local best_target, best_target_priority_slot, best_target_reaction = CopLogicIdle._get_forced_attention(data)
	if best_target then
		return best_target, best_target_priority_slot, best_target_reaction
	end

	reaction_func = reaction_func or CopLogicIdle._chk_reaction_to_attention_object

	local weapon_range = data.internal_data.weapon_range or { optimal = 1500, far = 3000, close = 750 }
	local far_range = weapon_range.far
	local optimal_range = weapon_range.optimal
	local close_range = weapon_range.close
	local murder = data.tactics and data.tactics.murder

	for u_key, attention_data in pairs(attention_objects) do
		local att_unit = attention_data.unit
		local crim_record = attention_data.criminal_record

		if not attention_data.identified then
		elseif attention_data.pause_expire_t then
			if attention_data.pause_expire_t < data.t then
				if not attention_data.settings.attract_chance or math.random() < attention_data.settings.attract_chance then
					attention_data.pause_expire_t = nil
				else
					attention_data.pause_expire_t = data.t + math.lerp(attention_data.settings.pause[1], attention_data.settings.pause[2], math.random())
				end
			end
		elseif attention_data.stare_expire_t and attention_data.stare_expire_t < data.t then
			if attention_data.settings.pause then
				attention_data.stare_expire_t = nil
				attention_data.pause_expire_t = data.t + math.lerp(attention_data.settings.pause[1], attention_data.settings.pause[2], math.random())
			end
		else
			local distance = attention_data.dis
			local reaction = reaction_func(data, attention_data, not CopLogicAttack._can_move(data))

			if data.cool and AIAttentionObject.REACT_SCARED <= reaction then
				data.unit:movement():set_cool(false, managers.groupai:state().analyse_giveaway(data.unit:base()._tweak_table, att_unit))
			end

			if reaction and reaction > AIAttentionObject.REACT_IDLE and (not best_target_reaction or reaction >= best_target_reaction) then
				attention_data.aimed_at = CopLogicIdle.chk_am_i_aimed_at(data, attention_data, attention_data.aimed_at and 0.95 or 0.985)

				local status = crim_record and crim_record.status
				local weight_mul = CopLogicIdle._get_attention_weight(attention_data, att_unit, distance)
				local alert_dt = attention_data.alert_t and (data.t - attention_data.alert_t) * weight_mul or 10000
				local dmg_dt = attention_data.dmg_t and (data.t - attention_data.dmg_t) * weight_mul or 10000
				distance = distance * weight_mul

				local target_priority_slot
				if attention_data.verified then
					target_priority_slot = distance < close_range and 2 or distance < optimal_range and 4 or distance < far_range and 6 or 8

					if dmg_dt < 4 then
						target_priority_slot = target_priority_slot - 2
					elseif alert_dt < 3 then
						target_priority_slot = target_priority_slot - 1
					end

					-- Prefer keeping current target (this was also in vanilla code but the priority slot was clamped so in close range it was mostly ignored)
					if data.attention_obj and data.attention_obj.u_key == u_key and data.t - attention_data.acquire_t < 4 then
						target_priority_slot = target_priority_slot - 1
					end

					-- If we have murder tactic and criminal is downed or tased, focus on them
					if murder and reaction ~= AIAttentionObject.REACT_SPECIAL_ATTACK and (status == "electrified" or status == "disabled") then
						target_priority_slot = target_priority_slot - 1
					end
				elseif not status then
					target_priority_slot = 9
				end

				if target_priority_slot then
					if reaction < AIAttentionObject.REACT_COMBAT then
						target_priority_slot = 9 + math.max(0, AIAttentionObject.REACT_COMBAT - reaction)
					end

					if not best_target or target_priority_slot < best_target_priority_slot or target_priority_slot == best_target_priority_slot and distance < best_target_distance then
						best_target = attention_data
						best_target_reaction = reaction
						best_target_priority_slot = target_priority_slot
						best_target_distance = distance
					end
				end
			end
		end
	end

	return best_target, best_target_priority_slot, best_target_reaction
end

-- Helper functions to reuse in _get_priority_attention
function CopLogicIdle._get_forced_attention(data)
	local forced_attention_data = managers.groupai:state():force_attention_data(data.unit)
	if not forced_attention_data then
		return
	end

	if data.attention_obj and data.attention_obj.unit == forced_attention_data.unit then
		return data.attention_obj, 1, AIAttentionObject.REACT_SHOOT
	end

	local forced_attention_object = managers.groupai:state():get_AI_attention_object_by_unit(forced_attention_data.unit)
	if not forced_attention_object then
		return
	end

	for u_key, attention_info in pairs(forced_attention_object) do
		if forced_attention_data.ignore_vis_blockers then
			local vis_ray = World:raycast("ray", data.unit:movement():m_head_pos(), attention_info.handler:get_detection_m_pos(), "slot_mask", data.visibility_slotmask, "ray_type", "ai_vision")

			if not vis_ray or vis_ray.unit:key() == u_key or not vis_ray.unit:visible() then
				local best_target = CopLogicBase._create_detected_attention_object_data(data.t, data.unit, u_key, attention_info, attention_info.handler:get_attention(data.SO_access), true)
				best_target.verified = true
				return best_target, 1, AIAttentionObject.REACT_SHOOT
			end
		else
			local best_target = CopLogicBase._create_detected_attention_object_data(data.t, data.unit, u_key, attention_info, attention_info.handler:get_attention(data.SO_access), true)
			return best_target, 1, AIAttentionObject.REACT_SHOOT
		end
	end
end

function CopLogicIdle._get_attention_weight(attention_data, att_unit, distance)
	local weight_mul = attention_data.settings.weight_mul or 1
	if attention_data.is_local_player then
		local current_state = att_unit:movement():current_state()

		if not current_state._moving and current_state:ducking() then
			weight_mul = weight_mul * managers.player:upgrade_value("player", "stand_still_crouch_camouflage_bonus", 1)
		end

		if managers.player:has_activate_temporary_upgrade("temporary", "chico_injector") and managers.player:upgrade_value("player", "chico_preferred_target", false) then
			weight_mul = weight_mul * 1000
		end

		if _G.IS_VR and tweak_data.vr.long_range_damage_reduction_distance[1] < distance then
			weight_mul = weight_mul * (math.clamp(distance / tweak_data.vr.long_range_damage_reduction_distance[2] / 2, 0, 1) + 1)
		end
	elseif attention_data.is_husk_player then
		local base = att_unit:base()
		local movement = att_unit:movement()

		if not movement._move_data and movement._pose_code == 2 then
			weight_mul = weight_mul * (base:upgrade_value("player", "stand_still_crouch_camouflage_bonus") or 1)
		end

		if base:has_activate_temporary_upgrade("temporary", "chico_injector") and base:upgrade_value("player", "chico_preferred_target") then
			weight_mul = weight_mul * 1000
		end

		if movement:is_vr() and tweak_data.vr.long_range_damage_reduction_distance[1] < distance then
			weight_mul = weight_mul * (math.clamp(distance / tweak_data.vr.long_range_damage_reduction_distance[2] / 2, 0, 1) + 1)
		end
	end
	return 1 / weight_mul
end


-- Fix follow objectives for mission scripted NPCs not triggering in idle logic
local queued_update_original = CopLogicIdle.queued_update
function CopLogicIdle.queued_update(data, ...)
	local my_data = data.internal_data
	queued_update_original(data, ...)
	if data.internal_data ~= my_data then
		return
	end

	if data.cool or data.team.id ~= "criminal1" or data.objective and data.objective.type ~= "free" then
		return
	end

	if not data.path_fail_t or data.t - data.path_fail_t > 6 then
		managers.groupai:state():on_criminal_jobless(data.unit)
	end
end


-- Show hint to player when surrender is impossible
local on_intimidated_original = CopLogicIdle.on_intimidated
function CopLogicIdle.on_intimidated(data, amount, aggressor_unit, ...)
	local surrender = on_intimidated_original(data, amount, aggressor_unit, ...)
	if surrender then
		return surrender
	end

	if not data.char_tweak.surrender and not data.char_tweak.priority_shout or data.surrender_window and data.surrender_window.window_expire_t < data.t then
		local peer = managers.network:session():peer_by_unit(aggressor_unit)
		if peer then
			if peer:id() == managers.network:session():local_peer():id() then
				managers.hint:show_hint("convert_enemy_failed")
			else
				managers.network:session():send_to_peer(peer, "sync_show_hint", "convert_enemy_failed")
			end
		end
	end
end