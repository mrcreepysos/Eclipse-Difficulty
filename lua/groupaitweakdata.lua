-- Increase tickrate to 90
Hooks:PostHook(GroupAITweakData, "init", "eclipse_init", function (self)
	self.ai_tick_rate = 1 / 90
end)

Hooks:PostHook(GroupAITweakData, "_init_unit_categories", "eclipse__init_unit_categories", function(self, difficulty_index)
	if difficulty_index == 7 or 8 then
		self.special_unit_spawn_limits = {
			tank = 2,
			taser = 3,
			spooc = 2,
			shield = 4,
			medic = 1
		}
	end

local access_type_walk_only = {
	walk = true
}
local access_type_all = {
	acrobatic = true,
	walk = true
}

-- UNIT CATEGORIES
-- Honestly if only i could be arsed to actually support all factions

	-- FBI Riflemen
		self.unit_categories.rifleman_fbi = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
				},
				russia = {
					Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
				}
			},
			access = access_type_all
		}

		self.unit_categories.shotgunner_fbi = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
				},
				russia = {
					Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
				}
			},
			access = access_type_all
		}

	-- FBI Heavy Riflemen
		self.unit_categories.heavy_rifleman_fbi = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
				},
				russia = {
					Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
				}
			},
			access = access_type_all
		}
	-- FBI Heavy Shotgunners
		self.unit_categories.heavy_shotgunner_fbi = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
				},
				russia = {
					Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
				}
			},
			access = access_type_all
		}

	-- GenSec Long Range Riflemen
		self.unit_categories.rifleman_lr_elite = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
				},
				russia = {
					Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
				},
				federales = {
					Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
				}
			},
			access = access_type_all
		}

	-- GenSec Shotgunners
		self.unit_categories.shotgunner_elite = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
				},
				russia = {
					Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
				},
				federales = {
					Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
				}
			},
			access = access_type_all
		}

	-- GenSec Short Range Riflemen
		self.unit_categories.rifleman_sr_elite = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				russia = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				federales = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				}
			},
			access = access_type_all
		}

	-- Blue Rifleman
		self.unit_categories.swat_rifle = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
				},
				russia = {
					Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
				},
				federales = {
					Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
				}
			},
			access = access_type_all
		}

	-- Blue Rifleman
		self.unit_categories.swat_shotgun = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
				},
				russia = {
					Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
				},
				federales = {
					Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
				}
			},
			access = access_type_all
		}

	-- Balaclava HRU
		self.unit_categories.balaclava = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				},
				russia = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				}
			},
			access = access_type_all
		}

	-- Whiteshirt HRU
		self.unit_categories.whiteshirt = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				},
				russia = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				}
			},
			access = access_type_all
		}

	-- FBI Shield
		self.unit_categories.shield_fbi = {
			special_type = "shield",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
				},
				russia = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
				},
				federales = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
				}
			},
			access = access_type_walk_only
		}

	-- Taser
		self.unit_categories.taser_unit = {
			special_type = "taser",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
				},
				russia = {
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
				},
				federales = {
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
				}
			},
			access = access_type_all
		}

	-- Medic
		self.unit_categories.medic_unit = {
			special_type = "medic",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
				},
				russia = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
				},
				federales = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
				}
			},
			access = access_type_all
		}

	-- Green / Saiga Dozers
		self.unit_categories.tank_fbi = {
			special_type = "tank",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
					Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
				},
				russia = {
					Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
					Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
					Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
					Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
				},
				federales = {
					Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
					Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
				}
			},
			access = access_type_all
		}

	-- Lmg Dozers
		self.unit_categories.tank_elite = {
			special_type = "tank",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
				},
				russia = {
					Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
				},
				federales = {
					Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
				}
			},
			access = access_type_all
		}

	-- Cloakers
		self.unit_categories.cloaker = {
			unit_types = {
				america = {
					Idstring( "units/payday2/characters/ene_spook_1/ene_spook_1" )
				},
				russia = {
					Idstring( "units/payday2/characters/ene_spook_1/ene_spook_1" )
				},
				zombie = {
					Idstring( "units/payday2/characters/ene_spook_1/ene_spook_1" )
				},
				murkywater = {
					Idstring( "units/payday2/characters/ene_spook_1/ene_spook_1" )
				},
				federales = {
					Idstring( "units/payday2/characters/ene_spook_1/ene_spook_1" )
				}
			},
			access = access_type_all
		}

