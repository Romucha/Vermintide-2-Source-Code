return function ()
	define_rule({
		name = "pdr_level_ussingen_at_last_end",
		response = "pdr_level_ussingen_at_last_end",
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
				"level_ussingen_at_last_end"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_at_last_end",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_at_last_end",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_cart_full",
		response = "pdr_level_ussingen_cart_full",
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
				"level_ussingen_cart_full"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_cart_full",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_cart_full",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_cellar",
		response = "pdr_level_ussingen_cellar",
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
				"level_ussingen_cellar"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_cellar",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_cellar",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_doomed_town",
		response = "pdr_level_ussingen_doomed_town",
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
				"level_ussingen_doomed_town"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_doomed_town",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_doomed_town",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_escape",
		response = "pdr_level_ussingen_escape",
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
				"level_ussingen_escape"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_escape",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_escape",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_gatehouse",
		response = "pdr_level_ussingen_gatehouse",
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
				"level_ussingen_gatehouse"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_gatehouse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_gatehouse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_hurry",
		response = "pdr_level_ussingen_hurry",
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
				"level_ussingen_hurry"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_hurry",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_hurry",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_less_damaged",
		response = "pdr_level_ussingen_less_damaged",
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
				"level_ussingen_less_damaged"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_less_damaged",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_less_damaged",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_stockpile_burned",
		response = "pdr_level_ussingen_stockpile_burned",
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
				"level_ussingen_stockpile_burned"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_stockpile_burned",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_stockpile_burned",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_thick_smoke",
		response = "pdr_level_ussingen_thick_smoke",
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
				"level_ussingen_thick_smoke"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_thick_smoke",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_thick_smoke",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_way_through",
		response = "pdr_level_ussingen_way_through",
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
				"level_ussingen_way_through"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_way_through",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_way_through",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ussingen_intro_a",
		response = "pdr_ussingen_intro_a",
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
				"ussingen_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"ussingen_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"ussingen_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ussingen_intro_b",
		response = "pdr_ussingen_intro_b",
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
				"ussingen_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"ussingen_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"ussingen_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_ussingen_intro_c",
		response = "pdr_ussingen_intro_c",
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
				"ussingen_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"ussingen_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"ussingen_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_spotting_town",
		response = "pdr_level_ussingen_spotting_town",
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
				"level_ussingen_spotting_town"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_spotting_town",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_spotting_town",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_caravan",
		response = "pdr_level_ussingen_caravan",
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
				"level_ussingen_caravan"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_caravan",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_caravan",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_devastation",
		response = "pdr_level_ussingen_devastation",
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
				"level_ussingen_devastation"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_devastation",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_devastation",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_gate_closed",
		response = "pdr_level_ussingen_gate_closed",
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
				"level_ussingen_gate_closed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_gate_closed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_gate_closed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_search_for_manor",
		response = "pdr_level_ussingen_search_for_manor",
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
				"level_ussingen_search_for_manor"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_search_for_manor",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_search_for_manor",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_marktplatz",
		response = "pdr_level_ussingen_marktplatz",
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
				"level_ussingen_marktplatz"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_marktplatz",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_marktplatz",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_wrong_way",
		response = "pdr_level_ussingen_wrong_way",
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
				"level_ussingen_wrong_way"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_wrong_way",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_wrong_way",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_wine_cellar",
		response = "pdr_level_ussingen_wine_cellar",
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
				"level_ussingen_wine_cellar"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_wine_cellar",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_wine_cellar",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_spotting_manor",
		response = "pdr_level_ussingen_spotting_manor",
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
				"level_ussingen_spotting_manor"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_spotting_manor",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_spotting_manor",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_ussingen_find_way_around",
		response = "pdr_level_ussingen_find_way_around",
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
				"level_ussingen_find_way_around"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_ussingen_find_way_around",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_ussingen_find_way_around",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pdr_level_ussingen_spotting_manor = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_spotting_manor_01",
				"pdr_level_ussingen_spotting_manor_02",
				"pdr_level_ussingen_spotting_manor_03",
				"pdr_level_ussingen_spotting_manor_04"
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
				3.5634167194366,
				3.1163125038147,
				1.7638541460037,
				3.8906042575836
			},
			localization_strings = {
				"pdr_level_ussingen_spotting_manor_01",
				"pdr_level_ussingen_spotting_manor_02",
				"pdr_level_ussingen_spotting_manor_03",
				"pdr_level_ussingen_spotting_manor_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_doomed_town = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_doomed_town_01",
				"pdr_level_ussingen_doomed_town_02",
				"pdr_level_ussingen_doomed_town_03",
				"pdr_level_ussingen_doomed_town_04"
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
				5.8272709846497,
				4.4617915153503,
				5.5458960533142,
				6.198625087738
			},
			localization_strings = {
				"pdr_level_ussingen_doomed_town_01",
				"pdr_level_ussingen_doomed_town_02",
				"pdr_level_ussingen_doomed_town_03",
				"pdr_level_ussingen_doomed_town_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_cart_full = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_cart_full_01",
				"pdr_level_ussingen_cart_full_02",
				"pdr_level_ussingen_cart_full_03",
				"pdr_level_ussingen_cart_full_04"
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
				2.6781249046326,
				2.8271250724792,
				1.6243333816528,
				3.8389999866486
			},
			localization_strings = {
				"pdr_level_ussingen_cart_full_01",
				"pdr_level_ussingen_cart_full_02",
				"pdr_level_ussingen_cart_full_03",
				"pdr_level_ussingen_cart_full_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_cellar = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_cellar_01",
				"pdr_level_ussingen_cellar_02",
				"pdr_level_ussingen_cellar_03",
				"pdr_level_ussingen_cellar_04"
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
				2.3910624980927,
				2.9229373931885,
				3.8186874389648,
				2.9054584503174
			},
			localization_strings = {
				"pdr_level_ussingen_cellar_01",
				"pdr_level_ussingen_cellar_02",
				"pdr_level_ussingen_cellar_03",
				"pdr_level_ussingen_cellar_04"
			},
			randomize_indexes = {}
		},
		pdr_ussingen_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_ussingen_intro_c_01",
				[2.0] = "pdr_ussingen_intro_c_02"
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
				[1.0] = 5.4579792022705,
				[2.0] = 3.2961459159851
			},
			localization_strings = {
				[1.0] = "pdr_ussingen_intro_c_01",
				[2.0] = "pdr_ussingen_intro_c_02"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_stockpile_burned = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_stockpile_burned_01",
				"pdr_level_ussingen_stockpile_burned_02",
				"pdr_level_ussingen_stockpile_burned_03",
				"pdr_level_ussingen_stockpile_burned_04"
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
				6.3266458511353,
				4.8766665458679,
				4.1472082138061,
				5.0050001144409
			},
			localization_strings = {
				"pdr_level_ussingen_stockpile_burned_01",
				"pdr_level_ussingen_stockpile_burned_02",
				"pdr_level_ussingen_stockpile_burned_03",
				"pdr_level_ussingen_stockpile_burned_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_at_last_end = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_at_last_end_01",
				"pdr_level_ussingen_at_last_end_02",
				"pdr_level_ussingen_at_last_end_03",
				"pdr_level_ussingen_at_last_end_04"
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
				3.6397500038147,
				5.1974792480469,
				6.0971665382385,
				3.6214582920074
			},
			localization_strings = {
				"pdr_level_ussingen_at_last_end_01",
				"pdr_level_ussingen_at_last_end_02",
				"pdr_level_ussingen_at_last_end_03",
				"pdr_level_ussingen_at_last_end_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_hurry = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_hurry_01",
				"pdr_level_ussingen_hurry_02",
				"pdr_level_ussingen_hurry_03",
				"pdr_level_ussingen_hurry_04"
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
				3.5336875915527,
				2.0961875915527,
				3.1228125095367,
				3.0681042671204
			},
			localization_strings = {
				"pdr_level_ussingen_hurry_01",
				"pdr_level_ussingen_hurry_02",
				"pdr_level_ussingen_hurry_03",
				"pdr_level_ussingen_hurry_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_find_way_around = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_find_way_around_01",
				"pdr_level_ussingen_find_way_around_02",
				"pdr_level_ussingen_find_way_around_03",
				"pdr_level_ussingen_find_way_around_04"
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
				2.7265207767487,
				2.9422500133514,
				1.6527916193008,
				2.8772916793823
			},
			localization_strings = {
				"pdr_level_ussingen_find_way_around_01",
				"pdr_level_ussingen_find_way_around_02",
				"pdr_level_ussingen_find_way_around_03",
				"pdr_level_ussingen_find_way_around_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_marktplatz = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_markplatz_01",
				"pdr_level_ussingen_markplatz_02",
				"pdr_level_ussingen_markplatz_03",
				"pdr_level_ussingen_markplatz_04"
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
				5.303270816803,
				5.7503957748413,
				4.6616668701172,
				3.7760207653046
			},
			localization_strings = {
				"pdr_level_ussingen_markplatz_01",
				"pdr_level_ussingen_markplatz_02",
				"pdr_level_ussingen_markplatz_03",
				"pdr_level_ussingen_markplatz_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_wine_cellar = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_wine_cellar_01",
				"pdr_level_ussingen_wine_cellar_02",
				"pdr_level_ussingen_wine_cellar_03",
				"pdr_level_ussingen_wine_cellar_04"
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
				3.3335208892822,
				5.0361042022705,
				3.2044999599457,
				5.2655000686645
			},
			localization_strings = {
				"pdr_level_ussingen_wine_cellar_01",
				"pdr_level_ussingen_wine_cellar_02",
				"pdr_level_ussingen_wine_cellar_03",
				"pdr_level_ussingen_wine_cellar_04"
			},
			randomize_indexes = {}
		},
		pdr_ussingen_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_ussingen_intro_a_01",
				[2.0] = "pdr_ussingen_intro_a_02"
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
				[1.0] = 6.5381460189819,
				[2.0] = 6.2905416488647
			},
			localization_strings = {
				[1.0] = "pdr_ussingen_intro_a_01",
				[2.0] = "pdr_ussingen_intro_a_02"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_caravan = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_caravan_01",
				"pdr_level_ussingen_caravan_02",
				"pdr_level_ussingen_caravan_03",
				"pdr_level_ussingen_caravan_04"
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
				3.6478126049042,
				5.2621250152588,
				2.5178124904633,
				5.3874793052673
			},
			localization_strings = {
				"pdr_level_ussingen_caravan_01",
				"pdr_level_ussingen_caravan_02",
				"pdr_level_ussingen_caravan_03",
				"pdr_level_ussingen_caravan_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_wrong_way = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_wrong_way_01",
				"pdr_level_ussingen_wrong_way_02",
				"pdr_level_ussingen_wrong_way_03",
				"pdr_level_ussingen_wrong_way_04"
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
				4.4316873550415,
				2.7276041507721,
				4.5136041641235,
				3.5691249370575
			},
			localization_strings = {
				"pdr_level_ussingen_wrong_way_01",
				"pdr_level_ussingen_wrong_way_02",
				"pdr_level_ussingen_wrong_way_03",
				"pdr_level_ussingen_wrong_way_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_escape = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_escape_01",
				"pdr_level_ussingen_escape_02",
				"pdr_level_ussingen_escape_03",
				"pdr_level_ussingen_escape_04"
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
				3.1512916088104,
				3.6418540477753,
				2.4779374599457,
				4.0699791908264
			},
			localization_strings = {
				"pdr_level_ussingen_escape_01",
				"pdr_level_ussingen_escape_02",
				"pdr_level_ussingen_escape_03",
				"pdr_level_ussingen_escape_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_gatehouse = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pdr_level_ussingen_gatehouse_01",
				"pdr_level_ussingen_gatehouse_02",
				"pdr_level_ussingen_gatehouse_04"
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
				4.7434582710266,
				4.444833278656,
				2.030770778656
			},
			localization_strings = {
				"pdr_level_ussingen_gatehouse_01",
				"pdr_level_ussingen_gatehouse_02",
				"pdr_level_ussingen_gatehouse_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_search_for_manor = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 3,
			sound_events = {
				"pdr_level_ussingen_search_for_manor_01",
				"pdr_level_ussingen_search_for_manor_02",
				"pdr_level_ussingen_search_for_manor_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm"
			},
			sound_events_duration = {
				3.044145822525,
				1.6269166469574,
				3.3365623950958
			},
			localization_strings = {
				"pdr_level_ussingen_search_for_manor_01",
				"pdr_level_ussingen_search_for_manor_02",
				"pdr_level_ussingen_search_for_manor_03"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_gate_closed = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_gate_closed_01",
				"pdr_level_ussingen_gate_closed_02",
				"pdr_level_ussingen_gate_closed_03",
				"pdr_level_ussingen_gate_closed_04"
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
				2.0815207958221,
				2.8691248893738,
				1.9839999675751,
				1.9915000200272
			},
			localization_strings = {
				"pdr_level_ussingen_gate_closed_01",
				"pdr_level_ussingen_gate_closed_02",
				"pdr_level_ussingen_gate_closed_03",
				"pdr_level_ussingen_gate_closed_04"
			},
			randomize_indexes = {}
		},
		pdr_ussingen_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_ussingen_intro_b_01",
				[2.0] = "pdr_ussingen_intro_b_02"
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
				[1.0] = 4.972291469574,
				[2.0] = 6.8022294044495
			},
			localization_strings = {
				[1.0] = "pdr_ussingen_intro_b_01",
				[2.0] = "pdr_ussingen_intro_b_02"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_less_damaged = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_less_damaged_01",
				"pdr_level_ussingen_less_damaged_02",
				"pdr_level_ussingen_less_damaged_03",
				"pdr_level_ussingen_less_damaged_04"
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
				5.2458124160767,
				2.1836042404175,
				2.6800625324249,
				2.6859583854675
			},
			localization_strings = {
				"pdr_level_ussingen_less_damaged_01",
				"pdr_level_ussingen_less_damaged_02",
				"pdr_level_ussingen_less_damaged_03",
				"pdr_level_ussingen_less_damaged_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_devastation = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_devastation_01",
				"pdr_level_ussingen_devastation_02",
				"pdr_level_ussingen_devastation_03",
				"pdr_level_ussingen_devastation_04"
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
				4.6407084465027,
				5.0147500038147,
				3.994062423706,
				7.2273335456848
			},
			localization_strings = {
				"pdr_level_ussingen_devastation_01",
				"pdr_level_ussingen_devastation_02",
				"pdr_level_ussingen_devastation_03",
				"pdr_level_ussingen_devastation_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_thick_smoke = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_thick_smoke_01",
				"pdr_level_ussingen_thick_smoke_02",
				"pdr_level_ussingen_thick_smoke_03",
				"pdr_level_ussingen_thick_smoke_04"
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
				5.8109583854675,
				2.5268957614899,
				2.6669375896454,
				5.6322083473206
			},
			localization_strings = {
				"pdr_level_ussingen_thick_smoke_01",
				"pdr_level_ussingen_thick_smoke_02",
				"pdr_level_ussingen_thick_smoke_03",
				"pdr_level_ussingen_thick_smoke_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_way_through = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_way_through_01",
				"pdr_level_ussingen_way_through_02",
				"pdr_level_ussingen_way_through_03",
				"pdr_level_ussingen_way_through_04"
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
				3.2350416183472,
				2.8331875801086,
				4.1614789962769,
				2.9020833969116
			},
			localization_strings = {
				"pdr_level_ussingen_way_through_01",
				"pdr_level_ussingen_way_through_02",
				"pdr_level_ussingen_way_through_03",
				"pdr_level_ussingen_way_through_04"
			},
			randomize_indexes = {}
		},
		pdr_level_ussingen_spotting_town = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_ussingen",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_ussingen_spotting_town_01",
				"pdr_level_ussingen_spotting_town_02",
				"pdr_level_ussingen_spotting_town_03",
				"pdr_level_ussingen_spotting_town_04"
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
				2.6807916164398,
				2.2421667575836,
				2.9439375400543,
				2.5614790916443
			},
			localization_strings = {
				"pdr_level_ussingen_spotting_town_01",
				"pdr_level_ussingen_spotting_town_02",
				"pdr_level_ussingen_spotting_town_03",
				"pdr_level_ussingen_spotting_town_04"
			},
			randomize_indexes = {}
		}
	})
end
