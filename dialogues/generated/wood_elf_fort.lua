return function ()
	define_rule({
		name = "pwe_level_fort_cannons_silenced",
		response = "pwe_level_fort_cannons_silenced",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_cannons_silenced"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_cannons_silenced",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_cannons_silenced",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_gate_fallen",
		response = "pwe_level_fort_gate_fallen",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_gate_fallen"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_gate_fallen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_gate_fallen",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_skaven_everywhere",
		response = "pwe_level_fort_skaven_everywhere",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_skaven_everywhere"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_skaven_everywhere",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_skaven_everywhere",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_plague_claw_shelling_move",
		response = "pwe_level_fort_plague_claw_shelling_move",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_plague_claw_shelling_move"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_plague_claw_shelling_move",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_plague_claw_shelling_move",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_use_cannons",
		response = "pwe_level_fort_use_cannons",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_use_cannons"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_use_cannons",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_use_cannons",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_skaven_run",
		response = "pwe_level_fort_skaven_run",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_skaven_run"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_skaven_run",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_skaven_run",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_first",
		response = "pwe_level_fort_fire_cannon_first",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_first"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_first",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_first",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_fuse_is_lit",
		response = "pwe_level_fort_fire_cannon_fuse_is_lit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_fuse_is_lit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_fuse_is_lit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_fuse_is_lit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_first_hit",
		response = "pwe_level_fort_fire_cannon_first_hit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_first_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_first_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_first_hit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_second",
		response = "pwe_level_fort_fire_cannon_second",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_second"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_second",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_second",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_second_hit",
		response = "pwe_level_fort_fire_cannon_second_hit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_second_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_second_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_second_hit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_final",
		response = "pwe_level_fort_fire_cannon_final",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_final"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_final",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_final",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_cannonballs",
		response = "pwe_level_fort_cannonballs",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_cannonballs"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_cannonballs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_cannonballs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_final_hit",
		response = "pwe_level_fort_fire_cannon_final_hit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_final_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_final_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_final_hit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_fort_fire_cannon_final_fire",
		response = "pwe_level_fort_fire_cannon_final_fire",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"level_fort_fire_cannon_final_fire"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"level_fort_fire_cannon_final_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_final_hit",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_level_fort_fire_cannon_final_fire = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_final_fire_01",
				[2.0] = "pwe_level_fort_fire_cannon_final_fire_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.3011667728424,
				[2.0] = 2.3634166717529
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_final_fire_01",
				[2.0] = "pwe_level_fort_fire_cannon_final_fire_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_final = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_final_fire_01",
				[2.0] = "pwe_level_fort_fire_cannon_final_fire_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.3011667728424,
				[2.0] = 2.3634166717529
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_final_fire_01",
				[2.0] = "pwe_level_fort_fire_cannon_final_fire_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_final_hit = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_final_hit_01",
				[2.0] = "pwe_level_fort_fire_cannon_final_hit_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.6930832862854,
				[2.0] = 3.722895860672
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_final_hit_01",
				[2.0] = "pwe_level_fort_fire_cannon_final_hit_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_second_hit = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_second_hit_01",
				[2.0] = "pwe_level_fort_fire_cannon_second_hit_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.1298542022705,
				[2.0] = 3.5463540554047
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_second_hit_01",
				[2.0] = "pwe_level_fort_fire_cannon_second_hit_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_use_cannons = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pwe_level_fort_use_cannons_01",
				"pwe_level_fort_use_cannons_02",
				"pwe_level_fort_use_cannons_03"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear"
			},
			sound_events_duration = {
				3.8050832748413,
				3.2387499809265,
				5.5285415649414
			},
			localization_strings = {
				"pwe_level_fort_use_cannons_01",
				"pwe_level_fort_use_cannons_02",
				"pwe_level_fort_use_cannons_03"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_skaven_run = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pwe_level_fort_skaven_run_01",
				"pwe_level_fort_skaven_run_02",
				"pwe_level_fort_skaven_run_03"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear"
			},
			sound_events_duration = {
				4.0656042098999,
				4.4996666908264,
				4.1993541717529
			},
			localization_strings = {
				"pwe_level_fort_skaven_run_01",
				"pwe_level_fort_skaven_run_02",
				"pwe_level_fort_skaven_run_03"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_first_hit = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_first_hit_01",
				[2.0] = "pwe_level_fort_fire_cannon_first_hit_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 3.6615207195282,
				[2.0] = 3.0288333892822
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_first_hit_01",
				[2.0] = "pwe_level_fort_fire_cannon_first_hit_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_plague_claw_shelling_move = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pwe_level_fort_plague_claw_shelling_move_01",
				"pwe_level_fort_plague_claw_shelling_move_02",
				"pwe_level_fort_plague_claw_shelling_move_03"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear"
			},
			sound_events_duration = {
				3.9244167804718,
				3.5269999504089,
				3.3503124713898
			},
			localization_strings = {
				"pwe_level_fort_plague_claw_shelling_move_01",
				"pwe_level_fort_plague_claw_shelling_move_02",
				"pwe_level_fort_plague_claw_shelling_move_03"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_skaven_everywhere = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_skaven_everywhere_01",
				[2.0] = "pwe_level_fort_skaven_everywhere_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 3.1068959236145,
				[2.0] = 3.6465833187103
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_skaven_everywhere_01",
				[2.0] = "pwe_level_fort_skaven_everywhere_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_cannonballs = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_cannonballs_01",
				[2.0] = "pwe_level_fort_cannonballs_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.3011040687561,
				[2.0] = 3.2113125324249
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_cannonballs_01",
				[2.0] = "pwe_level_fort_cannonballs_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_first = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_first_01",
				[2.0] = "pwe_level_fort_fire_cannon_first_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.5234582424164,
				[2.0] = 4.0536665916443
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_first_01",
				[2.0] = "pwe_level_fort_fire_cannon_first_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_gate_fallen = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_gate_fallen_01",
				[2.0] = "pwe_level_fort_gate_fallen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 3.0133125782013,
				[2.0] = 4.3699164390564
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_gate_fallen_01",
				[2.0] = "pwe_level_fort_gate_fallen_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_cannons_silenced = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_cannons_silenced_01",
				[2.0] = "pwe_level_fort_cannons_silenced_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 4.6853957176208,
				[2.0] = 3.9510624408722
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_cannons_silenced_01",
				[2.0] = "pwe_level_fort_cannons_silenced_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_second = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_second_01",
				[2.0] = "pwe_level_fort_fire_cannon_second_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 3.0047082901001,
				[2.0] = 4.8736872673035
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_second_01",
				[2.0] = "pwe_level_fort_fire_cannon_second_02"
			},
			randomize_indexes = {}
		},
		pwe_level_fort_fire_cannon_fuse_is_lit = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_fort",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_level_fort_fire_cannon_fuse_is_lit_01",
				[2.0] = "pwe_level_fort_fire_cannon_fuse_is_lit_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.0257499217987,
				[2.0] = 2.8356873989105
			},
			localization_strings = {
				[1.0] = "pwe_level_fort_fire_cannon_fuse_is_lit_01",
				[2.0] = "pwe_level_fort_fire_cannon_fuse_is_lit_02"
			},
			randomize_indexes = {}
		}
	})
end