end)

Hooks:PostHook(GroupAITweakData, "_init_enemy_spawn_groups", "eclipse__init_enemy_spawn_groups", function(self, difficulty_index)
	-- Tactic Presets
	-- GenSec presets are more advanced than FBI ones
	-- Only GenSec enemies can flank as well, this should make flanking less predictable and far scarier
	self._tactics = {
		Phalanx_minion = {
			"ranged_fire"
		},
		Phalanx_vip = {
			"ranged_fire"
		},
		fbi_rifle = {
			"ranged_fire",
			"shield_cover",
			"flash_grenade"
		},
		fbi_shotgun = {
			"charge",
			"shield_cover",
			"flash_grenade"
		},
		fbi_shield = {
			"charge",
			"shield"
		},
		fbi_special = {
			"charge",
			"shield_cover",
			"flash_grenade"
		},
		fbi_tank = {
			"charge",
			"flash_grenade"
		},
		elite_long_range = {
			"ranged_fire",
			"smoke_grenade",
			"rescue_hostages",
			"shield_cover"
		},
		elite_short_range = {
			"charge",
			"flash_grenade",
			"smoke_grenade",
			"rescue_hostages",
			"shield_cover",
			"deathguard",
			"murder"
		},
		elite_flank = {
			"flank",
			"flash_grenade",
			"smoke_grenade",
			"rescue_hostages",
			"deathguard",
			"murder"
		},
		elite_shield = {
			"charge",
			"shield",
			"flash_grenade"
		},
		elite_special = {
			"ranged_fire",
			"shield_cover",
			"flash_grenade",
			"rescue_hostages",
			"deathguard",
			"murder"
		},
		elite_special_flank = {
			"flank",
			"shield_cover",
			"flash_grenade",
			"rescue_hostages",
			"deathguard",
			"murder"
		},
		elite_tank_ranged = {
			"ranged_fire",
			"flash_grenade",
			"smoke_grenade",
			"deathguard",
			"shield",
			"murder"
		},
		spooc = {
			"charge",
			"flank",
			"flash_grenade",
			"smoke_grenade",
			"deathguard"
		},
		reenforce_aggressive = {
			"charge",
			"flash_grenade",
			"smoke_grenade",
		},
		reenforce_passive = {
			"ranged_fire",
			"flash_grenade",
			"smoke_grenade",
		},
		recon_attack = {
			"ranged_fire",
			"smoke_grenade"
		},
		recon_rescue = {
			"flank",
			"flash_grenade",
			"rescue_hostages"
		}
	}

	-- соси хуй кк?
	self.enemy_spawn_groups = {}

	-- Custom spawngroups
	if difficulty_index == 7 or 8 then
		self.enemy_spawn_groups.common_charge = {
			amount = {
				4,
				5
			},
			spawn = {
				{
					amount_min = 1,
					freq = 0.75,
					amount_max = 2,
					rank = 1,
					unit = "rifleman_fbi",
					tactics = self._tactics.fbi_rifle
				},
				{
					amount_min = 1,
					freq = 0.75,
					amount_max = 2,
					rank = 1,
					unit = "shotgunner_fbi",
					tactics = self._tactics.fbi_shotgun
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 1,
					rank = 2,
					unit = "heavy_rifleman_fbi",
					tactics = self._tactics.fbi_rifle
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 1,
					rank = 2,
					unit = "heavy_shotgunner_fbi",
					tactics = self._tactics.fbi_shotgun
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 3,
					unit = "taser_unit",
					tactics = self._tactics.fbi_special
				}
			}
		}
		self.enemy_spawn_groups.common_shield = {
			amount = {
				4,
				4
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "shield_fbi",
					tactics = self._tactics.fbi_shield
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 2,
					rank = 1,
					unit = "shotgunner_fbi",
					tactics = self._tactics.fbi_shotgun
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 2,
					rank = 1,
					unit = "rifleman_fbi",
					tactics = self._tactics.fbi_rifle
				},
				{
					amount_min = 0,
					freq = 0.65,
					amount_max = 1,
					rank = 1,
					unit = "heavy_rifleman_fbi",
					tactics = self._tactics.fbi_rifle
				},
				{
					amount_min = 0,
					freq = 0.65,
					amount_max = 1,
					rank = 1,
					unit = "heavy_shotgunner_fbi",
					tactics = self._tactics.fbi_shotgun
				}
			}
		}
		self.enemy_spawn_groups.common_tank = {
			amount = {
				3,
				4
			},
			spawn = {
				{
					amount_min = 1,
					freq = 2,
					amount_max = 1,
					rank = 3,
					unit = "tank_fbi",
					tactics = self._tactics.fbi_tank
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "shield_fbi",
					tactics = self._tactics.fbi_rifle
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 2,
					unit = "taser_unit",
					tactics = self._tactics.fbi_special
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 2,
					rank = 1,
					unit = "heavy_shotgunner_fbi",
					tactics = self._tactics.fbi_shotgun
				}
			}
		}
		self.enemy_spawn_groups.uncommon_charge = {
			amount = {
				4,
				5
			},
			spawn = {
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 2,
					rank = 1,
					unit = "rifleman_fbi",
					tactics = self._tactics.fbi_rifle
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 2,
					rank = 1,
					unit = "shotgunner_fbi",
					tactics = self._tactics.fbi_shotgun
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 1,
					rank = 2,
					unit = "rifleman_sr_elite",
					tactics = self._tactics.elite_short_range
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 1,
					rank = 2,
					unit = "shotgunner_elite",
					tactics = self._tactics.elite_short_range
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 3,
					unit = "taser_unit",
					tactics = self._tactics.fbi_special
				}
			}
		}
		self.enemy_spawn_groups.elite_shieldg = {
			amount = {
				4,
				4
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "shield_fbi",
					tactics = self._tactics.elite_shield
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 2,
					rank = 2,
					unit = "rifleman_sr_elite",
					tactics = self._tactics.elite_short_range
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 2,
					rank = 2,
					unit = "shotgunner_elite",
					tactics = self._tactics.elite_short_range
				}
			}
		}
		self.enemy_spawn_groups.elite_flankg = {
			amount = {
				3,
				4
			},
			spawn = {
				{
					amount_min = 0,
					freq = 0.2,
					amount_max = 1,
					rank = 3,
					unit = "taser_unit",
					tactics = self._tactics.elite_special_flank
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "rifleman_sr_elite",
					tactics = self._tactics.elite_flank
				},
				{
					amount_min = 2,
					freq = 1,
					amount_max = 2,
					rank = 2,
					unit = "shotgunner_elite",
					tactics = self._tactics.elite_flank
				}
			}
		}
		self.enemy_spawn_groups.elite_long_range = {
			amount = {
				3,
				3
			},
			spawn = {
				{
					amount_min = 3,
					freq = 1,
					amount_max = 3,
					rank = 3,
					unit = "rifleman_lr_elite",
					tactics = self._tactics.elite_long_range
				}
			}
		}
		self.enemy_spawn_groups.elite_heavy_charge = {
			amount = {
				4,
				4
			},
			spawn = {
				{
					amount_min = 0,
					freq = 1,
					amount_max = 2,
					rank = 2,
					unit = "heavy_shotgunner_fbi",
					tactics = self._tactics.elite_short_range
				},
				{
					amount_min = 0,
					freq = 1,
					amount_max = 2,
					rank = 2,
					unit = "heavy_rifleman_fbi",
					tactics = self._tactics.elite_short_range
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "taser_unit",
					tactics = self._tactics.elite_special
				}
			}
		}
		self.enemy_spawn_groups.elite_tank = {
			amount = {
				3,
				4
			},
			spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "tank_elite",
					tactics = self._tactics.elite_tank_ranged
				},
				{
					amount_min = 1,
					freq = 0.66,
					amount_max = 2,
					rank = 2,
					unit = "taser_unit",
					tactics = self._tactics.elite_special
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 1,
					unit = "medic_unit",
					tactics = self._tactics.elite_special
				}
			}
		}
		self.enemy_spawn_groups.cloaker_group = {
			amount = {
				2,
				2
			},
			spawn = {
				{
					freq = 3,
					amount_min = 2,
					amount_max = 2,
					rank = 1,
					unit = "cloaker",
					tactics = self._tactics.spooc
				}
			}
		}
		self.enemy_spawn_groups.reenforce_tank = {
			amount = {
				3,
				5
			},
			spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "tank_fbi",
					tactics = self._tactics.reenforce_aggressive
				},
				{
					amount_min = 1,
					freq = 0.5,
					amount_max = 2,
					rank = 2,
					unit = "taser_unit",
					tactics = self._tactics.reenforce_aggressive
				},
				{
					amount_min = 1,
					freq = 0.66,
					amount_max = 2,
					rank = 1,
					unit = "shotgunner_elite",
					tactics = self._tactics.reenforce_aggressive
				}
			}
		}
		self.enemy_spawn_groups.reenforce_sneaky = {
			amount = {
				4,
				4
			},
				spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "cloaker",
					tactics = self._tactics.reenforce_aggressive
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 1,
					unit = "rifleman_sr_elite",
					tactics = self._tactics.reenforce_passive
				}
			}
		}
		self.enemy_spawn_groups.reenforce_common = {
			amount = {
				3,
				4
			},
				spawn = {
				{
					amount_min = 2,
					freq = 1,
					amount_max = 2,
					rank = 2,
					unit = "rifleman_fbi",
					tactics = self._tactics.reenforce_passive
				},
				{
					amount_min = 1,
					freq = 2,
					amount_max = 1,
					rank = 2,
					unit = "rifleman_lr_elite",
					tactics = self._tactics.reenforce_passive
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 1,
					unit = "whiteshirt",
					tactics = self._tactics.reenforce_passive
				}
			}
		}
		self.enemy_spawn_groups.recon_hrt = {
			amount = {
				4,
				4
			},
				spawn = {
				{
					amount_min = 2,
					freq = 1,
					amount_max = 2,
					rank = 1,
					unit = "balaclava",
					tactics = self._tactics.recon_rescue
				},
				{
					amount_min = 2,
					freq = 1,
					amount_max = 2,
					rank = 1,
					unit = "whiteshirt",
					tactics = self._tactics.recon_rescue
				}
			}
		}
		self.enemy_spawn_groups.recon_aggressive = {
			amount = {
				3,
				3
			},
				spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 1,
					unit = "swat_shotgun",
					tactics = self._tactics.recon_attack
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 1,
					unit = "swat_rifle",
					tactics = self._tactics.recon_attack
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "taser_unit",
					tactics = self._tactics.recon_attack
				}
			}
		}
	end
	self.enemy_spawn_groups.single_spooc = {
		amount = {
			1,
			1
		},
		spawn = {
			{
				freq = 1,
				amount_min = 1,
				rank = 1,
				unit = "cloaker",
				tactics = self._tactics.spooc
			}
		}
	}
	self.enemy_spawn_groups.FBI_spoocs = self.enemy_spawn_groups.single_spooc
