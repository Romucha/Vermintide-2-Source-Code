return function ()
	define_rule({
		name = "pwh_level_farmlands_fence_01",
		response = "pwh_level_farmlands_fence_01",
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
				"farmlands_fence"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_fence",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_fence",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_investigate_farm_01",
		response = "pwh_level_farmlands_investigate_farm_01",
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
				"farmlands_investigate_farm"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_investigate_farm",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_investigate_farm",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_no_prisoners_01",
		response = "pwh_level_farmlands_no_prisoners_01",
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
				"farmlands_no_prisoners"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_no_prisoners",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_no_prisoners",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_unlocking_the_cage_01",
		response = "pwh_level_farmlands_unlocking_the_cage_01",
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
				"farmlands_unlocking_the_cage"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_unlocking_the_cage",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_unlocking_the_cage",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_cart_01",
		response = "pwh_level_farmlands_cart_01",
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
				"farmlands_cart"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_cart",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_cart",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_next_farm_01",
		response = "pwh_level_farmlands_next_farm_01",
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
				"farmlands_next_farm"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_next_farm",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_next_farm",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_ripe_with_heresy_01",
		response = "pwh_level_farmlands_ripe_with_heresy_01",
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
				"farmlands_ripe_with_heresy"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_ripe_with_heresy",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_ripe_with_heresy",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_locked_gate_01",
		response = "pwh_level_farmlands_locked_gate_01",
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
				"farmlands_locked_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_locked_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_locked_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_deserted_01",
		response = "pwh_level_farmlands_deserted_01",
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
				"farmlands_deserted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_deserted",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_deserted",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_monster_in_barn_01",
		response = "pwh_level_farmlands_monster_in_barn_01",
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
				"farmlands_monster_in_barn"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_monster_in_barn",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_monster_in_barn",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_kill_the_brute_01",
		response = "pwh_level_farmlands_kill_the_brute_01",
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
				"farmlands_kill_the_brute"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_kill_the_brute",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_kill_the_brute",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_move_on_01",
		response = "pwh_level_farmlands_move_on_01",
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
				"farmlands_move_on"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_move_on",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_move_on",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_through_the_barn_01",
		response = "pwh_level_farmlands_through_the_barn_01",
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
				"farmlands_through_the_barn"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_through_the_barn",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_through_the_barn",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_last_farm_01",
		response = "pwh_level_farmlands_last_farm_01",
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
				"farmlands_last_farm"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_last_farm",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_last_farm",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_smoke_plume_01",
		response = "pwh_level_farmlands_smoke_plume_01",
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
				"farmlands_smoke_plume"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_smoke_plume",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_smoke_plume",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_prisoners_01",
		response = "pwh_level_farmlands_prisoners_01",
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
				"farmlands_prisoners"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_prisoners",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_prisoners",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_end_level_01",
		response = "pwh_level_farmlands_end_level_01",
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
				"farmlands_end_level"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_end_level",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_end_level",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_farmlands_portal_01",
		response = "pwh_level_farmlands_portal_01",
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
				"farmlands_portal"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_portal",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_portal",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_farmlands_intro_a",
		response = "pwh_farmlands_intro_a",
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
				"farmlands_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_farmlands_intro_b",
		response = "pwh_farmlands_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"farmlands_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_farmlands_intro_c",
		response = "pwh_farmlands_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"farmlands_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"farmlands_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"farmlands_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pwh_level_farmlands_through_the_barn_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_through_the_barn_01",
				"pwh_level_farmlands_through_the_barn_02",
				"pwh_level_farmlands_through_the_barn_03",
				"pwh_level_farmlands_through_the_barn_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				2.4098541736603,
				1.5349583625793,
				2.3297917842865,
				6.5427293777466
			},
			localization_strings = {
				"pwh_level_farmlands_through_the_barn_01",
				"pwh_level_farmlands_through_the_barn_02",
				"pwh_level_farmlands_through_the_barn_03",
				"pwh_level_farmlands_through_the_barn_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_portal_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_portal_01",
				"pwh_level_farmlands_portal_02",
				"pwh_level_farmlands_portal_03",
				"pwh_level_farmlands_portal_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				4.4470834732056,
				3.184291601181,
				6.3612289428711,
				5.2597708702087
			},
			localization_strings = {
				"pwh_level_farmlands_portal_01",
				"pwh_level_farmlands_portal_02",
				"pwh_level_farmlands_portal_03",
				"pwh_level_farmlands_portal_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_no_prisoners_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_no_prisoners_01",
				"pwh_level_farmlands_no_prisoners_02",
				"pwh_level_farmlands_no_prisoners_03",
				"pwh_level_farmlands_no_prisoners_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				4.6452293395996,
				4.1448125839233,
				2.9170207977295,
				2.8077707290649
			},
			localization_strings = {
				"pwh_level_farmlands_no_prisoners_01",
				"pwh_level_farmlands_no_prisoners_02",
				"pwh_level_farmlands_no_prisoners_03",
				"pwh_level_farmlands_no_prisoners_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_deserted_01 = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pwh_level_farmlands_deserted_01",
				"pwh_level_farmlands_deserted_03",
				"pwh_level_farmlands_deserted_04"
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
				2.1858541965485,
				5.3066248893738,
				2.1565625667572
			},
			localization_strings = {
				"pwh_level_farmlands_deserted_01",
				"pwh_level_farmlands_deserted_03",
				"pwh_level_farmlands_deserted_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_move_on_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_move_on_01",
				"pwh_level_farmlands_move_on_02",
				"pwh_level_farmlands_move_on_03",
				"pwh_level_farmlands_move_on_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				2.0322709083557,
				3.0835416316986,
				4.068895816803,
				3.6999790668488
			},
			localization_strings = {
				"pwh_level_farmlands_move_on_01",
				"pwh_level_farmlands_move_on_02",
				"pwh_level_farmlands_move_on_03",
				"pwh_level_farmlands_move_on_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_fence_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_fence_01",
				"pwh_level_farmlands_fence_02",
				"pwh_level_farmlands_fence_03",
				"pwh_level_farmlands_fence_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				2.1370415687561,
				5.6511874198914,
				2.8812708854675,
				3.373229265213
			},
			localization_strings = {
				"pwh_level_farmlands_fence_01",
				"pwh_level_farmlands_fence_02",
				"pwh_level_farmlands_fence_03",
				"pwh_level_farmlands_fence_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_unlocking_the_cage_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_unlocking_the_cage_01",
				"pwh_level_farmlands_unlocking_the_cage_02",
				"pwh_level_farmlands_unlocking_the_cage_03",
				"pwh_level_farmlands_unlocking_the_cage_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				2.4270000457764,
				1.3858125209808,
				2.8475208282471,
				1.6347708702087
			},
			localization_strings = {
				"pwh_level_farmlands_unlocking_the_cage_01",
				"pwh_level_farmlands_unlocking_the_cage_02",
				"pwh_level_farmlands_unlocking_the_cage_03",
				"pwh_level_farmlands_unlocking_the_cage_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_locked_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_locked_gate_01",
				"pwh_level_farmlands_locked_gate_02",
				"pwh_level_farmlands_locked_gate_03",
				"pwh_level_farmlands_locked_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			sound_events_duration = {
				2.9394583702087,
				1.4533333778381,
				2.6701874732971,
				3.2535624504089
			},
			localization_strings = {
				"pwh_level_farmlands_locked_gate_01",
				"pwh_level_farmlands_locked_gate_02",
				"pwh_level_farmlands_locked_gate_03",
				"pwh_level_farmlands_locked_gate_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_next_farm_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_next_farm_01",
				"pwh_level_farmlands_next_farm_02",
				"pwh_level_farmlands_next_farm_03",
				"pwh_level_farmlands_next_farm_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			sound_events_duration = {
				2.8505208492279,
				4.5499167442322,
				4.7715625762939,
				5.0652499198914
			},
			localization_strings = {
				"pwh_level_farmlands_next_farm_01",
				"pwh_level_farmlands_next_farm_02",
				"pwh_level_farmlands_next_farm_03",
				"pwh_level_farmlands_next_farm_04"
			},
			randomize_indexes = {}
		},
		pwh_farmlands_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_farmlands_intro_b_01",
				[2.0] = "pwh_farmlands_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.7506248950958,
				[2.0] = 5.3684582710266
			},
			localization_strings = {
				[1.0] = "pwh_farmlands_intro_b_01",
				[2.0] = "pwh_farmlands_intro_b_02"
			},
			randomize_indexes = {}
		},
		pwh_farmlands_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_farmlands_intro_c_01",
				[2.0] = "pwh_farmlands_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 7.4507083892822,
				[2.0] = 3.0328333377838
			},
			localization_strings = {
				[1.0] = "pwh_farmlands_intro_c_01",
				[2.0] = "pwh_farmlands_intro_c_02"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_monster_in_barn_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_monster_in_barn_01",
				"pwh_level_farmlands_monster_in_barn_02",
				"pwh_level_farmlands_monster_in_barn_03",
				"pwh_level_farmlands_monster_in_barn_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				5.8004584312439,
				4.3823957443237,
				4.5765833854675,
				3.8749582767487
			},
			localization_strings = {
				"pwh_level_farmlands_monster_in_barn_01",
				"pwh_level_farmlands_monster_in_barn_02",
				"pwh_level_farmlands_monster_in_barn_03",
				"pwh_level_farmlands_monster_in_barn_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_smoke_plume_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_smoke_plume_01",
				"pwh_level_farmlands_smoke_plume_02",
				"pwh_level_farmlands_smoke_plume_03",
				"pwh_level_farmlands_smoke_plume_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				4.6035208702087,
				6.4923543930054,
				7.4981665611267,
				4.930624961853
			},
			localization_strings = {
				"pwh_level_farmlands_smoke_plume_01",
				"pwh_level_farmlands_smoke_plume_02",
				"pwh_level_farmlands_smoke_plume_03",
				"pwh_level_farmlands_smoke_plume_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_end_level_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_end_level_01",
				"pwh_level_farmlands_end_level_02",
				"pwh_level_farmlands_end_level_03",
				"pwh_level_farmlands_end_level_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				3.8557500839233,
				5.2916040420532,
				5.2506666183472,
				3.9552500247955
			},
			localization_strings = {
				"pwh_level_farmlands_end_level_01",
				"pwh_level_farmlands_end_level_02",
				"pwh_level_farmlands_end_level_03",
				"pwh_level_farmlands_end_level_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_cart_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_cart_01",
				"pwh_level_farmlands_cart_02",
				"pwh_level_farmlands_cart_03",
				"pwh_level_farmlands_cart_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.7007501125336,
				2.4132082462311,
				3.345999956131,
				4.7723956108093
			},
			localization_strings = {
				"pwh_level_farmlands_cart_01",
				"pwh_level_farmlands_cart_02",
				"pwh_level_farmlands_cart_03",
				"pwh_level_farmlands_cart_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_prisoners_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_prisoners_01",
				"pwh_level_farmlands_prisoners_02",
				"pwh_level_farmlands_prisoners_03",
				"pwh_level_farmlands_prisoners_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				3.8763959407806,
				6.2103333473206,
				5.5903959274292,
				6.1307706832886
			},
			localization_strings = {
				"pwh_level_farmlands_prisoners_01",
				"pwh_level_farmlands_prisoners_02",
				"pwh_level_farmlands_prisoners_03",
				"pwh_level_farmlands_prisoners_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_kill_the_brute_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_kill_the_brute_01",
				"pwh_level_farmlands_kill_the_brute_02",
				"pwh_level_farmlands_kill_the_brute_03",
				"pwh_level_farmlands_kill_the_brute_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				1.8725208044052,
				4.1184582710266,
				3.9841666221619,
				3.7639582157135
			},
			localization_strings = {
				"pwh_level_farmlands_kill_the_brute_01",
				"pwh_level_farmlands_kill_the_brute_02",
				"pwh_level_farmlands_kill_the_brute_03",
				"pwh_level_farmlands_kill_the_brute_04"
			},
			randomize_indexes = {}
		},
		pwh_farmlands_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_farmlands_intro_a_01",
				[2.0] = "pwh_farmlands_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.0594792366028,
				[2.0] = 3.8052709102631
			},
			localization_strings = {
				[1.0] = "pwh_farmlands_intro_a_01",
				[2.0] = "pwh_farmlands_intro_a_02"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_investigate_farm_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_investigate_farm_01",
				"pwh_level_farmlands_investigate_farm_02",
				"pwh_level_farmlands_investigate_farm_03",
				"pwh_level_farmlands_investigate_farm_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				3.1321876049042,
				2.5781042575836,
				5.4887290000916,
				4.0735206604004
			},
			localization_strings = {
				"pwh_level_farmlands_investigate_farm_01",
				"pwh_level_farmlands_investigate_farm_02",
				"pwh_level_farmlands_investigate_farm_03",
				"pwh_level_farmlands_investigate_farm_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_last_farm_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_last_farm_01",
				"pwh_level_farmlands_last_farm_02",
				"pwh_level_farmlands_last_farm_03",
				"pwh_level_farmlands_last_farm_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				6.2063956260681,
				6.3403539657593,
				4.2860832214356,
				5.8841252326965
			},
			localization_strings = {
				"pwh_level_farmlands_last_farm_01",
				"pwh_level_farmlands_last_farm_02",
				"pwh_level_farmlands_last_farm_03",
				"pwh_level_farmlands_last_farm_04"
			},
			randomize_indexes = {}
		},
		pwh_level_farmlands_ripe_with_heresy_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_farmland",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_level_farmlands_ripe_with_heresy_01",
				"pwh_level_farmlands_ripe_with_heresy_02",
				"pwh_level_farmlands_ripe_with_heresy_03",
				"pwh_level_farmlands_ripe_with_heresy_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			sound_events_duration = {
				7.460479259491,
				6.0273332595825,
				6.316999912262,
				8.1665000915527
			},
			localization_strings = {
				"pwh_level_farmlands_ripe_with_heresy_01",
				"pwh_level_farmlands_ripe_with_heresy_02",
				"pwh_level_farmlands_ripe_with_heresy_03",
				"pwh_level_farmlands_ripe_with_heresy_04"
			},
			randomize_indexes = {}
		}
	})
end
