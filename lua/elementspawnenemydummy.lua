-- Don't replace spawns on custom enemy spawner map
local level_id = Global.game_settings and Global.game_settings.level_id
if Global.editor_mode or level_id == "modders_devmap" or level_id == "Enemy_Spawner" then
	StreamHeist:log("Editor/Spawner mode is active, spawn group fixes disabled")
	return
end

-- Map to correct incorrect faction spawns
local enemy_replacements = {
	normal = {
		swat_1 = "units/payday2/characters/ene_swat_1/ene_swat_1",
		swat_2 = "units/payday2/characters/ene_swat_2/ene_swat_2",
		swat_3 = "units/payday2/characters/ene_swat_1/ene_swat_1",
		heavy_1 = "units/payday2/characters/ene_swat_1/ene_swat_1",
		heavy_2 = "units/payday2/characters/ene_swat_2/ene_swat_2",
		shield = "units/payday2/characters/ene_shield_2/ene_shield_2",
		sniper = "units/payday2/characters/ene_sniper_1/ene_sniper_1",
		dozer_1 = "units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1",
	},
	overkill = {
		swat_1 = "units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1",
		swat_2 = "units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2",
		swat_3 = "units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1",
		heavy_1 = "units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1",
		heavy_2 = "units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2",
		shield = "units/payday2/characters/ene_shield_1/ene_shield_1",
		sniper = "units/payday2/characters/ene_sniper_1/ene_sniper_1",
		dozer_1 = "units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1",
	},
	overkill_145 = {
		swat_1 = "units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1",
		swat_2 = "units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2",
		swat_3 = "units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1",
		heavy_1 = "units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1",
		heavy_2 = "units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870",
		shield = "units/payday2/characters/ene_shield_1/ene_shield_1",
		sniper = "units/payday2/characters/ene_sniper_2/ene_sniper_2",
		dozer_1 = "units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1",
	},
	easy_wish = {
		swat_1 = "units/payday2/characters/ene_city_swat_1/ene_city_swat_1",
		swat_2 = "units/payday2/characters/ene_city_swat_2/ene_city_swat_2",
		swat_3 = "units/payday2/characters/ene_city_swat_3/ene_city_swat_3",
		heavy_1 = "units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1",
		heavy_2 = "units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870",
		shield = "units/payday2/characters/ene_shield_1/ene_shield_1",
		sniper = "units/payday2/characters/ene_sniper_2/ene_sniper_2",
		dozer_1 = "units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1",
	},
}
enemy_replacements.hard = enemy_replacements.normal
local enemy_mapping = {
	[("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"):key()] = "dozer_1",
	[("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2"):key()] = "dozer_1",
	[("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3"):key()] = "dozer_1",
	[("units/payday2/characters/ene_city_heavy_g36/ene_city_heavy_g36"):key()] = "heavy_1",
	[("units/payday2/characters/ene_city_heavy_r870/ene_city_heavy_r870"):key()] = "heavy_2",
	[("units/payday2/characters/ene_city_shield/ene_city_shield"):key()] = "shield",
	[("units/payday2/characters/ene_city_swat_1/ene_city_swat_1"):key()] = "swat_1",
	[("units/payday2/characters/ene_city_swat_2/ene_city_swat_2"):key()] = "swat_2",
	[("units/payday2/characters/ene_city_swat_3/ene_city_swat_3"):key()] = "swat_3",
	[("units/payday2/characters/ene_city_swat_r870/ene_city_swat_r870"):key()] = "swat_2",
	[("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1"):key()] = "heavy_1",
	[("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870"):key()] = "heavy_2",
	[("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1"):key()] = "swat_1",
	[("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2"):key()] = "swat_2",
	[("units/payday2/characters/ene_shield_1/ene_shield_1"):key()] = "shield",
	[("units/payday2/characters/ene_shield_2/ene_shield_2"):key()] = "shield",
	[("units/payday2/characters/ene_sniper_1/ene_sniper_1"):key()] = "sniper",
	[("units/payday2/characters/ene_sniper_2/ene_sniper_2"):key()] = "sniper",
	[("units/payday2/characters/ene_swat_1/ene_swat_1"):key()] = "swat_1",
	[("units/payday2/characters/ene_swat_2/ene_swat_2"):key()] = "swat_2",
	[("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1"):key()] = "heavy_1",
	[("units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870"):key()] = "heavy_2",
	[("units/payday2/characters/ene_medic_m4/ene_medic_m4"):key()] = "medic_1",
	[("units/payday2/characters/ene_medic_r870/ene_medic_r870"):key()] = "medic_2",
	[("units/payday2/characters/ene_tazer_1/ene_tazer_1"):key()] = "taser",
	[("units/payday2/characters/ene_spook_1/ene_spook_1"):key()] = "cloaker",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy"):key()] = "heavy_1",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"):key()] = "shield",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat"):key()] = "swat_1",
	[("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"):key()] = "swat_1",
	[("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"):key()] = "shield",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_2/ene_zeal_bulldozer_2"):key()] = "dozer_1",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_3/ene_zeal_bulldozer_3"):key()] = "dozer_1",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer"):key()] = "dozer_1",
	[("units/pd2_dlc_drm/characters/ene_bulldozer_minigun_classic/ene_bulldozer_minigun_classic"):key()] = "dozer_1",
	[("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun"):key()] = "dozer_1",
	[("units/pd2_dlc_drm/characters/ene_bulldozer_medic/ene_bulldozer_medic"):key()] = "dozer_1",
	[("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870"):key()] = "dozer_1",
	[("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"):key()] = "dozer_1",
	[("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg"):key()] = "dozer_1",
	[("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_1/ene_bulldozer_hvh_1"):key()] = "dozer_1",
	[("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_2/ene_bulldozer_hvh_2"):key()] = "dozer_1",
	[("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3"):key()] = "dozer_1",
	[("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_2/ene_murkywater_bulldozer_2"):key()] = "dozer_1",
	[("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_3/ene_murkywater_bulldozer_3"):key()] = "dozer_1",
	[("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4"):key()] = "dozer_1",
	[("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_1/ene_murkywater_bulldozer_1"):key()] = "dozer_1",
	[("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_medic/ene_murkywater_bulldozer_medic"):key()] = "dozer_1",
	[("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_r870/ene_swat_dozer_policia_federale_r870"):key()] = "dozer_1",
	[("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_saiga/ene_swat_dozer_policia_federale_saiga"):key()] = "dozer_1",
	[("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249"):key()] = "dozer_1",
	[("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_minigun/ene_swat_dozer_policia_federale_minigun"):key()] = "dozer_1",
	[("units/pd2_dlc_bex/characters/ene_swat_dozer_medic_policia_federale/ene_swat_dozer_medic_policia_federale"):key()] = "dozer_1",
	[("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45"):key()] = "shield",
	[("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg"):key()] = "shield",
	[("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg"):key()] = "shield",
	[("units/pd2_dlc_hvh/characters/ene_shield_hvh_2/ene_shield_hvh_2"):key()] = "shield",
	[("units/pd2_dlc_hvh/characters/ene_shield_hvh_1/ene_shield_hvh_1"):key()] = "shield",
	[("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"):key()] = "shield",
	[("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_c45/ene_swat_shield_policia_federale_c45"):key()] = "shield",
	[("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_mp9/ene_swat_shield_policia_federale_mp9"):key()] = "shield",
	[("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"):key()] = "sniper",
	[("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"):key()] = "sniper",
	[("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"):key()] = "sniper",
	[("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"):key()] = "sniper",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer"):key()] = "taser",
	[("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"):key()] = "taser",
	[("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"):key()] = "taser",
	[("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"):key()] = "taser",
	[("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"):key()] = "taser",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"):key()] = "cloaker",
	[("units/pd2_dlc_mad/characters/ene_akan_fbi_spooc_asval_smg/ene_akan_fbi_spooc_asval_smg"):key()] = "cloaker",
	[("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"):key()] = "cloaker",
	[("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"):key()] = "cloaker",
	[("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"):key()] = "cloaker",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_medic_m4/ene_zeal_medic_m4"):key()] = "medic_1",
	[("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"):key()] = "medic_1",
	[("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"):key()] = "medic_1",
	[("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"):key()] = "medic_1",
	[("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"):key()] = "medic_1",
	[("units/pd2_dlc_gitgud/characters/ene_zeal_medic_r870/ene_zeal_medic_r870"):key()] = "medic_2",
	[("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"):key()] = "medic_2",
	[("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"):key()] = "medic_2",
	[("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"):key()] = "medic_2",
	[("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"):key()] = "medic_2",
	[("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"):key()] = "swat_1",
	[("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"):key()] = "shield",
}

local difficulty
if tweak_data.levels[level_id] and tweak_data.levels[level_id].group_ai_state == "skirmish" then
	difficulty = "normal"
else
	difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
end
Hooks:PostHook(ElementSpawnEnemyDummy, "init", "sh_init", function(self)
	local mapped_name = enemy_mapping[self._enemy_name:key()]
	local mapped_unit = enemy_replacements[difficulty] and enemy_replacements[difficulty][mapped_name]
	local mapped_unit_ids = mapped_unit and Idstring(mapped_unit)
	if mapped_unit_ids and mapped_unit_ids ~= self._enemy_name then
		self._enemy_name = mapped_unit_ids
	end
end)
