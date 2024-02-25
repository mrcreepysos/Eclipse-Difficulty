local diff_i = tweak_data:difficulty_to_index(Global.game_settings and Global.game_settings.difficulty or "normal")
local pro_job = Global.game_settings and Global.game_settings.one_down
local phalanx = (diff_i == 6 and "units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1") or "units/payday2/characters/ene_shield_1/ene_shield_1"
local sniper = "units/payday2/characters/ene_sniper_1/ene_sniper_1"
local dozer = (diff_i == 6 and "units/pd2_dlc_drm/characters/ene_bulldozer_minigun_classic/ene_bulldozer_minigun_classic") or "units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"
local taser = ((diff_i == 6 and pro_job) and "units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer") or "units/payday2/characters/ene_tazer_1/ene_tazer_1"
local heavyshotgunner = ((diff_i == 6 and pro_job) and "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_2/ene_zeal_swat_heavy_2") or "units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870"
local heavyrifleman = ((diff_i == 6 and pro_job) and "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy") or "units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1"
local lightshotgunner = ((diff_i == 6 and pro_job) and "units/pd2_dlc_gitgud/characters/ene_zeal_swat_2/ene_zeal_swat_2") or "units/payday2/characters/ene_city_swat_2/ene_city_swat_2"
local lightrifleman = ((diff_i == 6 and pro_job) and "units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat") or "units/payday2/characters/ene_city_swat_3/ene_city_swat_3"
local cloaker = "units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"
local escapeshield = ((diff_i == 6 and pro_job) and "units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield") or "units/payday2/characters/ene_shield_1/ene_shield_1"
local escapedozer1 = "units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun"
local escapedozer2 = "units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer"
local diff_scaling = 0.125 * diff_i
local hard_and_above = diff_i >= 4
local overkill_and_above = diff_i >= 5
local eclipse = diff_i == 6
local enabled_chance_escape_snipers = math.random() < diff_scaling
local enabled_chance_vault_shields = math.random() < diff_scaling
local enabled_chance_escape_shields = math.random() < diff_scaling
local enabled_chance_vault_dozers = math.random() < diff_scaling
local enabled_chance_escape_145_group = math.random() < diff_scaling
local enabled_chance_escape_swats = math.random() < diff_scaling
local enabled_chance_escape_dozers = math.random() < 0.5
local enabled_chance_escape_cloakers = math.random() < 0.5
local enabled_chance_escape_shield_wall = math.random() < 0.75


