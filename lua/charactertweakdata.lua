Hooks:PostHook(CharacterTweakData, "init", "eclipse_init", function(self)
	-- SWAT units
	self.fbi_swat.move_speed = self.presets.move_speed.fast
	self.fbi_swat.suppression = {panic_chance_mul = 0.3, duration = {3, 4}, react_point = {0, 2}, brown_point = {5, 6}}
	self.fbi_heavy_swat.suppression = {panic_chance_mul = 0.3, duration = {3, 4}, react_point = {0, 2}, brown_point = {5, 6}}
	self.fbi_heavy_swat.damage.hurt_severity = self.presets.hurt_severities.no_heavy_hurt
	self.city_swat.suppression = {panic_chance_mul = 0.15, duration = {1.5, 2}, react_point = {2, 5},brown_point = {5, 6}}
	self.city_swat.weapon = self.presets.weapon.expert

	-- Specials
	self.sniper.suppression = nil
	self.sniper.misses_first_player_shot = true

	self.spooc.spooc_sound_events = {detect_stop = "cloaker_presence_stop", detect = "cloaker_presence_loop"} -- remove cloaker charge noise
	self.spooc.use_animation_on_fire_damage = true
	self.spooc.damage.hurt_severity = self.presets.hurt_severities.only_light_hurt_and_fire
	self.spooc.spooc_attack_use_smoke_chance = 0

	self.tank.damage.hurt_severity = self.presets.hurt_severities.dozer -- cool damage react thing
	self.tank.no_run_start = false -- honestly idk why they got rid of this since it looks much cooler with it
	self.tank.ecm_vulnerability = 0
	self.tank.damage.explosion_damage_mul = 0.5

	self.taser.damage.hurt_severity = self.presets.hurt_severities.base
	self.medic.damage.hurt_severity = self.presets.hurt_severities.base
	self.medic.use_animation_on_fire_damage = true
	self.medic.suppression = nil
	self.medic.move_speed = self.presets.move_speed.fast

	self.shield.damage.explosion_damage_mul = 0.9

	-- Set custom objective interrupt distance
	self.taser.min_obj_interrupt_dis = 1000
	self.spooc.min_obj_interrupt_dis = 800
	self.shadow_spooc.min_obj_interrupt_dis = 800
	self.tank.min_obj_interrupt_dis = 600
	self.tank_hw.min_obj_interrupt_dis = 600
	self.shield.min_obj_interrupt_dis = 300

	-- Bosses
	self.biker_boss.HEALTH_INIT = 400
	self.biker_boss.player_health_scaling_mul = 1.5
	self.biker_boss.headshot_dmg_mul = 1.65
	self.biker_boss.no_headshot_add_mul = false
	self.biker_boss.DAMAGE_CLAMP_BULLET = 200
	self.biker_boss.DAMAGE_CLAMP_EXPLOSION = 200
	self.biker_boss.damage.explosion_damage_mul = 0.5
	self.biker_boss.damage.hurt_severity = self.presets.hurt_severities.dozer
	self.biker_boss.move_speed = self.presets.move_speed.slow
	self.biker_boss.no_run_start = true
	self.biker_boss.no_run_stop = true
	self.biker_boss.throwable = "concussion"
	self.biker_boss.throwable_cooldown = 10

	self.chavez_boss.HEALTH_INIT = 400
	self.chavez_boss.player_health_scaling_mul = 1.5
	self.chavez_boss.headshot_dmg_mul = 1.65
	self.chavez_boss.no_headshot_add_mul = false
	self.chavez_boss.DAMAGE_CLAMP_BULLET = 200
	self.chavez_boss.DAMAGE_CLAMP_EXPLOSION = 200
	self.chavez_boss.damage.explosion_damage_mul = 0.5
	self.chavez_boss.damage.hurt_severity = self.presets.hurt_severities.dozer
	self.chavez_boss.move_speed = self.presets.move_speed.very_fast
	self.chavez_boss.no_run_start = true
	self.chavez_boss.no_run_stop = true

	self.drug_lord_boss.HEALTH_INIT = 400
	self.drug_lord_boss.player_health_scaling_mul = 1.5
	self.drug_lord_boss.headshot_dmg_mul = 1.65
	self.drug_lord_boss.no_headshot_add_mul = false
	self.drug_lord_boss.DAMAGE_CLAMP_BULLET = 200
	self.drug_lord_boss.DAMAGE_CLAMP_EXPLOSION = 200
	self.drug_lord_boss.damage.explosion_damage_mul = 0.5
	self.drug_lord_boss.damage.hurt_severity = self.presets.hurt_severities.no_heavy_hurt
	self.drug_lord_boss.move_speed = self.presets.move_speed.normal
	self.drug_lord_boss.no_run_start = true
	self.drug_lord_boss.no_run_stop = true
	self.drug_lord_boss.throwable = "launcher_m203"
	self.drug_lord_boss.throwable_target_verified = true
	self.drug_lord_boss.throwable_cooldown = 10

	self.hector_boss.HEALTH_INIT = 400
	self.hector_boss.player_health_scaling_mul = 1.5
	self.hector_boss.headshot_dmg_mul = 1.65
	self.hector_boss.no_headshot_add_mul = false
	self.hector_boss.DAMAGE_CLAMP_BULLET = 200
	self.hector_boss.DAMAGE_CLAMP_EXPLOSION = 200
	self.hector_boss.damage.explosion_damage_mul = 0.5
	self.hector_boss.damage.hurt_severity = self.presets.hurt_severities.no_heavy_hurt
	self.hector_boss.move_speed = self.presets.move_speed.slow
	self.hector_boss.no_run_start = true
	self.hector_boss.no_run_stop = true
	self.hector_boss.throwable = "frag"
	self.hector_boss.throwable_cooldown = 15

	self.mobster_boss.HEALTH_INIT = 400
	self.mobster_boss.player_health_scaling_mul = 1.5
	self.mobster_boss.headshot_dmg_mul = 1.65
	self.mobster_boss.no_headshot_add_mul = false
	self.mobster_boss.DAMAGE_CLAMP_BULLET = 200
	self.mobster_boss.DAMAGE_CLAMP_EXPLOSION = 200
	self.mobster_boss.damage.explosion_damage_mul = 0.5
	self.mobster_boss.damage.hurt_severity = self.presets.hurt_severities.dozer
	self.mobster_boss.move_speed = self.presets.move_speed.fast
	self.mobster_boss.no_run_start = true
	self.mobster_boss.no_run_stop = true

	self.triad_boss.HEALTH_INIT = 400
	self.triad_boss.player_health_scaling_mul = 1.5
	self.triad_boss.headshot_dmg_mul = 1.65
	self.triad_boss.no_headshot_add_mul = false
	self.triad_boss.DAMAGE_CLAMP_BULLET = 200
	self.triad_boss.DAMAGE_CLAMP_EXPLOSION = 200
	self.triad_boss.damage.explosion_damage_mul = 0.5
	self.triad_boss.damage.hurt_severity = self.presets.hurt_severities.dozer
	self.triad_boss.move_speed = self.presets.move_speed.slow
	self.triad_boss.no_run_start = true
	self.triad_boss.no_run_stop = true
	self.triad_boss.bullet_damage_only_from_front = nil
	self.triad_boss.throwable_target_verified = false
	self.triad_boss.throwable_cooldown = 20

	-- escort bs
	self.escort_cfo.move_speed = self.presets.move_speed.escort_normal
	self.escort_chinese_prisoner.move_speed = self.presets.move_speed.escort_slow
	self.escort_sand.move_speed = self.presets.move_speed.escort_slow
	self.spa_vip.move_speed = self.presets.move_speed.escort_normal
	self.escort_undercover.move_speed = self.presets.move_speed.escort_slow
end)

