local data = SkillTreeTweakData.init
function SkillTreeTweakData:init(tweak_data)
    data(self, tweak_data)

	-- Overkill
	self.skills.overkill[1].upgrades = {"player_overkill_damage_multiplier"}
	self.skills.overkill[2].upgrades = {"player_overkill_damage_multiplier_2", "player_overkill_all_weapons", "weapon_swap_speed_multiplier", "weapon_swap_speed_multiplier_2"}

	-- Mag Plus
	self.skills.fast_fire[1].upgrades = {"player_automatic_mag_increase_1"}
	self.skills.fast_fire[2].upgrades = {"player_automatic_mag_increase_2"}
	self.skills.fast_fire.icon_xy = {2, 0}

	-- Body Expertise
	self.skills.body_expertise[1].upgrades = {"player_ap_bullets_1"}
	self.skills.body_expertise[2].upgrades = {"weapon_automatic_head_shot_add_1"}

	-- Bulletstorm
	self.skills.bandoliers[1].upgrades = {"temporary_no_ammo_cost_1"}
	self.skills.bandoliers[2].upgrades = {"temporary_no_ammo_cost_2"}
	self.skills.bandoliers.name_id = "menu_ammo_reservoir_beta"
	self.skills.bandoliers.desc_id = "menu_ammo_reservoir_beta_desc"
	self.skills.bandoliers.icon_xy = {4, 5}

	-- Fully Loaded
	self.skills.carbon_blade[1].upgrades = {"player_regain_throwable_from_ammo_1"}
	self.skills.carbon_blade[2].upgrades = {"extra_ammo_multiplier1", "player_pick_up_ammo_multiplier", "player_pick_up_ammo_multiplier_2"}
	self.skills.carbon_blade.name_id = "menu_bandoliers_beta"
	self.skills.carbon_blade.desc_id = "menu_bandoliers_beta_desc"
	self.skills.carbon_blade.icon_xy = {3, 0}

	-- Saw Massacre
	self.skills.ammo_reservoir[1].upgrades = {"saw_enemy_slicer"}
	self.skills.ammo_reservoir[2].upgrades = {"saw_ignore_shields_1", "saw_panic_when_kill_1"}
	self.skills.ammo_reservoir.name_id = "menu_carbon_blade_beta"
	self.skills.ammo_reservoir.desc_id = "menu_carbon_blade_beta_desc"
	self.skills.ammo_reservoir.icon_xy = {0, 2}

	-- Marksman
	self.skills.sharpshooter[1].upgrades = {"weapon_single_spread_index_addend"}
	self.skills.sharpshooter[2].upgrades = {"single_shot_accuracy_inc_1"}

	-- Confident
	self.skills.cable_guy[1].upgrades = {"player_intimidate_range_mul", "player_intimidate_aura", "player_civ_intimidation_mul"}
	self.skills.cable_guy[2].upgrades = {"team_damage_hostage_absorption"}

	-- Forced Friendship
	self.skills.triathlete[1].upgrades = {"cable_tie_interact_speed_multiplier"}
	self.skills.triathlete[2].upgrades = {"cable_tie_quantity"}

	-- Berserker
	self.skills.wolverine[1].upgrades = {"player_melee_damage_health_ratio_multiplier"}
	self.skills.wolverine[2].upgrades = {"player_movement_speed_damage_health_ratio_multiplier", "player_movement_speed_damage_health_ratio_threshold_multiplier"}

	-- Nine Lives (Tough Guy)
	self.skills.nine_lives[1].upgrades = {"player_bleed_out_health_multiplier"}
	self.skills.nine_lives[2].upgrades = {"player_primary_weapon_when_downed"}

	-- Iron Man
	self.skills.juggernaut[1].upgrades = {"body_armor6"}
	self.skills.juggernaut[2].upgrades = {"player_armor_multiplier"}

	-- Inspire
	self.skills.inspire[1].upgrades = {"player_morale_boost"}
	self.skills.inspire[2].upgrades = {"player_revive_interaction_speed_multiplier"}

	-- Lock N' Load
	self.skills.rifleman[1].upgrades = {"weapon_swap_speed_multiplier", "weapon_enter_steelsight_speed_multiplier"}
	self.skills.rifleman[2].upgrades = {"player_run_and_shoot_1"}
	self.skills.rifleman.icon_xy = {7, 10}
	self.skills.rifleman.name_id = "menu_rifleman"
	self.skills.rifleman.desc_id = "menu_rifleman_desc"

	-- Kilmer
	table.delete(self.skills.speedy_reload[1].upgrades, "smg_reload_speed_multiplier")
	self.skills.speedy_reload.icon_xy = {1, 9}
	self.skills.speedy_reload.name_id = "menu_kilmer"

	-- Resilience
	self.skills.oppressor.icon_xy = {6, 1}

	-- Die Hard
	self.skills.show_of_force[1].upgrades = {"player_damage_shake_addend"}
	self.skills.show_of_force.icon_xy = {2, 12}
	
	-- Fast Hands
	self.skills.shock_and_awe[1].upgrades = {"smg_reload_speed_multiplier", "lmg_reload_speed_multiplier"}
	self.skills.shock_and_awe.icon_xy = {10, 6}
	self.skills.shock_and_awe.name_id = "menu_fast_hands"
	self.skills.shock_and_awe.desc_id = "menu_fast_hands_desc"

	-- Athlete
	self.skills.sprinter[1].upgrades = {"player_walk_speed_multiplier", "player_movement_speed_multiplier"}
	self.skills.sprinter[2].upgrades = {"player_stamina_regen_timer_multiplier", "player_stamina_regen_multiplier"}
	self.skills.sprinter.icon_xy = {1, 8}
	self.skills.sprinter.name_id = "menu_sprinter"
	self.skills.sprinter.desc_id = "menu_sprinter_desc"

	-- Duck and Cover
	self.skills.awareness[1].upgrades = {"player_crouch_speed_multiplier"}
	self.skills.awareness[2].upgrades = {"player_crouch_dodge_chance_1"}
	self.skills.awareness.icon_xy = {0, 11}
	self.skills.awareness.name_id = "menu_awareness"
	self.skills.awareness.desc_id = "menu_awareness_desc"

	-- Sprinter
	self.skills.optic_illusions[1].upgrades = {"player_can_strafe_run", "player_run_speed_multiplier"}
	self.skills.optic_illusions[2].upgrades = {"player_run_dodge_chance", "player_on_zipline_dodge_chance"}
	self.skills.optic_illusions.icon_xy = {7, 3}

	-- Low Blow
	self.skills.unseen_strike[1].upgrades = {"player_detection_risk_add_crit_chance_1"}
	self.skills.unseen_strike[2].upgrades = {"player_detection_risk_add_crit_chance_2"}
	self.skills.unseen_strike.icon_xy = {0, 12}
	self.skills.unseen_strike.name_id = "menu_backstab_beta"
	self.skills.unseen_strike.desc_id = "menu_backstab_beta_desc"

	-- Silencer Expert
	self.skills.backstab[1].upgrades = {"player_silencer_concealment_penalty_decrease_1", "player_silencer_concealment_increase_1"}
	self.skills.backstab[2].upgrades = {"weapon_silencer_damage_multiplier", "weapon_armor_piercing_chance_silencer"}
	self.skills.backstab.icon_xy = {5, 9}
	self.skills.backstab.name_id = "menu_silenced_damage"
	self.skills.backstab.desc_id = "menu_silenced_damage_desc"

	-- Swap Silencer Expert and HVT
	self.trees[12].tiers[3][2] = "backstab"
	self.trees[12].tiers[3][1] = "hitman"
	-- Swap Inner Pockets and Deft Hands
	self.trees[11].tiers[2][2] = "optic_illusions"
	self.trees[12].tiers[2][1] = "thick_skin"

	-- Old Swan Song
	table.delete(self.skills.perseverance[2].upgrades, "player_berserker_no_ammo_cost")

	-- Remove 15% dodge boost from Hackers botnet card
	table.delete(self.specializations[21][9].upgrades, "player_passive_dodge_chance_2")
	
	-- Remove 20% armor from Armorer
	table.delete(self.specializations[3][1].upgrades, "player_tier_armor_multiplier_2")
	table.delete(self.specializations[3][3].upgrades, "player_tier_armor_multiplier_3")
	table.delete(self.specializations[3][9].upgrades, "player_tier_armor_multiplier_6")
	table.insert(self.specializations[3][3].upgrades, "player_tier_armor_multiplier_2")
	table.insert(self.specializations[3][5].upgrades, "player_tier_armor_multiplier_3")
	table.insert(self.specializations[3][5].upgrades, "player_tier_armor_multiplier_5")

	-- Remove armor boost from overdose card on socio
	table.delete(self.specializations[9][7].upgrades, "player_tier_armor_multiplier_3")
	
	-- Give faster swap speed and zerker to Yakuza and get rid of speed boost
	table.delete(self.specializations[12][3].upgrades, "player_movement_speed_damage_health_ratio_multiplier")
	table.insert(self.specializations[12][3].upgrades, "weapon_passive_swap_speed_multiplier_1")
	table.insert(self.specializations[12][9].upgrades, "player_damage_health_ratio_multiplier")
	table.delete(self.specializations[12][9].upgrades, "player_movement_speed_damage_health_ratio_threshold_multiplier")
	
	-- Remove self revive and self-healing on leech
	table.delete(self.specializations[22][1].upgrades, "player_copr_kill_life_leech_1")
	table.delete(self.specializations[22][9].upgrades, "player_activate_ability_downed")

	-- No 2s godmode for anar
	table.delete(self.specializations[15][1].upgrades, "temporary_armor_break_invulnerable_1")

	-- Lower the kingpin health
	table.delete(self.specializations[17][9].upgrades, "player_passive_health_multiplier_4")

	-- Crew Chief nerfs
	table.delete(self.specializations[1][3].upgrades, "player_damage_dampener_close_contact_1")
	table.delete(self.specializations[1][9].upgrades, "team_hostage_damage_dampener_multiplier")

	-- Get rid of burglars crouch move speed boost to avoid bugging upgrades out (no one plays the deck anyway so who cares)
	table.delete(self.specializations[7][9].upgrades, "player_crouch_speed_multiplier_2")

	-- Gambler 9th card gives extended pickup range
	table.insert(self.specializations[10][9].upgrades, "player_increased_pickup_area_1")
	table.insert(self.specializations[10][9].upgrades, "player_increased_pickup_area_2")

	-- Remove some default upgrades
	table.delete(self.default_upgrades, "player_primary_weapon_when_downed")
	table.delete(self.default_upgrades, "player_walk_speed_multiplier")
	table.delete(self.default_upgrades, "player_crouch_speed_multiplier")
end