local optsShield_1 = {
    enemy = escapeshield,
    on_executed = { { id = 100696, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (hard_and_above and enabled_chance_escape_shields)
}
local optsShield_2 = {
    enemy = escapeshield,
    on_executed = { { id = 100695, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (hard_and_above and enabled_chance_escape_shields)
}
local optsSniper_1 = {
	enemy = sniper,
	participate_to_group_ai = true,
	on_executed = { { id = 103091, delay = 3 } },
	spawn_action = "e_sp_repel_into_window",
    enabled = (overkill_and_above and enabled_chance_escape_snipers)
}
local optsSniper_2 = {
	enemy = sniper,
	participate_to_group_ai = true,
	on_executed = { { id = 103090, delay = 3 } },
	spawn_action = "e_sp_repel_into_window",
    enabled = (overkill_and_above and enabled_chance_escape_snipers)
}
local optsSniper_3 = {
	enemy = sniper,
	participate_to_group_ai = true,
	on_executed = { { id = 103117, delay = 3 } },
	spawn_action = "e_sp_repel_into_window",
    enabled = (overkill_and_above and enabled_chance_escape_snipers)
}
local optsSniper_4 = {
	enemy = sniper,
	participate_to_group_ai = true,
	on_executed = { { id = 400008, delay = 3 } },
	spawn_action = "e_sp_repel_into_window",
    enabled = eclipse
}
local optsSniper_5 = {
	enemy = sniper,
	participate_to_group_ai = true,
	on_executed = { { id = 400009, delay = 3 } },
	spawn_action = "e_sp_repel_into_window",
    enabled = eclipse
}
local optsSniper_6 = {
	enemy = sniper,
	participate_to_group_ai = true,
	on_executed = { { id = 400010, delay = 3 } },
	spawn_action = "e_sp_repel_into_window",
    enabled = eclipse
}
local optsVaultShield1 = {
    enemy = phalanx,
    on_executed = { { id = 400025, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (overkill_and_above and enabled_chance_vault_shields)
}
local optsVaultShield2 = {
    enemy = phalanx,
    on_executed = { { id = 400026, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (overkill_and_above and enabled_chance_vault_shields)
}
local optsBulldozer_BO = {
    enemy = dozer,
    on_executed = { { id = 400014, delay = 0 } },
    enabled = overkill_and_above
}
local optsBulldozer_193 = {
    enemy = dozer,
    on_executed = { { id = 400014, delay = 0 } },
    enabled = eclipse
}
local optsBulldozerVault = {
    enemy = dozer,
	spawn_action = "e_sp_clk_3_5m_dwn_vent",
    on_executed = { { id = 400014, delay = 4 } },
    enabled = (eclipse and pro_job and enabled_chance_vault_dozers)
}
local optsDozerElevatorAmbush1 = {
    enemy = escapedozer1,
	participate_to_group_ai = true,
	spawn_action = "e_sp_down_10m_swing_in_var2",
    on_executed = { { id = 400014, delay = 4 } },
    enabled = (eclipse and pro_job and enabled_chance_escape_dozers)
}
local optsDozerElevatorAmbush2 = {
    enemy = escapedozer2,
	participate_to_group_ai = true,
	spawn_action = "e_sp_down_10m_swing_in_var2",
    on_executed = { { id = 400014, delay = 4 } },
    enabled = (eclipse and pro_job and enabled_chance_escape_dozers)
}
local optsSpoocAmbush1 = {
    enemy = cloaker,
	spawn_action = "e_sp_repel_into_window",
    on_executed = { { id = 400029, delay = 3 } },
    enabled = (eclipse and pro_job and enabled_chance_escape_cloakers)
}
local optsSpoocAmbush2 = {
    enemy = cloaker,
	spawn_action = "e_sp_repel_into_window",
    on_executed = { { id = 400030, delay = 3 } },
    enabled = (eclipse and pro_job and enabled_chance_escape_cloakers)
}
local optsTaserEscape = {
    enemy = taser,
	participate_to_group_ai = true,
    enabled = eclipse or (hard_and_above and enabled_chance_escape_145_group)
}
local optsSWAT_HeavySG2 = {
    enemy = heavyshotgunner,
	participate_to_group_ai = true,
    enabled = eclipse or (hard_and_above and enabled_chance_escape_145_group)
}
local optsTaser = {
    enemy = taser,
	participate_to_group_ai = true,
    on_executed = { { id = 102421, delay = 0 } },
    enabled = eclipse or (hard_and_above and enabled_chance_escape_swats)
}
local optsSWAT_HeavySG = {
    enemy = heavyshotgunner,
	participate_to_group_ai = true,
    on_executed = { { id = 400049, delay = 0 } },
    enabled = eclipse or (hard_and_above and enabled_chance_escape_swats)
}
local optsSWAT_HeavyRifle = {
    enemy = heavyrifleman,
	participate_to_group_ai = true,
    on_executed = { { id = 400046, delay = 0 } },
    enabled = eclipse or (hard_and_above and enabled_chance_escape_swats)
}
local optsSWAT_LightRifle = {
    enemy = lightrifleman,
	participate_to_group_ai = true,
    on_executed = { { id = 400048, delay = 0 } },
    enabled = eclipse or (hard_and_above and enabled_chance_escape_swats)
}
local optsSWAT_LightSG = {
    enemy = lightshotgunner,
	participate_to_group_ai = true,
    on_executed = { { id = 400047, delay = 0 } },
    enabled = eclipse or (hard_and_above and enabled_chance_escape_swats)
}
local optsEscapeShield1 = {
    enemy = escapeshield,
    on_executed = { { id = 400032, delay = 0 } },
	participate_to_group_ai = true,
    enabled = overkill_and_above
}
local optsEscapeShield2 = {
    enemy = escapeshield,
    on_executed = { { id = 400035, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (eclipse and pro_job) or (eclipse and enabled_chance_escape_shield_wall)
}
local optsEscapeShield3 = {
    enemy = escapeshield,
    on_executed = { { id = 400037, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (eclipse and pro_job) or (eclipse and enabled_chance_escape_shield_wall)
}
local optsEscapeShield4 = {
    enemy = escapeshield,
    on_executed = { { id = 400039, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (eclipse and pro_job) or (eclipse and enabled_chance_escape_shield_wall)
}
local optsEscapeShield5 = {
    enemy = escapeshield,
    on_executed = { { id = 400041, delay = 0 } },
	participate_to_group_ai = true,
    enabled = (eclipse and pro_job) or (eclipse and enabled_chance_escape_shield_wall)
}

local optsDozerHunt = {
    SO_access = "4096",
    path_style = "none",
    scan = true,
    so_action = "AI_hunt"
}
local optsShieldSO = {
    SO_access = "2048",
    scan = true,
    needs_pos_rsrv = true,
    align_position = true,
    align_rotation = true,
    so_action = "AI_sniper",
    pose = "crouch",
    path_stance = "cbt",
}
local optsSniperSO = {
    scan = true,
    needs_pos_rsrv = true,
    align_position = true,
    align_rotation = true,
    so_action = "AI_sniper",
    pose = "stand"
}
local optsHideSpoocSO = {
    SO_access = "1024",
    scan = true,
    needs_pos_rsrv = true,
    align_position = true,
    align_rotation = true,
    so_action = "e_so_idle_by_container",
    interrupt_dis = 10
}
local optsDefendSO = {
    SO_access = "128",
    scan = true,
    needs_pos_rsrv = true,
    align_position = true,
    align_rotation = true,
    so_action = "AI_defend",
    pose = "stand"
}

return {
    elements = {
        --Lobby Shields
        StreamHeist:gen_dummy(
            400000,
            "shield_lobby_wall_1",
            Vector3(-3123, -3103, -24.998),
            Rotation(0, 0, -0),
            optsShield_1
        ),
        StreamHeist:gen_dummy(
            400001,
            "shield_lobby_wall_2",
            Vector3(-3190, -3098, -24.998),
            Rotation(0, 0, -0),
            optsShield_2
        ),

        --Lobby Snipers
        StreamHeist:gen_dummy(
            400002,
            "sniper_lobby_1",
            Vector3(677, 57, 475.020),
            Rotation(90, -0, -0),
            optsSniper_1
        ),
        StreamHeist:gen_dummy(
            400003,
            "sniper_lobby_2",
            Vector3(677, 12, 475.020),
            Rotation(90, -0, -0),
            optsSniper_2
        ),
        StreamHeist:gen_dummy(
            400004,
            "sniper_lobby_3",
            Vector3(677, 57, 475.020),
            Rotation(90, -0, -0),
            optsSniper_3
        ),
        StreamHeist:gen_dummy(
            400005,
            "sniper_lobby_4",
            Vector3(677, 12, 475.020),
            Rotation(90, -0, -0),
            optsSniper_4
        ),
        StreamHeist:gen_dummy(
            400006,
            "sniper_lobby_5",
            Vector3(677, 57, 475.020),
            Rotation(90, -0, -0),
            optsSniper_5
        ),
        StreamHeist:gen_dummy(
            400007,
            "sniper_lobby_6",
            Vector3(677, 12, 475.020),
            Rotation(90, -0, -0),
            optsSniper_6
        ),
        StreamHeist:gen_so(
            400008,
            "special_sniper_so_1",
            Vector3(90, -1882, 475),
            Rotation(90, -0, -0),
            optsSniperSO
        ),
		StreamHeist:gen_so(
            400009,
            "special_sniper_so_2",
            Vector3(-1175, -1375, 475),
            Rotation(0, 0, 0),
            optsSniperSO
        ),
		StreamHeist:gen_so(
            400010,
            "special_sniper_so_3",
            Vector3(-1000, -1375, 475),
            Rotation(0, 0, 0),
            optsSniperSO
        ),

		--2 dozers spawn after killing Bo The Manager +2 extra dozers on Eclipse (even if you haven't killed Bo)
		StreamHeist:gen_dummy(
            400011,
            "ai_spawn_enemy_Bo's_bulldozer_2",
            Vector3(-2682, -3588, -125),
            Rotation(90, -0, -0),
            optsBulldozer_BO
        ),
		StreamHeist:gen_dummy(
            400012,
            "extra_tank_1",
            Vector3(-3176, 3750, -125),
            Rotation(90, -0, -0),
            optsBulldozer_193
        ),
		StreamHeist:gen_dummy(
            400013,
            "extra_tank_2",
            Vector3(-2657, -3569, -125),
            Rotation(90, -0, -0),
            optsBulldozer_193
        ),
		StreamHeist:gen_so(
            400014,
            "dozer_cloaker_hunt_so",
            Vector3(-2657, -3569, -90),
            Rotation(90, -0, -0),
            optsDozerHunt
        ),

        --2 E/PJ dozers when leaving the vault
        StreamHeist:gen_dummy(
            400015,
            "projob_tank_exit_vault_1",
            Vector3(3389, 1775, -15),
            Rotation(180, 0, -0),
            optsBulldozerVault
        ),
        StreamHeist:gen_dummy(
            400016,
            "projob_tank_exit_vault_2",
            Vector3(3422, 738, -15),
            Rotation(0, 0, -0),
            optsBulldozerVault
        ),

        --145+ throwback, 3 tasers + 1 heavy swat in staircase escape
        StreamHeist:gen_dummy(
            400017,
            "taser_escape_1",
            Vector3(6050, -2351, -135.691),
            Rotation(0, 0, -0),
            optsTaserEscape
        ),
        StreamHeist:gen_dummy(
            400018,
            "taser_escape_2",
            Vector3(5887, -2347, -135.691),
            Rotation(0, 0, -0),
            optsTaser
        ),
        StreamHeist:gen_dummy(
            400019,
            "taser_escape_3",
            Vector3(5553, -2367, -135.691),
            Rotation(-90, 0, -0),
            optsTaser
        ),
        StreamHeist:gen_dummy(
            400020,
            "swat_escape_1",
            Vector3(5553, -2502, -135.691),
            Rotation(-90, 0, -0),
            optsSWAT_HeavySG2
        ),

        -- escape dozer ambush
		StreamHeist:gen_dummy(
            400021,
            "dozer_ambush_elevator_1",
            Vector3(5879, -3035, 464.309),
            Rotation(90, -0, -0),
            optsDozerElevatorAmbush1
        ),
		StreamHeist:gen_dummy(
            400022,
            "dozer_ambush_elevator_2",
            Vector3(5879, -3252, 464.309),
            Rotation(90, -0, -0),
            optsDozerElevatorAmbush2
        ),

        -- shield blockade when entering vault area
		StreamHeist:gen_dummy(
            400023,
            "shield_defend_1",
            Vector3(3963, 1836, -42.895),
            Rotation(90, -0, -0),
            optsVaultShield1
        ),
        StreamHeist:gen_dummy(
            400024,
            "shield_defend_2",
            Vector3(3959, 721, -43.895),
            Rotation(90, -0, -0),
            optsVaultShield2
        ),
		StreamHeist:gen_so(
            400025,
            "shield_defend_so_1",
            Vector3(3307, 1800, -15),
            Rotation(90, -0, -0),
            optsShieldSO
        ),
		StreamHeist:gen_so(
            400026,
            "shield_defend_so_2",
            Vector3(3307, 700, -15),
            Rotation(90, -0, -0),
            optsShieldSO
        ),

        -- escape spooc ambush
        StreamHeist:gen_dummy(
            400027,
            "eclipse_spooc_ambush_1",
            Vector3(677, 57, 475.020),
            Rotation(90, -0, -0),
            optsSpoocAmbush1
        ),
        StreamHeist:gen_dummy(
            400028,
            "eclipse_spooc_ambush_2",
            Vector3(677, 12, 475.020),
            Rotation(90, -0, -0),
            optsSpoocAmbush2
        ),
        StreamHeist:gen_so(
            400029,
            "eclipse_spooc_so_1",
            Vector3(-1876, 1230, 5),
            Rotation(-90, 0, 0),
            optsHideSpoocSO
        ),
        StreamHeist:gen_so(
            400030,
            "eclipse_spooc_so_2",
            Vector3(18, 521, 5),
            Rotation(0, 0, 0),
            optsHideSpoocSO
        ),
        StreamHeist:gen_dummy(
            400031,
            "shield_escape_1",
            Vector3(2053, -2405, 464),
            Rotation(0, -0, -0),
            optsEscapeShield1
        ),
		StreamHeist:gen_so(
            400032,
            "shield_escape_so_1",
            Vector3(2053, -2266, 464),
            Rotation(0, -0, -0),
            optsShieldSO
        ),
        StreamHeist:gen_dummy(
            400033,
            "taser_escape_4",
            Vector3(2059, -2871, 464),
            Rotation(0, 0, -0),
            optsTaser
        ),
        StreamHeist:gen_dummy(
            400034,
            "shield_escape_2",
            Vector3(3036, -3097, 464),
            Rotation(90, -0, -0),
            optsEscapeShield2
        ),
		StreamHeist:gen_so(
            400035,
            "shield_escape_so_2",
            Vector3(3036, -3097, 464),
            Rotation(90, -0, -0),
            optsShieldSO
        ),
        StreamHeist:gen_dummy(
            400036,
            "shield_escape_3",
            Vector3(3035, -3266, 464),
            Rotation(90, -0, -0),
            optsEscapeShield3
        ),
		StreamHeist:gen_so(
            400037,
            "shield_escape_so_3",
            Vector3(3035, -3266, 464),
            Rotation(90, -0, -0),
            optsShieldSO
        ),
        StreamHeist:gen_dummy(
            400038,
            "shield_escape_4",
            Vector3(3054, -3584, 464),
            Rotation(90, -0, -0),
            optsEscapeShield4
        ),
		StreamHeist:gen_so(
            400039,
            "shield_escape_so_4",
            Vector3(3054, -3584, 464),
            Rotation(90, -0, -0),
            optsShieldSO
        ),
        StreamHeist:gen_dummy(
            400040,
            "shield_escape_5",
            Vector3(3048, -3786, 464),
            Rotation(55, -0, -0),
            optsEscapeShield5
        ),
		StreamHeist:gen_so(
            400041,
            "shield_escape_so_5",
            Vector3(3048, -3786, 464),
            Rotation(55, -0, -0),
            optsShieldSO
        ),
        StreamHeist:gen_dummy(
            400042,
            "swat_escape_1",
            Vector3(4026, -2953, 464),
            Rotation(90, 0, -0),
            optsSWAT_LightSG
        ),
        StreamHeist:gen_dummy(
            400043,
            "swat_escape_2",
            Vector3(4043, -3100, 464),
            Rotation(90, 0, -0),
            optsSWAT_HeavyRifle
        ),
        StreamHeist:gen_dummy(
            400044,
            "swat_escape_3",
            Vector3(3628, -4230, 464),
            Rotation(90, 0, -0),
            optsSWAT_HeavySG
        ),
        StreamHeist:gen_dummy(
            400045,
            "swat_escape_4",
            Vector3(3531, -4226, 464),
            Rotation(90, 0, -0),
            optsSWAT_LightRifle
        ),
		StreamHeist:gen_so(
            400046,
            "swat_escape_so_1",
            Vector3(3147, -3105, 464),
            Rotation(90, -0, -0),
            optsDefendSO
        ),
		StreamHeist:gen_so(
            400047,
            "swat_escape_so_2",
            Vector3(3144, -3243, 464),
            Rotation(90, -0, -0),
            optsDefendSO
        ),
		StreamHeist:gen_so(
            400048,
            "swat_escape_so_3",
            Vector3(3152, -3604, 464),
            Rotation(90, -0, -0),
            optsDefendSO
        ),
		StreamHeist:gen_so(
            400049,
            "swat_escape_so_4",
            Vector3(3156, -3840, 464),
            Rotation(55, -0, -0),
            optsDefendSO
        ),
    }
}