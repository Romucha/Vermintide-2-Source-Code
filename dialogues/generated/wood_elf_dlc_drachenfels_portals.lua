return function ()
	define_rule({
		name = "pwe_portals_intro_line_a",
		response = "pwe_portals_intro_line_a",
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
				"portals_intro_line_a"
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
				"portals_intro_line_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_intro_line_b",
		response = "pwe_portals_intro_line_b",
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
				"portals_intro_line_a"
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
				"portals_intro_line_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_intro_line_c",
		response = "pwe_portals_intro_line_c",
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
				"portals_intro_line_b"
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
				"portals_intro_line_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_enter_village",
		response = "pwe_portals_enter_village",
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
				"portals_enter_village"
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
				"portals_enter_village",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_enter_village",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_find_survivors",
		response = "pwe_portals_find_survivors",
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
				"portals_find_survivors"
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
				"portals_find_survivors",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_find_survivors",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_everyone_gone",
		response = "pwe_portals_everyone_gone",
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
				"portals_everyone_gone"
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
				"portals_everyone_gone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_everyone_gone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_raid_trace",
		response = "pwe_portals_raid_trace",
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
				"portals_raid_trace"
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
				"portals_raid_trace",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_raid_trace",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_kidnapped_traces",
		response = "pwe_portals_kidnapped_traces",
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
				"portals_kidnapped_traces"
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
				"portals_kidnapped_traces",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_kidnapped_traces",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_get_to_temple",
		response = "pwe_portals_get_to_temple",
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
				"portals_get_to_temple"
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
				"portals_get_to_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_get_to_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_temple_locked",
		response = "pwe_portals_temple_locked",
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
				"portals_temple_locked"
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
				"portals_temple_locked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_locked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_temple_bell_tower",
		response = "pwe_portals_temple_bell_tower",
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
				"portals_temple_bell_tower"
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
				"portals_temple_bell_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_bell_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_find_map",
		response = "pwe_portals_find_map",
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
				"portals_find_map"
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
				"portals_find_map",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_find_map",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_help_search",
		response = "pwe_portals_help_search",
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
				"portals_help_search"
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
				"portals_help_search",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_help_search",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_the_map",
		response = "pwe_portals_the_map",
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
				"portals_the_map"
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
				"portals_the_map",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_the_map",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_temple_event",
		response = "pwe_portals_temple_event",
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
				"portals_temple_event"
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
				"portals_temple_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_follow_trail",
		response = "pwe_portals_follow_trail",
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
				"portals_follow_trail"
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
				"portals_follow_trail",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_follow_trail",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_objective_recap",
		response = "pwe_portals_objective_recap",
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
				"portals_objective_recap"
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
				"portals_objective_recap",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_objective_recap",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_pwe_castle_vista",
		response = "pwe_portals_pwe_castle_vista",
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
				"portals_castle_vista"
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
				"portals_castle_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_memory_portals",
		response = "pwe_portals_memory_portals",
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
				"portals_memory_portals"
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
				"portals_memory_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_memory_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_portal_interact_one",
		response = "pwe_portals_portal_interact_one",
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
				"portals_portal_interact_one"
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
				"portals_portal_interact_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_one",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_portal_interact_two",
		response = "pwe_portals_portal_interact_two",
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
				"portals_portal_interact_two"
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
				"portals_portal_interact_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_two",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_portal_interact_three",
		response = "pwe_portals_portal_interact_three",
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
				"portals_portal_interact_three"
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
				"portals_portal_interact_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_three",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_portal_event",
		response = "pwe_portals_portal_event",
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
				"portals_portal_event"
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
				"portals_portal_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_castle_road",
		response = "pwe_portals_castle_road",
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
				"portals_castle_road"
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
				"portals_castle_road",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_road",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_castle_gate",
		response = "pwe_portals_castle_gate",
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
				"portals_castle_gate"
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
				"portals_castle_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_map_first_clue",
		response = "pwe_portals_map_first_clue",
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
				"portals_map_first_clue"
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
				"portals_map_first_clue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_map_first_clue",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_map_second_clue",
		response = "pwe_portals_map_second_clue",
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
				"portals_map_second_clue"
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
				"portals_map_second_clue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_map_second_clue",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_secret_entrance_gate_opens",
		response = "pwe_portals_secret_entrance_gate_opens",
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
				"portals_secret_entrance_gate_opens"
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
				"portals_secret_entrance_gate_opens",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_secret_entrance_gate_opens",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_crypt_event_entering_crypt",
		response = "pwe_portals_crypt_event_entering_crypt",
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
				"portals_crypt_event_entering_crypt"
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
				"portals_crypt_event_entering_crypt",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_entering_crypt",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_crypt_event_blood",
		response = "pwe_portals_crypt_event_blood",
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
				"portals_crypt_event_blood"
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
				"portals_crypt_event_blood",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_blood",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_crypt_event_hole",
		response = "pwe_portals_crypt_event_hole",
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
				"portals_crypt_event_hole"
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
				"portals_crypt_event_hole",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_hole",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_stairs",
		response = "pwe_portals_stairs",
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
				"portals_stairs"
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
				"portals_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_crypt_exit",
		response = "pwe_portals_crypt_exit",
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
				"portals_crypt_exit"
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
				"portals_crypt_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_waystone",
		response = "pwe_portals_waystone",
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
				"portals_waystone"
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
				"portals_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_waystone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_portals_event_missing_gargoyle_heads",
		response = "pwe_portals_event_missing_gargoyle_heads",
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
				"portals_event_missing_gargoyle_heads"
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
				"portals_event_missing_gargoyle_heads",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_event_missing_gargoyle_heads",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_portals_secret_entrance_gate_opens = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_secret_entrance_gate_opens_01",
				"pwe_portals_secret_entrance_gate_opens_02",
				"pwe_portals_secret_entrance_gate_opens_03",
				"pwe_portals_secret_entrance_gate_opens_04"
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
			localization_strings = {
				"pwe_portals_secret_entrance_gate_opens_01",
				"pwe_portals_secret_entrance_gate_opens_02",
				"pwe_portals_secret_entrance_gate_opens_03",
				"pwe_portals_secret_entrance_gate_opens_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_the_map = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_the_map_01",
				"pwe_portals_the_map_02",
				"pwe_portals_the_map_03",
				"pwe_portals_the_map_04"
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
			localization_strings = {
				"pwe_portals_the_map_01",
				"pwe_portals_the_map_02",
				"pwe_portals_the_map_03",
				"pwe_portals_the_map_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_castle_gate = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_pwe_castle_gate_01",
				"pwe_portals_pwe_castle_gate_02",
				"pwe_portals_pwe_castle_gate_03",
				"pwe_portals_pwe_castle_gate_04"
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
			localization_strings = {
				"pwe_portals_pwe_castle_gate_01",
				"pwe_portals_pwe_castle_gate_02",
				"pwe_portals_pwe_castle_gate_03",
				"pwe_portals_pwe_castle_gate_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_crypt_exit = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_crypt_exit_01",
				"pwe_portals_crypt_exit_02",
				"pwe_portals_crypt_exit_03",
				"pwe_portals_crypt_exit_04"
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
			localization_strings = {
				"pwe_portals_crypt_exit_01",
				"pwe_portals_crypt_exit_02",
				"pwe_portals_crypt_exit_03",
				"pwe_portals_crypt_exit_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_temple_event = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_temple_event_01",
				"pwe_portals_temple_event_02",
				"pwe_portals_temple_event_03",
				"pwe_portals_temple_event_04"
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
			localization_strings = {
				"pwe_portals_temple_event_01",
				"pwe_portals_temple_event_02",
				"pwe_portals_temple_event_03",
				"pwe_portals_temple_event_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_map_second_clue = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_map_second_clue_01",
				"pwe_portals_map_second_clue_02",
				"pwe_portals_map_second_clue_03",
				"pwe_portals_map_second_clue_04"
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
			localization_strings = {
				"pwe_portals_map_second_clue_01",
				"pwe_portals_map_second_clue_02",
				"pwe_portals_map_second_clue_03",
				"pwe_portals_map_second_clue_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_memory_portals = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_memory_portals_01",
				"pwe_portals_memory_portals_02",
				"pwe_portals_memory_portals_03",
				"pwe_portals_memory_portals_04"
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
			localization_strings = {
				"pwe_portals_memory_portals_01",
				"pwe_portals_memory_portals_02",
				"pwe_portals_memory_portals_03",
				"pwe_portals_memory_portals_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_objective_recap = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_objective_recap_01",
				"pwe_portals_objective_recap_02",
				"pwe_portals_objective_recap_03",
				"pwe_portals_objective_recap_04"
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
			localization_strings = {
				"pwe_portals_objective_recap_01",
				"pwe_portals_objective_recap_02",
				"pwe_portals_objective_recap_03",
				"pwe_portals_objective_recap_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_portal_interact_three = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_portal_interact_three_01",
				"pwe_portals_portal_interact_three_02",
				"pwe_portals_portal_interact_three_03",
				"pwe_portals_portal_interact_three_04"
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
			localization_strings = {
				"pwe_portals_portal_interact_three_01",
				"pwe_portals_portal_interact_three_02",
				"pwe_portals_portal_interact_three_03",
				"pwe_portals_portal_interact_three_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_find_map = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_find_map_01",
				"pwe_portals_find_map_02",
				"pwe_portals_find_map_03",
				"pwe_portals_find_map_04"
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
			localization_strings = {
				"pwe_portals_find_map_01",
				"pwe_portals_find_map_02",
				"pwe_portals_find_map_03",
				"pwe_portals_find_map_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_get_to_temple = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_get_to_temple_01",
				"pwe_portals_get_to_temple_02",
				"pwe_portals_get_to_temple_03",
				"pwe_portals_get_to_temple_04"
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
			localization_strings = {
				"pwe_portals_get_to_temple_01",
				"pwe_portals_get_to_temple_02",
				"pwe_portals_get_to_temple_03",
				"pwe_portals_get_to_temple_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_find_survivors = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_find_survivors_01",
				"pwe_portals_find_survivors_02",
				"pwe_portals_find_survivors_03",
				"pwe_portals_find_survivors_04"
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
			localization_strings = {
				"pwe_portals_find_survivors_01",
				"pwe_portals_find_survivors_02",
				"pwe_portals_find_survivors_03",
				"pwe_portals_find_survivors_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_portal_event = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_portal_event_01",
				"pwe_portals_portal_event_02",
				"pwe_portals_portal_event_03",
				"pwe_portals_portal_event_04"
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
			localization_strings = {
				"pwe_portals_portal_event_01",
				"pwe_portals_portal_event_02",
				"pwe_portals_portal_event_03",
				"pwe_portals_portal_event_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_crypt_event_blood = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_crypt_event_blood_01",
				"pwe_portals_crypt_event_blood_02",
				"pwe_portals_crypt_event_blood_03",
				"pwe_portals_crypt_event_blood_04"
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
			localization_strings = {
				"pwe_portals_crypt_event_blood_01",
				"pwe_portals_crypt_event_blood_02",
				"pwe_portals_crypt_event_blood_03",
				"pwe_portals_crypt_event_blood_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_intro_line_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_portals_intro_line_c_01",
				[2.0] = "pwe_portals_intro_line_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_portals_intro_line_c_01",
				[2.0] = "pwe_portals_intro_line_c_02"
			},
			randomize_indexes = {}
		},
		pwe_portals_kidnapped_traces = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_kidnapped_traces_01",
				"pwe_portals_kidnapped_traces_02",
				"pwe_portals_kidnapped_traces_03",
				"pwe_portals_kidnapped_traces_04"
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
			localization_strings = {
				"pwe_portals_kidnapped_traces_01",
				"pwe_portals_kidnapped_traces_02",
				"pwe_portals_kidnapped_traces_03",
				"pwe_portals_kidnapped_traces_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_castle_road = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_pwe_castle_road_01",
				"pwe_portals_pwe_castle_road_02",
				"pwe_portals_pwe_castle_road_03",
				"pwe_portals_pwe_castle_road_04"
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
			localization_strings = {
				"pwe_portals_pwe_castle_road_01",
				"pwe_portals_pwe_castle_road_02",
				"pwe_portals_pwe_castle_road_03",
				"pwe_portals_pwe_castle_road_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_raid_trace = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_raid_trace_01",
				"pwe_portals_raid_trace_02",
				"pwe_portals_raid_trace_03",
				"pwe_portals_raid_trace_04"
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
			localization_strings = {
				"pwe_portals_raid_trace_01",
				"pwe_portals_raid_trace_02",
				"pwe_portals_raid_trace_03",
				"pwe_portals_raid_trace_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_map_first_clue = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_map_first_clue_01",
				"pwe_portals_map_first_clue_02",
				"pwe_portals_map_first_clue_03",
				"pwe_portals_map_first_clue_04"
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
			localization_strings = {
				"pwe_portals_map_first_clue_01",
				"pwe_portals_map_first_clue_02",
				"pwe_portals_map_first_clue_03",
				"pwe_portals_map_first_clue_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_crypt_event_entering_crypt = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_crypt_event_entering_crypt_01",
				"pwe_portals_crypt_event_entering_crypt_02",
				"pwe_portals_crypt_event_entering_crypt_03",
				"pwe_portals_crypt_event_entering_crypt_04"
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
			localization_strings = {
				"pwe_portals_crypt_event_entering_crypt_01",
				"pwe_portals_crypt_event_entering_crypt_02",
				"pwe_portals_crypt_event_entering_crypt_03",
				"pwe_portals_crypt_event_entering_crypt_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_help_search = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_help_search_01",
				"pwe_portals_help_search_02",
				"pwe_portals_help_search_03",
				"pwe_portals_help_search_04"
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
			localization_strings = {
				"pwe_portals_help_search_01",
				"pwe_portals_help_search_02",
				"pwe_portals_help_search_03",
				"pwe_portals_help_search_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_enter_village = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_enter_village_01",
				"pwe_portals_enter_village_02",
				"pwe_portals_enter_village_03",
				"pwe_portals_enter_village_04"
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
			localization_strings = {
				"pwe_portals_enter_village_01",
				"pwe_portals_enter_village_02",
				"pwe_portals_enter_village_03",
				"pwe_portals_enter_village_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_follow_trail = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_follow_trail_01",
				"pwe_portals_follow_trail_02",
				"pwe_portals_follow_trail_03",
				"pwe_portals_follow_trail_04"
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
			localization_strings = {
				"pwe_portals_follow_trail_01",
				"pwe_portals_follow_trail_02",
				"pwe_portals_follow_trail_03",
				"pwe_portals_follow_trail_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_intro_line_a = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_portals_intro_line_a_01",
				[2.0] = "pwe_portals_intro_line_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_portals_intro_line_a_01",
				[2.0] = "pwe_portals_intro_line_a_02"
			},
			randomize_indexes = {}
		},
		pwe_portals_temple_bell_tower = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_temple_bell_tower_01",
				"pwe_portals_temple_bell_tower_02",
				"pwe_portals_temple_bell_tower_03",
				"pwe_portals_temple_bell_tower_04"
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
			localization_strings = {
				"pwe_portals_temple_bell_tower_01",
				"pwe_portals_temple_bell_tower_02",
				"pwe_portals_temple_bell_tower_03",
				"pwe_portals_temple_bell_tower_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_portal_interact_one = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_portal_interact_one_01",
				"pwe_portals_portal_interact_one_02",
				"pwe_portals_portal_interact_one_03",
				"pwe_portals_portal_interact_one_04"
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
			localization_strings = {
				"pwe_portals_portal_interact_one_01",
				"pwe_portals_portal_interact_one_02",
				"pwe_portals_portal_interact_one_03",
				"pwe_portals_portal_interact_one_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_event_missing_gargoyle_heads = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_event_missing_gargoyle_heads_01",
				"pwe_portals_event_missing_gargoyle_heads_02",
				"pwe_portals_event_missing_gargoyle_heads_03",
				"pwe_portals_event_missing_gargoyle_heads_04"
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
			localization_strings = {
				"pwe_portals_event_missing_gargoyle_heads_01",
				"pwe_portals_event_missing_gargoyle_heads_02",
				"pwe_portals_event_missing_gargoyle_heads_03",
				"pwe_portals_event_missing_gargoyle_heads_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_pwe_castle_vista = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_pwe_castle_vista_01",
				"pwe_portals_pwe_castle_vista_02",
				"pwe_portals_pwe_castle_vista_03",
				"pwe_portals_pwe_castle_vista_04"
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
			localization_strings = {
				"pwe_portals_pwe_castle_vista_01",
				"pwe_portals_pwe_castle_vista_02",
				"pwe_portals_pwe_castle_vista_03",
				"pwe_portals_pwe_castle_vista_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_waystone = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_waystone_01",
				"pwe_portals_waystone_02",
				"pwe_portals_waystone_03",
				"pwe_portals_waystone_04"
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
			localization_strings = {
				"pwe_portals_waystone_01",
				"pwe_portals_waystone_02",
				"pwe_portals_waystone_03",
				"pwe_portals_waystone_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_stairs = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_stairs_01",
				"pwe_portals_stairs_02",
				"pwe_portals_stairs_03",
				"pwe_portals_stairs_04"
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
			localization_strings = {
				"pwe_portals_stairs_01",
				"pwe_portals_stairs_02",
				"pwe_portals_stairs_03",
				"pwe_portals_stairs_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_temple_locked = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_temple_locked_01",
				"pwe_portals_temple_locked_02",
				"pwe_portals_temple_locked_03",
				"pwe_portals_temple_locked_04"
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
			localization_strings = {
				"pwe_portals_temple_locked_01",
				"pwe_portals_temple_locked_02",
				"pwe_portals_temple_locked_03",
				"pwe_portals_temple_locked_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_portal_interact_two = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_portal_interact_two_01",
				"pwe_portals_portal_interact_two_02",
				"pwe_portals_portal_interact_two_03",
				"pwe_portals_portal_interact_two_04"
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
			localization_strings = {
				"pwe_portals_portal_interact_two_01",
				"pwe_portals_portal_interact_two_02",
				"pwe_portals_portal_interact_two_03",
				"pwe_portals_portal_interact_two_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_crypt_event_hole = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_crypt_event_hole_01",
				"pwe_portals_crypt_event_hole_02",
				"pwe_portals_crypt_event_hole_03",
				"pwe_portals_crypt_event_hole_04"
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
			localization_strings = {
				"pwe_portals_crypt_event_hole_01",
				"pwe_portals_crypt_event_hole_02",
				"pwe_portals_crypt_event_hole_03",
				"pwe_portals_crypt_event_hole_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_everyone_gone = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pwe_portals_everyone_gone_01",
				"pwe_portals_everyone_gone_02",
				"pwe_portals_everyone_gone_03",
				"pwe_portals_everyone_gone_04"
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
			localization_strings = {
				"pwe_portals_everyone_gone_01",
				"pwe_portals_everyone_gone_02",
				"pwe_portals_everyone_gone_03",
				"pwe_portals_everyone_gone_04"
			},
			randomize_indexes = {}
		},
		pwe_portals_intro_line_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_portals",
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pwe_portals_intro_line_b_01",
				[2.0] = "pwe_portals_intro_line_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_portals_intro_line_b_01",
				[2.0] = "pwe_portals_intro_line_b_02"
			},
			randomize_indexes = {}
		}
	})
end
