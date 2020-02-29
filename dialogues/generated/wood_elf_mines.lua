return function ()
	define_rule({
		name = "pwe_level_mine_ladder",
		response = "pwe_level_mine_ladder",
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
				"level_mine_ladder"
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
				"level_mine_ladder",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_ladder",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_follow_tracks",
		response = "pwe_level_mine_follow_tracks",
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
				"level_mine_follow_tracks"
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
				"level_mine_follow_tracks",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_follow_tracks",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_mine_cart",
		response = "pwe_level_mine_mine_cart",
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
				"level_mine_mine_cart"
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
				"level_mine_mine_cart",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_mine_cart",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_mine_cart_remind",
		response = "pwe_level_mine_mine_cart_remind",
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
				"level_mine_mine_cart_remind"
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
				"level_mine_mine_cart_remind",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_mine_cart_remind",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_warren",
		response = "pwe_level_mine_warren",
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
				"level_mine_warren"
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
				"level_mine_warren",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_warren",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_mine_cart_push_upwards",
		response = "pwe_level_mine_mine_cart_push_upwards",
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
				"level_mine_mine_cart_push_upwards"
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
				"level_mine_mine_cart_push_upwards",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_mine_cart_push_upwards",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_mine_cart_roll_down_back",
		response = "pwe_level_mine_mine_cart_roll_down_back",
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
				"level_mine_mine_cart_roll_down_back"
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
				"level_mine_mine_cart_roll_down_back",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_mine_cart_roll_down_back",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_mine_cart_roll_down_forward",
		response = "pwe_level_mine_mine_cart_roll_down_forward",
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
				"level_mine_mine_cart_roll_down_forward"
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
				"level_mine_mine_cart_roll_down_forward",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_mine_cart_roll_down_forward",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_find_explosives",
		response = "pwe_level_mine_find_explosives",
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
				"level_mine_find_explosives"
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
				"level_mine_find_explosives",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_find_explosives",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_darkness",
		response = "pwe_level_mine_darkness",
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
				"level_mine_darkness"
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
				"level_mine_darkness",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_darkness",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_mine_cart_drops_away",
		response = "pwe_level_mine_mine_cart_drops_away",
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
				"level_mine_mine_cart_drops_away"
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
				"level_mine_mine_cart_drops_away",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_mine_cart_drops_away",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_lost_cart",
		response = "pwe_level_mine_lost_cart",
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
				"level_mine_lost_cart"
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
				"level_mine_lost_cart",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_lost_cart",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_troll_food_storage",
		response = "pwe_level_mine_troll_food_storage",
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
				"level_mine_troll_food_storage"
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
				"level_mine_troll_food_storage",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_troll_food_storage",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_big_troll_cave",
		response = "pwe_level_mine_big_troll_cave",
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
				"level_mine_big_troll_cave"
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
				"level_mine_big_troll_cave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_big_troll_cave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_impressive_cave",
		response = "pwe_level_mine_impressive_cave",
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
				"level_mine_impressive_cave"
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
				"level_mine_impressive_cave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_impressive_cave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_found_cart_troll_cave",
		response = "pwe_level_mine_found_cart_troll_cave",
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
				"level_mine_found_cart_troll_cave"
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
				"level_mine_found_cart_troll_cave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_found_cart_troll_cave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_bell_ringing",
		response = "pwe_level_mine_bell_ringing",
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
				"level_mine_bell_ringing"
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
				"level_mine_bell_ringing",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_bell_ringing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_portal",
		response = "pwe_level_mine_portal",
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
				"level_mine_portal"
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
				"level_mine_portal",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_portal",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_mine_intro_a",
		response = "pwe_mine_intro_a",
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
				"mine_intro_a"
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
				"mine_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"mine_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_mine_intro_b",
		response = "pwe_mine_intro_b",
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
				"mine_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"mine_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"mine_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_mine_intro_c",
		response = "pwe_mine_intro_c",
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
				"mine_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"mine_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"mine_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_gloat",
		response = "pwe_level_mine_gloat",
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
				"level_mine_gloat"
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
				"level_mine_gloat",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_gloat",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_troll_doors",
		response = "pwe_level_mine_troll_doors",
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
				"level_mine_troll_doors"
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
				"level_mine_troll_doors",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_troll_doors",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_mine_bridge",
		response = "pwe_level_mine_bridge",
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
				"level_mine_bridge"
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
				"level_mine_bridge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_mine_bridge",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_level_mine_mine_cart_drops_away = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_mine_cart_drops_away_01",
				"pwe_level_mine_mine_cart_drops_away_02",
				"pwe_level_mine_mine_cart_drops_away_03",
				"pwe_level_mine_mine_cart_drops_away_04"
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
				2.1883542537689,
				3.2920207977295,
				2.8457291126251,
				3.3117084503174
			},
			localization_strings = {
				"pwe_level_mine_mine_cart_drops_away_01",
				"pwe_level_mine_mine_cart_drops_away_02",
				"pwe_level_mine_mine_cart_drops_away_03",
				"pwe_level_mine_mine_cart_drops_away_04"
			},
			randomize_indexes = {}
		},
		pwe_mine_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_mine_intro_c_01",
				[2.0] = "pwe_mine_intro_c_02"
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
				[1.0] = 7.7063751220703,
				[2.0] = 6.1650624275208
			},
			localization_strings = {
				[1.0] = "pwe_mine_intro_c_01",
				[2.0] = "pwe_mine_intro_c_02"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_mine_cart_push_upwards = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_mine_cart_push_upwards_01",
				"pwe_level_mine_mine_cart_push_upwards_02",
				"pwe_level_mine_mine_cart_push_upwards_03",
				"pwe_level_mine_mine_cart_push_upwards_04"
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
				1.3760207891464,
				2.0102291107178,
				2.6242709159851,
				2.0847499370575
			},
			localization_strings = {
				"pwe_level_mine_mine_cart_push_upwards_01",
				"pwe_level_mine_mine_cart_push_upwards_02",
				"pwe_level_mine_mine_cart_push_upwards_03",
				"pwe_level_mine_mine_cart_push_upwards_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_darkness = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_darkness_01",
				"pwe_level_mine_darkness_02",
				"pwe_level_mine_darkness_03",
				"pwe_level_mine_darkness_04"
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
				2.4725415706634,
				3.0672292709351,
				2.8591666221619,
				4.1418542861939
			},
			localization_strings = {
				"pwe_level_mine_darkness_01",
				"pwe_level_mine_darkness_02",
				"pwe_level_mine_darkness_03",
				"pwe_level_mine_darkness_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_lost_cart = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_lost_cart_01",
				"pwe_level_mine_lost_cart_02",
				"pwe_level_mine_lost_cart_03",
				"pwe_level_mine_lost_cart_04"
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
				3.4000000953674,
				3.1262083053589,
				3.2752709388733,
				2.3855834007263
			},
			localization_strings = {
				"pwe_level_mine_lost_cart_01",
				"pwe_level_mine_lost_cart_02",
				"pwe_level_mine_lost_cart_03",
				"pwe_level_mine_lost_cart_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_mine_cart_roll_down_forward = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_mine_cart_roll_down_forward_01",
				"pwe_level_mine_mine_cart_roll_down_forward_02",
				"pwe_level_mine_mine_cart_roll_down_forward_03",
				"pwe_level_mine_mine_cart_roll_down_forward_04"
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
				4,
				3.1475625038147,
				4.525354385376,
				1.7741874456406
			},
			localization_strings = {
				"pwe_level_mine_mine_cart_roll_down_forward_01",
				"pwe_level_mine_mine_cart_roll_down_forward_02",
				"pwe_level_mine_mine_cart_roll_down_forward_03",
				"pwe_level_mine_mine_cart_roll_down_forward_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_gloat = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_gloat_01",
				"pwe_level_mine_gloat_02",
				"pwe_level_mine_gloat_03",
				"pwe_level_mine_gloat_04"
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
				3.1260833740234,
				3.2462499141693,
				4.5848126411438,
				3.4567
			},
			localization_strings = {
				"pwe_level_mine_gloat_01",
				"pwe_level_mine_gloat_02",
				"pwe_level_mine_gloat_03",
				"pwe_level_mine_gloat_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_bridge = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_objective_correct_path_bridge_17",
				[2.0] = "pwe_objective_correct_path_bridge_19"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.0793957710266,
				[2.0] = 1.9721875190735
			},
			localization_strings = {
				[1.0] = "pwe_objective_correct_path_bridge_17",
				[2.0] = "pwe_objective_correct_path_bridge_19"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_troll_doors = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_troll_doors_01",
				"pwe_level_mine_troll_doors_02",
				"pwe_level_mine_troll_doors_03",
				"pwe_level_mine_troll_doors_04"
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
				1.84920835495,
				4.3931665420532,
				3.4529583454132,
				4.2480001449585
			},
			localization_strings = {
				"pwe_level_mine_troll_doors_01",
				"pwe_level_mine_troll_doors_02",
				"pwe_level_mine_troll_doors_03",
				"pwe_level_mine_troll_doors_04"
			},
			randomize_indexes = {}
		},
		pwe_mine_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_mine_intro_b_01",
				[2.0] = "pwe_mine_intro_b_02"
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
				[1.0] = 6.6182084083557,
				[2.0] = 2.1461250782013
			},
			localization_strings = {
				[1.0] = "pwe_mine_intro_b_01",
				[2.0] = "pwe_mine_intro_b_02"
			},
			randomize_indexes = {}
		},
		pwe_mine_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_mine_intro_a_01",
				[2.0] = "pwe_mine_intro_a_02"
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
				[1.0] = 5.8668751716614,
				[2.0] = 6.4423751831055
			},
			localization_strings = {
				[1.0] = "pwe_mine_intro_a_01",
				[2.0] = "pwe_mine_intro_a_02"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_portal = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_portal_01",
				"pwe_level_mine_portal_02",
				"pwe_level_mine_portal_03",
				"pwe_level_mine_portal_04"
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
				5.0444169044495,
				2.9715623855591,
				3.8939790725708,
				3.604749917984
			},
			localization_strings = {
				"pwe_level_mine_portal_01",
				"pwe_level_mine_portal_02",
				"pwe_level_mine_portal_03",
				"pwe_level_mine_portal_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_bell_ringing = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_bell_ringing_01",
				"pwe_level_mine_bell_ringing_02",
				"pwe_level_mine_bell_ringing_03",
				"pwe_level_mine_bell_ringing_04"
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
				2.7999999523163,
				2.3328542709351,
				4.7941875457764,
				3.2569582462311
			},
			localization_strings = {
				"pwe_level_mine_bell_ringing_01",
				"pwe_level_mine_bell_ringing_02",
				"pwe_level_mine_bell_ringing_03",
				"pwe_level_mine_bell_ringing_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_found_cart_troll_cave = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_found_cart_troll_cave_01",
				"pwe_level_mine_found_cart_troll_cave_02",
				"pwe_level_mine_found_cart_troll_cave_03",
				"pwe_level_mine_found_cart_troll_cave_04"
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
				2.8351874351502,
				3.6191458702087,
				3.84410405159,
				3.6969375610352
			},
			localization_strings = {
				"pwe_level_mine_found_cart_troll_cave_01",
				"pwe_level_mine_found_cart_troll_cave_02",
				"pwe_level_mine_found_cart_troll_cave_03",
				"pwe_level_mine_found_cart_troll_cave_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_impressive_cave = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_impressive_cave_01",
				"pwe_level_mine_impressive_cave_02",
				"pwe_level_mine_impressive_cave_03",
				"pwe_level_mine_impressive_cave_04"
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
				3.1074166297913,
				4.4367918968201,
				5.3708958625794,
				2.7475833892822
			},
			localization_strings = {
				"pwe_level_mine_impressive_cave_01",
				"pwe_level_mine_impressive_cave_02",
				"pwe_level_mine_impressive_cave_03",
				"pwe_level_mine_impressive_cave_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_mine_cart_remind = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_mine_cart_remind_01",
				"pwe_level_mine_mine_cart_remind_02",
				"pwe_level_mine_mine_cart_remind_03",
				"pwe_level_mine_mine_cart_remind_04"
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
				2.3302917480469,
				3.4680624008179,
				3.4017915725708,
				2.6772084236145
			},
			localization_strings = {
				"pwe_level_mine_mine_cart_remind_01",
				"pwe_level_mine_mine_cart_remind_02",
				"pwe_level_mine_mine_cart_remind_03",
				"pwe_level_mine_mine_cart_remind_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_mine_cart_roll_down_back = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_mine_cart_roll_down_back_01",
				"pwe_level_mine_mine_cart_roll_down_back_02",
				"pwe_level_mine_mine_cart_roll_down_back_03",
				"pwe_level_mine_mine_cart_roll_down_back_04"
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
				4.5073747634888,
				2.4607291221619,
				1.5733333826065,
				2.3206875324249
			},
			localization_strings = {
				"pwe_level_mine_mine_cart_roll_down_back_01",
				"pwe_level_mine_mine_cart_roll_down_back_02",
				"pwe_level_mine_mine_cart_roll_down_back_03",
				"pwe_level_mine_mine_cart_roll_down_back_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_follow_tracks = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_follow_tracks_01",
				"pwe_level_mine_follow_tracks_02",
				"pwe_level_mine_follow_tracks_03",
				"pwe_level_mine_follow_tracks_04"
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
				2,
				2.2312083244324,
				2.1534376144409,
				3.7473750114441
			},
			localization_strings = {
				"pwe_level_mine_follow_tracks_01",
				"pwe_level_mine_follow_tracks_02",
				"pwe_level_mine_follow_tracks_03",
				"pwe_level_mine_follow_tracks_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_find_explosives = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_find_explosives_01",
				"pwe_level_mine_find_explosives_02",
				"pwe_level_mine_find_explosives_03",
				"pwe_level_mine_find_explosives_04"
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
				2.8582916259766,
				4.7913331985474,
				6.4180207252502,
				5.368145942688
			},
			localization_strings = {
				"pwe_level_mine_find_explosives_01",
				"pwe_level_mine_find_explosives_02",
				"pwe_level_mine_find_explosives_03",
				"pwe_level_mine_find_explosives_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_troll_food_storage = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_troll_food_storage_01",
				"pwe_level_mine_troll_food_storage_02",
				"pwe_level_mine_troll_food_storage_03",
				"pwe_level_mine_troll_food_storage_04"
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
				2.7769374847412,
				4.1623334884644,
				6.6395831108093,
				5.2928957939148
			},
			localization_strings = {
				"pwe_level_mine_troll_food_storage_01",
				"pwe_level_mine_troll_food_storage_02",
				"pwe_level_mine_troll_food_storage_03",
				"pwe_level_mine_troll_food_storage_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_mine_cart = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_mine_cart_01",
				"pwe_level_mine_mine_cart_02",
				"pwe_level_mine_mine_cart_03",
				"pwe_level_mine_mine_cart_04"
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
				1.9257708787918,
				3.1139376163483,
				4.8432292938232,
				2.2200832366943
			},
			localization_strings = {
				"pwe_level_mine_mine_cart_01",
				"pwe_level_mine_mine_cart_02",
				"pwe_level_mine_mine_cart_03",
				"pwe_level_mine_mine_cart_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_warren = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_warren_01",
				"pwe_level_mine_warren_02",
				"pwe_level_mine_warren_03",
				"pwe_level_mine_warren_04"
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
				4.2642292976379,
				2.9689583778381,
				6.3412709236145,
				4.9186873435974
			},
			localization_strings = {
				"pwe_level_mine_warren_01",
				"pwe_level_mine_warren_02",
				"pwe_level_mine_warren_03",
				"pwe_level_mine_warren_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_ladder = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_ladder_01",
				"pwe_level_mine_ladder_02",
				"pwe_level_mine_ladder_03",
				"pwe_level_mine_ladder_04"
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
				3.2722916603088,
				3.250458240509,
				2.9708333015442,
				4.6639165878296
			},
			localization_strings = {
				"pwe_level_mine_ladder_01",
				"pwe_level_mine_ladder_02",
				"pwe_level_mine_ladder_03",
				"pwe_level_mine_ladder_04"
			},
			randomize_indexes = {}
		},
		pwe_level_mine_big_troll_cave = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_mines",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_level_mine_big_troll_cave_01",
				"pwe_level_mine_big_troll_cave_02",
				"pwe_level_mine_big_troll_cave_03",
				"pwe_level_mine_big_troll_cave_04"
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
				4.1348748207092,
				3.8357915878296,
				5.883270740509,
				5.6185207366943
			},
			localization_strings = {
				"pwe_level_mine_big_troll_cave_01",
				"pwe_level_mine_big_troll_cave_02",
				"pwe_level_mine_big_troll_cave_03",
				"pwe_level_mine_big_troll_cave_04"
			},
			randomize_indexes = {}
		}
	})
end