-- Thanks RedFlame for helping with this
local _presets_orig = CharacterTweakData._presets
function CharacterTweakData:_presets(tweak_data, ...)
	local presets = _presets_orig(self, tweak_data, ...)

	-- pre-henchmen team ai hurt severity & low gp
	presets.gang_member_damage.MIN_DAMAGE_INTERVAL = 0.1
	presets.gang_member_damage.hurt_severity.bullet = {
		health_reference = "current",
		zones = {
			{
				health_limit = 0.4,
				none = 0.3,
				light = 0.6,
				moderate = 0.1
			},
			{
				health_limit = 0.7,
				none = 0.1,
				light = 0.7,
				moderate = 0.2
			},
			{
				none = 0.1,
				light = 0.5,
				moderate = 0.3,
				heavy = 0.1
			}
		}
	}

	presets.weapon.sniper.is_rifle.use_laser = false

	-- escort bs
	presets.move_speed.escort_normal = deep_clone(presets.move_speed.normal)
	presets.move_speed.escort_slow = deep_clone(presets.move_speed.slow)

	-- Tweak dodge presets
	presets.dodge.heavy.occasions.preemptive.chance = 0.25
	presets.dodge.athletic.occasions.preemptive.chance = 0.5

	presets.dodge.ninja.speed = 2
	for _, occasion in pairs(presets.dodge.ninja.occasions) do
		occasion.chance = 1
		if occasion.variations.side_step then
			occasion.variations.side_step.chance = 1
		end
	end

	-- dozer damage reaction
	presets.hurt_severities.dozer = {
		tase = false,
		bullet = {
			health_reference = "current",
			zones = {{light = 1}}
		},
		explosion = {
			health_reference = "current",
			zones = {{moderate = 1}}
		},
		melee = {
			health_reference = "current",
			zones = {{light = 1}}
		},
		fire = {
			health_reference = "current",
			zones = {{none = 1}
			}
		},
		poison = {
			health_reference = "current",
			zones = {{none = 1}}
		}
	}

	-- heavies don't stumble as much
	presets.hurt_severities.no_heavy_hurt = {
		tase = true,
		bullet = {
			health_reference = "current",
			zones = {
				{
					health_limit = 0.4,
					none = 0.5,
					light = 0.5
				},
				{
					health_limit = 0.7,
					light = 0.7,
					moderate = 0.3
				},
				{
					light = 0.5,
					moderate = 0.5
				}
			}
		},
		fire = {
			health_reference = "current",
			zones = {
				{
					fire = 1
				}
			}
		},
		poison = {
			health_reference = "current",
			zones = {
				{
					poison = 1
				}
			}
		}
	}
	presets.hurt_severities.no_heavy_hurt.melee = deep_clone(presets.hurt_severities.no_heavy_hurt.bullet)
	presets.hurt_severities.no_heavy_hurt.explosion = deep_clone(presets.hurt_severities.no_heavy_hurt.bullet)


	-- rifle preset
	presets.weapon.deathwish.is_rifle.aim_delay = {0.2, 0.2}
	presets.weapon.deathwish.is_rifle.focus_delay = 1
	presets.weapon.deathwish.is_rifle.melee_dmg = 10
	presets.weapon.deathwish.is_rifle.FALLOFF = {
		{
			dmg_mul = 7.5,
			r = 100,
			acc = {
				0.9,
				0.9
			},
			recoil = {
				0.25,
				0.3
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				8,
				16
			}
		},
		{
			dmg_mul = 7.5,
			r = 500,
			acc = {
				0.8,
				0.9
			},
			recoil = {
				0.25,
				0.3
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				6,
				12
			}
		},
		{
			dmg_mul = 7.5,
			r = 1000,
			acc = {
				0.65,
				0.8
			},
			recoil = {
				0.35,
				0.55
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				4,
				8
			}
		},
		{
			dmg_mul = 7.5,
			r = 1500,
			acc = {
				0.65,
				0.75
			},
			recoil = {
				0.4,
				0.6
			},
			mode = {
				0,
				0,
				2,
				3
			},
			autofire_rounds = {
				3,
				6
			}
		},
		{
			dmg_mul = 7.5,
			r = 2000,
			acc = {
				0.45,
				0.6
			},
			recoil = {
				0.6,
				0.8
			},
			mode = {
				0,
				0,
				1,
				0
			}
		},
		{
			dmg_mul = 7.5,
			r = 3000,
			acc = {
				0.25,
				0.4
			},
			recoil = {
				0.7,
				1.1
			},
			mode = {
				1,
				3,
				2,
				0
			}
		},
	}
	-- shotgun preset
	presets.weapon.deathwish.is_shotgun_pump.aim_delay = {0.2, 0.2}
	presets.weapon.deathwish.is_shotgun_pump.focus_delay = 1
	presets.weapon.deathwish.is_shotgun_pump.melee_dmg = 10
	presets.weapon.deathwish.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 3,
			r = 100,
			acc = {
				0.95,
				0.95
			},
			recoil = {
				0.75,
				0.75
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 3,
			r = 500,
			acc = {
				0.7,
				0.95
			},
			recoil = {
				0.75,
				0.75
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 2,
			r = 1000,
			acc = {
				0.5,
				0.8
			},
			recoil = {
				0.75,
				0.75
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.45,
				0.65
			},
			recoil = {
				1.25,
				1.5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 0.5,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1.5,
				1.75
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}

	-- revolver preset
	-- 140 dmg
	presets.weapon.deathwish.is_revolver.aim_delay = {0.2, 0.2}
	presets.weapon.deathwish.is_revolver.focus_delay = 1
	presets.weapon.deathwish.is_revolver.melee_dmg = 10
	presets.weapon.deathwish.is_revolver.FALLOFF = {
		{
			dmg_mul = 16,
			r = 100,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.6,
				0.6
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 16,
			r = 500,
			acc = {
				0.7,
				0.85
			},
			recoil = {
				0.6,
				0.6
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 16,
			r = 1000,
			acc = {
				0.65,
				0.8
			},
			recoil = {
				0.8,
				1.1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 16,
			r = 2000,
			acc = {
				0.5,
				0.65
			},
			recoil = {
				1,
				1.3
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 16,
			r = 3000,
			acc = {
				0.3,
				0.4
			},
			recoil = {
				1.3,
				1.5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}

	-- pistol preset
	-- 35 damage
	presets.weapon.deathwish.is_pistol.aim_delay = {0.2, 0.2}
	presets.weapon.deathwish.is_pistol.focus_delay = 1
	presets.weapon.deathwish.is_pistol.melee_dmg = 10
	presets.weapon.deathwish.is_pistol.FALLOFF = {
			{
				dmg_mul = 3.5,
				r = 100,
				acc = {
					0.9,
					0.95
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 3.5,
				r = 500,
				acc = {
					0.7,
					0.85
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 3.5,
				r = 1000,
				acc = {
					0.6,
					0.75
				},
				recoil = {
					0.3,
					0.4
				},
				mode = {
					0,
					0,
					2,
					1
				}
			},
			{
				dmg_mul = 3.5,
				r = 2000,
				acc = {
					0.3,
					0.5
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					3,
					1,
					0,
					0
				}
			},
			{
				dmg_mul = 3.5,
				r = 3000,
				acc = {
					0.1,
					0.3
				},
				recoil = {
					0.7,
					0.9
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 3.5,
				r = 4000,
				acc = {
					0.0,
					0.2
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}

	-- smg preset
	-- 40 damage
	presets.weapon.deathwish.is_smg.aim_delay = {0.2, 0.2}
	presets.weapon.deathwish.is_smg.focus_delay = 1
	presets.weapon.deathwish.is_smg.melee_dmg = 10
	presets.weapon.deathwish.is_smg.FALLOFF = {
			{
				dmg_mul = 4,
				r = 100,
				acc = {
					0.8,
					0.8
				},
				recoil = {
					0.1,
					0.25
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 4,
				r = 500,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.1,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					6
				}
			},
			{
				dmg_mul = 4,
				r = 1000,
				acc = {
					0.5,
					0.6
					},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					4
				}
			},
			{
				dmg_mul = 4,
				r = 2000,
				acc = {
					0.4,
					0.5
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					0,
					1,
					0
				}
			},
			{
				dmg_mul = 4,
				r = 3000,
				acc = {
					0.25,
					0.35
				},
				recoil = {
					0.5,
					1.5
					},
				mode = {
					1,
					3,
					2,
					0
				}
			},
			{
				dmg_mul = 4,
				r = 4500,
				acc = {
					0.15,
					0.3
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					2,
					0,
					0
				}
			}
		}

	return presets

end

function CharacterTweakData:_set_overkill_290()
	self:_multiply_all_hp(3, 1.25)

	-- honestly it's easier to just do this than account for all the difficulty health and hs damage muls
	self.swat.HEALTH_INIT = 30
	self.swat.headshot_dmg_mul = 1.8
	self.fbi_swat.HEALTH_INIT = 34
	self.fbi_swat.headshot_dmg_mul = 2
	self.city_swat.HEALTH_INIT = 40
	self.city_swat.headshot_dmg_mul = 1.8
	self.fbi_heavy_swat.HEALTH_INIT = 56
	self.fbi_heavy_swat.headshot_dmg_mul = 1.8

	self.shield.HEALTH_INIT = 42
	self.shield.headshot_dmg_mul = 1.8
	self.sniper.HEALTH_INIT = 16
	self.taser.HEALTH_INIT = 84
	self.taser.headshot_dmg_mul = 1.4
	self.spooc.HEALTH_INIT = 102
	self.spooc.headshot_dmg_mul = 3.75
	self.medic.HEALTH_INIT = 60
	self.medic.headshot_dmg_mul = 2.2
	self.tank.HEALTH_INIT = 2160
	self.tank.headshot_dmg_mul = 35

	-- Team AI nerf
	self.presets.gang_member_damage.HEALTH_INIT = 400
	self.presets.gang_member_damage.REGENERATE_TIME = 3
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 4

	-- FBI Rifle preset
	-- 45 damage M4
	self.fbi_swat.weapon.is_rifle = {
		aim_delay = {
			0.25,
			0.25
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 40,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 10,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 1250,
			far = 2500,
			close = 750
		},
		autofire_rounds = {
			3,
			6
		},
		FALLOFF = {
			{
				dmg_mul = 4.5,
				r = 100,
				acc = {
					0.9,
					0.9
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 4.5,
				r = 500,
				acc = {
					0.8,
					0.9
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 4.5,
				r = 1000,
				acc = {
					0.65,
					0.8
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 4.5,
				r = 1500,
				acc = {
					0.65,
					0.75
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					0,
					2,
					3
				},
				autofire_rounds = {
					3,
					6
				}
			},
			{
				dmg_mul = 4.5,
				r = 2000,
				acc = {
					0.4,
					0.5
				},
				recoil = {
					0.6,
					0.8
				},
				mode = {
					0,
					0,
					1,
					0
				}
			},
			{
				dmg_mul = 4.5,
				r = 3000,
				acc = {
					0.2,
					0.35
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					1,
					3,
					2,
					0
				}
			},
		}
	}

	-- FBI / Medic Shotgun preset
	-- 175 damage point blank, falls off down to 42 at max range
	self.fbi_swat.weapon.is_shotgun_pump = {
		aim_delay = {
			0.25,
			0.25
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 20,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 10,
		melee_retry_delay = {1, 2},
		range = {
			optimal = 500,
			far = 1000,
			close = 100
		},
		FALLOFF = {
			{
				dmg_mul = 2.5,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.7,
					0.7
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 2.5,
				r = 500,
				acc = {
					0.7,
					0.9
				},
				recoil = {
					0.7,
					0.7
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 1.5,
				r = 1000,
				acc = {
					0.5,
					0.6
				},
				recoil = {
					0.9,
					0.9
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 0.8,
				r = 2000,
				acc = {
					0.3,
					0.4
				},
				recoil = {
					1.2,
					1.2
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 0.4,
				r = 3000,
				acc = {
					0.1,
					0.1
				},
				recoil = {
					1.4,
					1.4
				},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
	}
	self.medic.weapon.is_shotgun_pump = self.fbi_swat.weapon.is_shotgun_pump

	-- Elite Rifle preset
	self.city_swat.weapon.is_rifle = {
		aim_delay = {
			0.15,
			0.15
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 40,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 10,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 2250,
			far = 3000,
			close = 1500
		},
		autofire_rounds = {
			3,
			6
		},
		FALLOFF = {
			{
				dmg_mul = 6.75,
				r = 100,
				acc = {
					0.9,
					0.9
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					6
				}
			},
			{
				dmg_mul = 6.75,
				r = 500,
				acc = {
					0.8,
					0.9
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					6
				}
			},
			{
				dmg_mul = 6.75,
				r = 1000,
				acc = {
					0.7,
					0.8
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					4
				}
			},
			{
				dmg_mul = 6.75,
				r = 1500,
				acc = {
					0.65,
					0.75
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					0,
					3,
					2
				},
				autofire_rounds = {
					3,
					4
				}
			},
			{
				dmg_mul = 6.75,
				r = 2000,
				acc = {
					0.5,
					0.65
				},
				recoil = {
					0.6,
					0.8
				},
				mode = {
					0,
					0,
					1,
					0
				}
			},
			{
				dmg_mul = 6.75,
				r = 3000,
				acc = {
					0.3,
					0.45
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					1,
					3,
					2,
					0
				}
			},
		}
	}

	-- Elite SMG preset
	-- 55 damage
	self.city_swat.weapon.is_smg = {
		aim_delay = {
			0.15,
			0.15
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 40,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 10,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 1250,
			far = 2500,
			close = 750
		},
		autofire_rounds = {
			3,
			6
		},
		FALLOFF = {
			{
				dmg_mul = 5.5,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 5.5,
				r = 500,
				acc = {
					0.8,
					0.9
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					5,
					10
				}
			},
			{
				dmg_mul = 5.5,
				r = 1000,
				acc = {
					0.7,
					0.9
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 5.5,
				r = 1500,
				acc = {
					0.6,
					0.8
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					0,
					1,
					3
				},
				autofire_rounds = {
					3,
					6
				}
			},
			{
				dmg_mul = 5.5,
				r = 2000,
				acc = {
					0.4,
					0.55
				},
				recoil = {
					0.2,
					0.3
				},
				mode = {
					0,
					0,
					1,
					0
				}
			},
			{
				dmg_mul = 5.5,
				r = 3000,
				acc = {
					0.25,
					0.4
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
	}

	-- Elite Shotgun preset
	-- 175 damage point blank, falls off down to 50 at max range
	self.city_swat.weapon.is_shotgun_pump = {
		aim_delay = {
			0.15,
			0.15
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 20,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 10,
		melee_retry_delay = {1, 2},
		range = {
			optimal = 500,
			far = 1000,
			close = 100
		},
		FALLOFF = {
			{
				dmg_mul = 3.5,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.4,
					0.4
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 3.5,
				r = 500,
				acc = {
					0.7,
					0.95
				},
				recoil = {
					0.4,
					0.4
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 2.2,
				r = 1000,
				acc = {
					0.5,
					0.8
				},
				recoil = {
					0.5,
					0.5
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 1.6,
				r = 2000,
				acc = {
					0.4,
					0.45
				},
				recoil = {
					0.7,
					0.7
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.15,
					0.15
				},
				recoil = {
					1,
					1
				},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
	}

	-- Medic preset
	self.medic.weapon.is_rifle = self.fbi_swat.weapon.is_rifle

	-- Cloaker
	self.spooc.weapon.is_pistol = self.presets.weapon.deathwish.is_pistol
	self.spooc.weapon.is_pistol.aim_delay = {0.1, 0.1}

	-- Sniper preset
	-- Fast rate of fire but low damage, always missing first shot but pin-point accuracy after that
	self.sniper.weapon.is_rifle.aim_delay = {0.3, 0.5}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			r = 700,
			acc = {1, 1},
			dmg_mul = 6,
			recoil = {0.6, 0.6},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 4000,
			acc = {0.95, 0.95},
			dmg_mul = 6,
			recoil = {0.75, 0.75},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 10000,
			acc = {0.8, 0.8},
			dmg_mul = 6,
			recoil = {0.825, 0.825},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}

	-- Saigadozer preset
	-- 75 damage at point blank, drops to 30 at max range
	self.tank.weapon.is_shotgun_mag.aim_delay = {
		0.2,
		0.2
	}
	self.tank.weapon.is_shotgun_mag.range = {
		optimal = 650,
		far = 1300,
		close = 250
	}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0.2
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 2.5,
			r = 100,
			acc = {
				0.9,
				0.975
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				10,
				15
			}
		},
		{
			dmg_mul = 2.5,
			r = 500,
			acc = {
				0.85,
				0.95
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				8,
				12
			}
		},
		{
			dmg_mul = 2,
			r = 1000,
			acc = {
				0.75,
				0.85
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				6,
				9
			}
		},
		{
			dmg_mul = 1.5,
			r = 2000,
			acc = {
				0.65,
				0.7
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				0,
				0,
				2,
				3
			},
			autofire_rounds = {
				3,
				5
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				2,
				3,
				1,
				0
			}
		}
	}

	-- Greendozer preset
	-- halved damage, higher rof
	self.tank.weapon.is_shotgun_pump.aim_delay = {
		0.2,
		0.2
	}
	self.tank.weapon.is_shotgun_pump.range = {
		optimal = 500,
		far = 1000,
		close = 100
	}
	self.tank.weapon.is_shotgun_pump.focus_delay = 0.2
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 4.5,
			r = 100,
			acc = {
				0.95,
				0.95
			},
			recoil = {
				0.8,
				0.8
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 4.5,
			r = 500,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				0.9,
				0.9
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 4.5,
			r = 1000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 3,
			r = 2000,
			acc = {
				0.45,
				0.65
			},
			recoil = {
				1.25,
				1.25
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 1.5,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1.75,
				1.75
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}


	-- Skulldozer preset
	-- 40 damage
	self.tank.weapon.is_lmg.spread = 15
	self.tank.weapon.is_lmg.aim_delay = {
		0.1,
		0.1
	}
	self.tank.weapon.is_lmg.autofire_rounds = {
		40,
		80
	}
	self.tank.weapon.is_lmg.range = {
		optimal = 1500,
		far = 2500,
		close = 1000
	}
	self.tank.weapon.is_lmg.focus_delay = 0.2
	self.tank.weapon.is_lmg.FALLOFF = {
		{
			dmg_mul = 2,
			r = 100,
			acc = {
				0.9,
				1
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 500,
			acc = {
				0.8,
				0.95
			},
			recoil = {
				0.65,
				0.8
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 1000,
			acc = {
				0.7,
				0.85
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 2000,
			acc = {
				0.45,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 3000,
			acc = {
				0.2,
				0.3
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			}
		}
	}

	-- Shield preset
	-- 30 damage
	self.shield.weapon.is_smg.aim_delay = {0.2, 0.2}
	self.shield.weapon.is_smg.focus_delay = 0.2
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.range = {
		optimal = 900,
		far = 1750,
		close = 500
	}
	self.shield.weapon.is_smg.FALLOFF = {
		{
			r = 100,
			acc = {0.9, 0.95},
			dmg_mul = 3,
			recoil = {0.35, 0.35},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				10,
				15
			}
		},
		{
			r = 700,
			acc = {0.8, 0.8},
			dmg_mul = 3,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				8,
				12
			}
		},
		{
			r = 1000,
			acc = {0.6, 0.65},
			dmg_mul = 3,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				4,
				7
			}
		},
		{
			r = 2000,
			acc = {0.5, 0.7},
			dmg_mul = 3,
			recoil = {0.35, 1},
			mode = {
				0,
				0,
				2,
				3
			},
			autofire_rounds = {
				3,
				5
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.5},
			dmg_mul = 3,
			recoil = {0.5, 1.2},
			mode = {
				3,
				2,
				0,
				0
			}
		}
	}

	-- Pistol Shield preset
	self.shield.weapon.is_pistol.aim_delay = {0.2, 0.2}
	self.shield.weapon.is_pistol.focus_delay = 0.2
	self.shield.weapon.is_pistol.range = {
		optimal = 900,
		far = 1750,
		close = 500
	}
	self.shield.weapon.is_pistol.FALLOFF = {
		{
			r = 100,
			acc = {0.9, 0.95},
			dmg_mul = 6.75,
			recoil = {0.35, 0.35},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 700,
			acc = {0.8, 0.8},
			dmg_mul = 6.75,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 1000,
			acc = {0.6, 0.65},
			dmg_mul = 5,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				2,
				1
			}
		},
		{
			r = 2000,
			acc = {0.5, 0.7},
			dmg_mul = 3.5,
			recoil = {0.35, 1},
			mode = {
				1,
				2,
				0,
				0
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.5},
			dmg_mul = 1.5,
			recoil = {0.5, 1.2},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}

	-- Taser preset
	self.taser.weapon.is_rifle = deep_clone(self.presets.weapon.deathwish.is_rifle)
	self.taser.weapon.is_rifle.tase_sphere_cast_radius = 30
	self.taser.weapon.is_rifle.tase_distance = 1500
	self.taser.weapon.is_rifle.aim_delay_tase = {0.2, 0.2}

	-- Bosses
	self.chavez_boss.weapon.akimbo_pistol.FALLOFF = {
		{
			dmg_mul = 4,
			r = 100,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				0.1,
				0.15
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 4,
			r = 500,
			acc = {
				0.7,
				0.85
			},
			recoil = {
				0.1,
				0.15
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 4,
			r = 1000,
			acc = {
				0.6,
				0.75
			},
			recoil = {
				0.15,
				0.2
			},
			mode = {
				0,
				0,
				2,
				1
			}
		},
		{
			dmg_mul = 4,
			r = 2000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				0.175,
				0.25
			},
			mode = {
				3,
				1,
				0,
				0
			}
		},
		{
			dmg_mul = 4,
			r = 3000,
			acc = {
				0.1,
				0.3
			},
			recoil = {
				0.35,
				0.45
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 4,
			r = 4000,
			acc = {
				0.0,
				0.2
			},
			recoil = {
				0.5,
				0.75
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.hector_boss.weapon.is_shotgun_mag = self.tank.weapon.is_shotgun_mag
	self.biker_boss.weapon.is_lmg = self.tank.weapon.is_lmg
	self.mobster_boss.weapon.is_lmg = self.tank.weapon.is_lmg

	--team ai
	self.presets.weapon.gang_member.is_pistol.FALLOFF = {
		{
			dmg_mul = 10,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 5,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_rifle.FALLOFF = {
		{
			dmg_mul = 10,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 5,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_sniper.FALLOFF = {
		{
			dmg_mul = 20,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 20,
			r = 1000,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 20,
			r = 2500,
			acc = {
				0.95,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 10,
			r = 4000,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 10,
			r = 10000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_lmg.FALLOFF = {
		{
			dmg_mul = 10,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 7.5,
			r = 1000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				0.4,
				0.65
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 3000,
			acc = {
				0.5,
				0.7
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 4000,
			acc = {
				0.02,
				0.25
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 0.5,
			r = 10000,
			acc = {
				0.01,
				0.1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0,
				0,
				0,
				1
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 10,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 5,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 10,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				6
			}
		},
		{
			dmg_mul = 8,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				5
			}
		},
		{
			dmg_mul = 7,
			r = 1000,
			acc = {
				0.85,
				0.95
			},
			recoil = {
				0.1,
				0.15
			},
			mode = {
				1,
				2,
				4,
				4
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				1,
				4,
				4,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 3000,
			acc = {
				0.4,
				0.7
			},
			recoil = {
				0.4,
				0.5
			},
			mode = {
				4,
				2,
				1,
				0
			}
		},
		{
			dmg_mul = 0.2,
			r = 10000,
			acc = {
				0.05,
				0.2
			},
			recoil = {
				0.5,
				1
			},
			mode = {
				2,
				1,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")

	self.spooc.spooc_attack_timeout = {2, 3}
	self.flashbang_multiplier = 1.75
	self.concussion_multiplier = 1
end

local _set_overkill_290_orig = CharacterTweakData._set_overkill_290
function CharacterTweakData:_set_sm_wish()
	_set_overkill_290_orig(self)

	-- Eclipse exclusive buffs
	self.flashbang_multiplier = 2
	self.city_swat.dodge = self.presets.dodge.ninja
	self:_multiply_all_speeds(1.15, 1.075)
	-- set specific speeds for tanks and shields
	self.tank.move_speed.stand.walk.cbt = {strafe = 186, fwd = 208, bwd = 164}
	self.tank.move_speed.stand.run.cbt = {strafe = 355, fwd = 410, bwd = 225}
	self.shield.move_speed.crouch.walk.cbt = {strafe = 270, fwd = 300, bwd = 250}
	self.shield.move_speed.crouch.run.cbt = {strafe = 300, fwd = 340, bwd = 270}
end

-- fixed movement speed difficulty scaling
-- thanks redflame for this code from like 6 months ago
function CharacterTweakData:_multiply_all_speeds(walk_mul, run_mul)
    for preset_name, preset in pairs(self.presets.move_speed) do
        if preset_name ~= "civ_fast" and preset_name ~= "escort_slow" and preset_name ~= "escort_normal" then
            for _, pose in pairs(preset) do
                for haste_name, haste in pairs(pose) do
                    for stance_name, stance in pairs(haste) do
                        if stance_name ~= "ntl" then
                            for move_dir in pairs(stance) do
                                stance[move_dir] = stance[move_dir] * (haste_name == "walk" and walk_mul or run_mul)
                            end
                        end
                    end
                end
            end
        end
    end
end