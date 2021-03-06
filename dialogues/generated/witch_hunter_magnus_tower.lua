return function ()
	define_rule({
		name = "pwh_objective_magnus_tower_view_tower",
		response = "pwh_objective_magnus_tower_view_tower",
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
				"magnus_tower_view_tower"
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
				"time_since_magnus_tower_view_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_view_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_entering_guardhouse",
		response = "pwh_objective_magnus_tower_entering_guardhouse",
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
				"magnus_tower_entering_guardhouse"
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
				"time_since_magnus_tower_entering_guardhouse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_entering_guardhouse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_seeing_gate",
		response = "pwh_objective_magnus_tower_seeing_gate",
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
				"magnus_tower_seeing_gate"
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
				"time_since_magnus_tower_seeing_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_finding_explosives",
		response = "pwh_objective_magnus_tower_finding_explosives",
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
				"magnus_tower_finding_explosives"
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
				"time_since_magnus_tower_finding_explosives_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_finding_explosives_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_how_to_escape",
		response = "pwh_objective_magnus_tower_how_to_escape",
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
				"magnus_tower_how_to_escape"
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
				"time_since_magnus_tower_how_to_escape",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_how_to_escape",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_reaching_top_of_magnus_tower",
		response = "pwh_objective_magnus_tower_reaching_top_of_magnus_tower",
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
				"magnus_tower_reaching_top_of_magnus_tower"
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
				"time_since_magnus_tower_reaching_top_of_magnus_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_reaching_top_of_magnus_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_crescendo_starting",
		response = "pwh_objective_magnus_tower_crescendo_starting",
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
				"magnus_tower_crescendo_starting"
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
				"time_since_magnus_tower_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_call_elevator",
		response = "pwh_objective_magnus_tower_call_elevator",
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
				"magnus_tower_call_elevator"
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
				"time_since_magnus_tower_call_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_call_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_elevator_opens_door",
		response = "pwh_objective_magnus_tower_elevator_opens_door",
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
				"magnus_tower_elevator_opens_door"
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
				"time_since_magnus_tower_elevator_opens_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_elevator_opens_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_seeing_guardhouse",
		response = "pwh_objective_magnus_tower_seeing_guardhouse",
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
				"magnus_tower_seeing_guardhouse"
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
				"time_since_magnus_tower_seeing_guardhouse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_guardhouse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_up_stairs",
		response = "pwh_objective_magnus_tower_up_stairs",
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
				"magnus_tower_up_stairs"
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
				"time_since_magnus_tower_up_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_up_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_seeing_tavern",
		response = "pwh_objective_magnus_tower_seeing_tavern",
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
				"magnus_tower_seeing_tavern"
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
				"time_since_magnus_tower_seeing_tavern",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_tavern",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_to_rooftops",
		response = "pwh_objective_magnus_tower_to_rooftops",
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
				"magnus_tower_over_rooftops"
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
				"time_since_magnus_tower_over_rooftops",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_over_rooftops",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_over_rooftops",
		response = "pwh_objective_magnus_tower_over_rooftops",
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
				"magnus_tower_over_rooftops"
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
				"time_since_magnus_tower_over_rooftops",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_over_rooftops",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_seeing_tower",
		response = "pwh_objective_magnus_tower_seeing_tower",
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
				"magnus_tower_seeing_tower"
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
				"time_since_magnus_tower_seeing_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_walking_streets",
		response = "pwh_objective_magnus_tower_walking_streets",
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
				"magnus_tower_walking_streets"
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
				"time_since_magnus_tower_walking_streets",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_walking_streets",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_hint_blow_horn",
		response = "pwh_objective_magnus_tower_hint_blow_horn",
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
				"magnus_tower_hint_blow_horn"
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
				"time_since_magnus_tower_hint_blow_horn",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_hint_blow_horn",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_arriving_late",
		response = "pwh_objective_magnus_tower_arriving_late",
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
				"magnus_tower_arriving_late"
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
				"time_since_magnus_tower_arriving_late",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_arriving_late",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_objective_magnus_tower_vista",
		response = "pwh_objective_magnus_tower_vista",
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
				"magnus_tower_vista"
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
				"time_since_magnus_tower_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_magnus_tower_intro",
		response = "pwh_magnus_tower_intro",
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
				"magnus_tower_intro"
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
				"time_since_magnus_tower_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_magnus_tower_intro_b",
		response = "pwh_magnus_tower_intro_b",
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
				"magnus_tower_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_magnus_tower_intro_c",
		response = "pwh_magnus_tower_intro_c",
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
				"magnus_tower_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pwh_objective_magnus_tower_reaching_top_of_magnus_tower = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_01",
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_02",
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_03",
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				3.9073750972748,
				3.835000038147,
				2.6466875076294,
				1.4704791307449
			},
			localization_strings = {
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_01",
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_02",
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_03",
				"pwh_objective_magnus_tower_reaching_top_of_magnus_tower_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_crescendo_starting = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_crescendo_starting_01",
				"pwh_objective_magnus_tower_crescendo_starting_02",
				"pwh_objective_magnus_tower_crescendo_starting_03",
				"pwh_objective_magnus_tower_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				4.8280415534973,
				4.6878123283386,
				5.586437702179,
				3.703958272934
			},
			localization_strings = {
				"pwh_objective_magnus_tower_crescendo_starting_01",
				"pwh_objective_magnus_tower_crescendo_starting_02",
				"pwh_objective_magnus_tower_crescendo_starting_03",
				"pwh_objective_magnus_tower_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_finding_explosives = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_finding_explosives_01",
				"pwh_objective_magnus_tower_finding_explosives_02",
				"pwh_objective_magnus_tower_finding_explosives_03",
				"pwh_objective_magnus_tower_finding_explosives_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.2864375114441,
				3.8364791870117,
				4.2151460647583,
				7.1007914543152
			},
			localization_strings = {
				"pwh_objective_magnus_tower_finding_explosives_01",
				"pwh_objective_magnus_tower_finding_explosives_02",
				"pwh_objective_magnus_tower_finding_explosives_03",
				"pwh_objective_magnus_tower_finding_explosives_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_seeing_tower = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_seeing_tower_01",
				[2.0] = "pwh_objective_magnus_tower_seeing_tower_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.904937505722,
				[2.0] = 3.4662292003632
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_seeing_tower_01",
				[2.0] = "pwh_objective_magnus_tower_seeing_tower_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_walking_streets = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_walking_streets_01",
				[2.0] = "pwh_objective_magnus_tower_walking_streets_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			sound_events_duration = {
				[1.0] = 4.080958366394,
				[2.0] = 4.5911874771118
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_walking_streets_01",
				[2.0] = "pwh_objective_magnus_tower_walking_streets_02"
			},
			randomize_indexes = {}
		},
		pwh_magnus_tower_intro = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_magnus_tower_intro_a_01",
				[2.0] = "pwh_magnus_tower_intro_a_02"
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
				[1.0] = 2.8771874904633,
				[2.0] = 3.9559373855591
			},
			localization_strings = {
				[1.0] = "pwh_magnus_tower_intro_a_01",
				[2.0] = "pwh_magnus_tower_intro_a_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_up_stairs = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_up_stairs_01",
				[2.0] = "pwh_objective_magnus_tower_up_stairs_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_pain",
				[2.0] = "face_pain"
			},
			sound_events_duration = {
				[1.0] = 2.7865417003632,
				[2.0] = 1.5099166631699
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_up_stairs_01",
				[2.0] = "pwh_objective_magnus_tower_up_stairs_02"
			},
			randomize_indexes = {}
		},
		pwh_magnus_tower_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_magnus_tower_intro_c_01",
				[2.0] = "pwh_magnus_tower_intro_c_02"
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
				[1.0] = 3.7769374847412,
				[2.0] = 3.18714594841
			},
			localization_strings = {
				[1.0] = "pwh_magnus_tower_intro_c_01",
				[2.0] = "pwh_magnus_tower_intro_c_02"
			},
			randomize_indexes = {}
		},
		pwh_magnus_tower_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_magnus_tower_intro_b_01",
				[2.0] = "pwh_magnus_tower_intro_b_02"
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
				[1.0] = 3.2061874866486,
				[2.0] = 2.7396042346954
			},
			localization_strings = {
				[1.0] = "pwh_magnus_tower_intro_b_01",
				[2.0] = "pwh_magnus_tower_intro_b_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_over_rooftops = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_over_rooftops_01",
				[2.0] = "pwh_objective_magnus_tower_over_rooftops_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 3.2497498989105,
				[2.0] = 4.2193751335144
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_over_rooftops_01",
				[2.0] = "pwh_objective_magnus_tower_over_rooftops_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_seeing_tavern = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_seeing_tavern_01",
				[2.0] = "pwh_objective_magnus_tower_seeing_tavern_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_sadness"
			},
			sound_events_duration = {
				[1.0] = 3.017416715622,
				[2.0] = 4.7873959541321
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_seeing_tavern_01",
				[2.0] = "pwh_objective_magnus_tower_seeing_tavern_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_vista = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_vista_01",
				[2.0] = "pwh_objective_magnus_tower_vista_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			sound_events_duration = {
				[1.0] = 7.1113543510437,
				[2.0] = 3.2101249694824
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_vista_01",
				[2.0] = "pwh_objective_magnus_tower_vista_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_arriving_late = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_arriving_late_01",
				[2.0] = "pwh_objective_magnus_tower_arriving_late_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			sound_events_duration = {
				[1.0] = 5.1999998092651,
				[2.0] = 4.6674165725708
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_arriving_late_01",
				[2.0] = "pwh_objective_magnus_tower_arriving_late_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_call_elevator = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_call_elevator_01",
				"pwh_objective_magnus_tower_call_elevator_02",
				"pwh_objective_magnus_tower_call_elevator_03",
				"pwh_objective_magnus_tower_call_elevator_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_contempt",
				"face_contempt",
				"face_neutral"
			},
			sound_events_duration = {
				2.2000000476837,
				1.460000038147,
				2.7771666049957,
				2.6200625896454
			},
			localization_strings = {
				"pwh_objective_magnus_tower_call_elevator_01",
				"pwh_objective_magnus_tower_call_elevator_02",
				"pwh_objective_magnus_tower_call_elevator_03",
				"pwh_objective_magnus_tower_call_elevator_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_hint_blow_horn = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_hint_blow_horn_01",
				[2.0] = "pwh_objective_magnus_tower_hint_blow_horn_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			sound_events_duration = {
				[1.0] = 3.8747708797455,
				[2.0] = 6.258291721344
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_hint_blow_horn_01",
				[2.0] = "pwh_objective_magnus_tower_hint_blow_horn_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_seeing_gate = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_seeing_gate_01",
				"pwh_objective_magnus_tower_seeing_gate_02",
				"pwh_objective_magnus_tower_seeing_gate_03",
				"pwh_objective_magnus_tower_seeing_gate_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.4919791221619,
				1.6280208826065,
				1.739354133606,
				2.2250416278839
			},
			localization_strings = {
				"pwh_objective_magnus_tower_seeing_gate_01",
				"pwh_objective_magnus_tower_seeing_gate_02",
				"pwh_objective_magnus_tower_seeing_gate_03",
				"pwh_objective_magnus_tower_seeing_gate_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_seeing_guardhouse = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_seeing_guardhouse_01",
				[2.0] = "pwh_objective_magnus_tower_seeing_guardhouse_02"
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
				[1.0] = 3.5999999046326,
				[2.0] = 1.9087291955948
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_seeing_guardhouse_01",
				[2.0] = "pwh_objective_magnus_tower_seeing_guardhouse_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_how_to_escape = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_how_to_escape_01",
				"pwh_objective_magnus_tower_how_to_escape_02",
				"pwh_objective_magnus_tower_how_to_escape_03",
				"pwh_objective_magnus_tower_how_to_escape_04"
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
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				3.1482291221619,
				4.1819791793823,
				4.3892917633057,
				4.3810000419617
			},
			localization_strings = {
				"pwh_objective_magnus_tower_how_to_escape_01",
				"pwh_objective_magnus_tower_how_to_escape_02",
				"pwh_objective_magnus_tower_how_to_escape_03",
				"pwh_objective_magnus_tower_how_to_escape_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_to_rooftops = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwh_objective_magnus_tower_to_rooftops_01",
				[2.0] = "pwh_objective_magnus_tower_to_rooftops_02"
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
				[1.0] = 3.4378750324249,
				[2.0] = 1.3439583778381
			},
			localization_strings = {
				[1.0] = "pwh_objective_magnus_tower_to_rooftops_01",
				[2.0] = "pwh_objective_magnus_tower_to_rooftops_02"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_elevator_opens_door = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_elevator_opens_door_01",
				"pwh_objective_magnus_tower_elevator_opens_door_02",
				"pwh_objective_magnus_tower_elevator_opens_door_03",
				"pwh_objective_magnus_tower_elevator_opens_door_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				1.141562461853,
				2.30504155159,
				1.2106666564941,
				3.094583272934
			},
			localization_strings = {
				"pwh_objective_magnus_tower_elevator_opens_door_01",
				"pwh_objective_magnus_tower_elevator_opens_door_02",
				"pwh_objective_magnus_tower_elevator_opens_door_03",
				"pwh_objective_magnus_tower_elevator_opens_door_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_entering_guardhouse = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_entering_guardhouse_01",
				"pwh_objective_magnus_tower_entering_guardhouse_02",
				"pwh_objective_magnus_tower_entering_guardhouse_03",
				"pwh_objective_magnus_tower_entering_guardhouse_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.5698125362396,
				6.0529375076294,
				4.1038956642151,
				5.018937587738
			},
			localization_strings = {
				"pwh_objective_magnus_tower_entering_guardhouse_01",
				"pwh_objective_magnus_tower_entering_guardhouse_02",
				"pwh_objective_magnus_tower_entering_guardhouse_03",
				"pwh_objective_magnus_tower_entering_guardhouse_04"
			},
			randomize_indexes = {}
		},
		pwh_objective_magnus_tower_view_tower = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "witch_hunter_magnus_tower",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_objective_magnus_tower_view_tower_01",
				"pwh_objective_magnus_tower_view_tower_02",
				"pwh_objective_magnus_tower_view_tower_03",
				"pwh_objective_magnus_tower_view_tower_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.9519791603088,
				4.287624835968,
				4.9368958473206,
				4.8866248130798
			},
			localization_strings = {
				"pwh_objective_magnus_tower_view_tower_01",
				"pwh_objective_magnus_tower_view_tower_02",
				"pwh_objective_magnus_tower_view_tower_03",
				"pwh_objective_magnus_tower_view_tower_04"
			},
			randomize_indexes = {}
		}
	})
end