end)

Hooks:PostHook(GroupAITweakData, "_init_task_data", "eclipse__init_task_data", function(self, difficulty_index, difficulty)
	local is_console = SystemInfo:platform() ~= Idstring("WIN32")
	if difficulty_index == 7 or 8 then
		self.besiege.recurring_group_SO = {
			recurring_cloaker_spawn = {
				retire_delay = 30,
				interval = {
					20,
					40
				}
			},
			recurring_spawn_1 = {interval = {
				30,
				60
			}}
		}
	end

	-- Assault Data
		-- PHASES --

		-- Sustain
		self.besiege.assault.sustain_duration_min = {70, 140, 210}
		self.besiege.assault.sustain_duration_max = {70, 140, 210}
		self.besiege.assault.sustain_duration_balance_mul = {1, 1, 1, 1}

		-- Control
		self.besiege.assault.delay = {20, 15, 7.5}

		-- SPAWNS --

		-- Spawncap
		self.besiege.assault.force = {10, 14, 18}
		self.besiege.assault.force_balance_mul = {1.2, 1.4, 1.6, 1.8}

		-- Spawnrate
		if difficulty_index == 7 then
			self.besiege.assault.spawnrate_balance_mul = {1.3, 1, 0.85, 0.7}
		elseif difficulty_index == 8 then
			self.besiege.assault.spawnrate_balance_mul = {1.2, 0.9, 0.7, 0.5}
		end

		-- RECON / REENFORCE --

		-- Make reenforce spawngroups spawn faster
		self.besiege.reenforce.interval = {45, 35, 25}

    	-- Make recon spawngroups spawn faster and increase their spawncap
    	self.besiege.recon.interval_variation = 0
    	self.besiege.recon.interval = {10, 8, 5}
    	self.besiege.recon.force = {2, 6, 10}

		-- GRENADES --
		--shared
		self.flash_grenade.light_color = Vector3(255, 255, 255)
		self.flash_grenade.light_range = 500
		self.smoke_grenade_timeout = {20, 30}
		self.cs_grenade_timeout = {55, 75}

		if difficulty_index == 7 then
			self.flash_grenade_timeout = {12, 18}
			self.flash_grenade.timer = 1.35
			self.smoke_grenade_lifetime = 12
			self.cs_grenade_lifetime = 15

		elseif difficulty_index == 8 then
			self.flash_grenade_timeout = {10, 15}
			self.flash_grenade.timer = 1
			self.smoke_grenade_lifetime = 15
			self.cs_grenade_lifetime = 20
	end

	if difficulty_index == 7 or 8 then
		self.besiege.assault.groups = {
			common_charge = {1, 1, 1},
			common_shield = {0.66, 0.66, 0.66},
			common_tank = {0, 0.02, 0.16},
			uncommon_charge = {0.75, 0.75, 0.75},
			elite_flankg = {0.45, 0.45, 0.45},
			elite_shieldg = {0.45, 0.45, 0.45},
			elite_long_range = {0.4, 0.4, 0.4},
			elite_heavy_charge = {0.35, 0.35, 0.35},
			elite_tank = {0, 0, 0.1},
			cloaker_group = {0, 0.08, 0.12},
			single_spooc = {0, 0, 0},
			Phalanx = {0, 0, 0},
			marshal_squad = {0, 0, 0},
			custom_assault = {0, 0, 0}
		}
		self.besiege.recon.groups = {
			recon_hrt = {1, 1, 1},
			recon_aggressive = {0.66, 0.66, 0.66},
			single_spooc = {0, 0, 0},
			Phalanx = {0, 0, 0},
			marshal_squad = {0, 0, 0},
			custom_recon = {0, 0, 0}
		}
		self.besiege.reenforce.groups = {
			reenforce_common = {0.3, 0.3, 0.3},
			reenforce_sneaky = {0.2, 0.2, 0.2},
			reenforce_tank = {0.15, 0.15, 0.15}
		}
	end

	-- nuke captain
	self.phalanx.spawn_chance = {
		decrease = 0,
		start = 0,
		respawn_delay = 300000,
		increase = 0,
		max = 1
	}
	self.street = deep_clone(self.besiege)
	self.safehouse = deep_clone(self.besiege)
end)
