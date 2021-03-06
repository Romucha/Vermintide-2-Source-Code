return function ()
	define_rule({
		name = "pes_level_skittergate_elevator_01",
		response = "pes_level_skittergate_elevator_01",
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
				"skittergate_elevator"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_crater_01",
		response = "pes_level_skittergate_crater_01",
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
				"skittergate_crater"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_crater",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_crater",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_cave_entrance_01",
		response = "pes_level_skittergate_cave_entrance_01",
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
				"skittergate_cave_entrance"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_cave_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_cave_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_skittergate_found_01",
		response = "pes_level_skittergate_skittergate_found_01",
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
				"skittergate_skittergate_found"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_skittergate_found",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_skittergate_found",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_vacated_area_01",
		response = "pes_level_skittergate_vacated_area_01",
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
				"skittergate_vacated_area"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_vacated_area",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_vacated_area",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_activate_gate_01",
		response = "pes_level_skittergate_activate_gate_01",
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
				"skittergate_activate_gate_helmgart"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_activate_gate_helmgart",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_activate_gate_helmgart",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_gate_activated_01",
		response = "pes_level_skittergate_gate_activated_01",
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
				"skittergate_gate_activated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_gate_activated",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_gate_activated",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_enter_gate_01",
		response = "pes_level_skittergate_enter_gate_01",
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
				"skittergate_enter_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_enter_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_enter_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_arrive_01",
		response = "pes_level_skittergate_arrive_01",
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
				"skittergate_arrive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_arrive",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_arrive",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_welcome_to_norsca_01",
		response = "pes_level_skittergate_welcome_to_norsca_01",
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
				"skittergate_welcome_to_norsca"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_welcome_to_norsca",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_welcome_to_norsca",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_start_up_gate_01",
		response = "pes_level_skittergate_start_up_gate_01",
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
				"skittergate_start_up_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_start_up_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_start_up_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_vista_01",
		response = "pes_level_skittergate_vista_01",
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
				"skittergate_vista"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_contol_panel_01",
		response = "pes_level_skittergate_contol_panel_01",
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
				"skittergate_contol_panel"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_contol_panel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_contol_panel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_spotting_docks_01",
		response = "pes_level_skittergate_spotting_docks_01",
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
				"skittergate_spotting_docks"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_spotting_docks",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_spotting_docks",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_ships_01",
		response = "pes_level_skittergate_ships_01",
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
				"skittergate_ships"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"skittergate_ships",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_ships",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_docks_gate_01",
		response = "pes_level_skittergate_docks_gate_01",
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
				"skittergate_docks_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_docks_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_docks_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_searching_gatekeeper_01",
		response = "pes_level_skittergate_searching_gatekeeper_01",
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
				"skittergate_searching_gatekeeper"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_searching_gatekeeper",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_searching_gatekeeper",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_gatekeeper_appear_01",
		response = "pes_level_skittergate_gatekeeper_appear_01",
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
				"skittergate_gatekeeper_appear"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_gatekeeper_appear",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_gatekeeper_appear",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_gatekeeper_death_01",
		response = "pes_level_skittergate_gatekeeper_death_01",
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
				"skittergate_gatekeeper_death"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_gatekeeper_death",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_gatekeeper_death",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_get_back_to_gate_01",
		response = "pes_level_skittergate_get_back_to_gate_01",
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
				"skittergate_get_back_to_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_get_back_to_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_get_back_to_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_get_down_to_the_cooling_01",
		response = "pes_level_skittergate_get_down_to_the_cooling_01",
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
				"skittergate_get_down_to_the_cooling"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_get_down_to_the_cooling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_get_down_to_the_cooling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_sabotage_cooling_01",
		response = "pes_level_skittergate_sabotage_cooling_01",
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
				"skittergate_sabotage_cooling"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_sabotage_cooling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_sabotage_cooling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_run_for_the_gate_01",
		response = "pes_level_skittergate_run_for_the_gate_01",
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
				"skittergate_run_for_the_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_run_for_the_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_run_for_the_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_through_the_gate",
		response = "pes_level_skittergate_through_the_gate",
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
				"skittergate_through the gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_through the gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_through the gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_back_home_01",
		response = "pes_level_skittergate_back_home_01",
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
				"skittergate_back_home"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_back_home",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_back_home",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_BOOM_01",
		response = "pes_level_skittergate_BOOM_01",
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
				"skittergate_BOOM"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_BOOM",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_BOOM",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_skittergate_intro_a",
		response = "pes_skittergate_intro_a",
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
				"skittergate_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pes_skittergate_intro_b",
		response = "pes_skittergate_intro_b",
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
				"skittergate_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_skittergate_intro_c",
		response = "pes_skittergate_intro_c",
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
				"skittergate_intro_c"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"skittergate_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_level_skittergate_rasknitt_gate_reply",
		name = "pes_level_skittergate_rasknitt_gate_reply",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"egs_level_skittergate_rasknitt_calls_mount_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_level_skittergate_rasknitt_dismounted_one",
		name = "pes_level_skittergate_rasknitt_dismounted_one",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"egs_level_skittergate_rasknitt_dismounted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_rasknitt_death_rattler_invulnerable",
		response = "pes_level_skittergate_rasknitt_death_rattler_invulnerable",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"egs_level_skittergate_rasknitt_on_stormfiend"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"rattler_invulnerable",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"rattler_invulnerable",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_rasknitt_interrupt_and_focus",
		response = "pes_level_skittergate_rasknitt_interrupt_and_focus",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"egs_level_skittergate_teleport_away"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"interrupt_and_focus",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"interrupt_and_focus",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_rasknitt_stormfiend_dead",
		response = "pes_level_skittergate_rasknitt_stormfiend_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_stormfiend_boss"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"rasknitt_stormfiend_dead",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"rasknitt_stormfiend_dead",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_level_skittergate_activate_gate_01a",
		response = "pes_level_skittergate_activate_gate_01a",
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
				"skittergate_activate_gate_norsca"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"level_skittergate_activate_gate_norsca",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_activate_gate_norsca",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pes_level_skittergate_spotting_docks_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_spotting_docks_01",
				"pes_level_skittergate_spotting_docks_02",
				"pes_level_skittergate_spotting_docks_03",
				"pes_level_skittergate_spotting_docks_04"
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
				1.7991042137146,
				1.93649995327,
				1.868124961853,
				1.987625002861
			},
			localization_strings = {
				"pes_level_skittergate_spotting_docks_01",
				"pes_level_skittergate_spotting_docks_02",
				"pes_level_skittergate_spotting_docks_03",
				"pes_level_skittergate_spotting_docks_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_run_for_the_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_run_for_the_gate_01",
				"pes_level_skittergate_run_for_the_gate_02",
				"pes_level_skittergate_run_for_the_gate_03",
				"pes_level_skittergate_run_for_the_gate_04"
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
				4.581666469574,
				5.0454168319702,
				5.8103542327881,
				3.5176665782928
			},
			localization_strings = {
				"pes_level_skittergate_run_for_the_gate_01",
				"pes_level_skittergate_run_for_the_gate_02",
				"pes_level_skittergate_run_for_the_gate_03",
				"pes_level_skittergate_run_for_the_gate_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_contol_panel_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_contol_panel_01",
				"pes_level_skittergate_contol_panel_02",
				"pes_level_skittergate_contol_panel_03",
				"pes_level_skittergate_contol_panel_04"
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
				2.4373750686645,
				2.139687538147,
				4.3291039466858,
				4.2793960571289
			},
			localization_strings = {
				"pes_level_skittergate_contol_panel_01",
				"pes_level_skittergate_contol_panel_02",
				"pes_level_skittergate_contol_panel_03",
				"pes_level_skittergate_contol_panel_04"
			},
			randomize_indexes = {}
		},
		pes_skittergate_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pes_skittergate_intro_b_01",
				[2.0] = "pes_skittergate_intro_b_02"
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
				[1.0] = 5.0802083015442,
				[2.0] = 6.542396068573
			},
			localization_strings = {
				[1.0] = "pes_skittergate_intro_b_01",
				[2.0] = "pes_skittergate_intro_b_02"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_rasknitt_interrupt_and_focus = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_rasknitt_interrupt_and_focus_01",
				"pes_level_skittergate_rasknitt_interrupt_and_focus_02",
				"pes_level_skittergate_rasknitt_interrupt_and_focus_03",
				"pes_level_skittergate_rasknitt_interrupt_and_focus_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				4.6574373245239,
				4.8136458396912,
				5.3481664657593,
				2.798299074173
			},
			localization_strings = {
				"pes_level_skittergate_rasknitt_interrupt_and_focus_01",
				"pes_level_skittergate_rasknitt_interrupt_and_focus_02",
				"pes_level_skittergate_rasknitt_interrupt_and_focus_03",
				"pes_level_skittergate_rasknitt_interrupt_and_focus_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_arrive_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_arrive_01",
				"pes_level_skittergate_arrive_02",
				"pes_level_skittergate_arrive_03",
				"pes_level_skittergate_arrive_04"
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
				4.2493543624878,
				6.9627914428711,
				6.9086456298828,
				6.7410206794739
			},
			localization_strings = {
				"pes_level_skittergate_arrive_01",
				"pes_level_skittergate_arrive_02",
				"pes_level_skittergate_arrive_03",
				"pes_level_skittergate_arrive_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_cave_entrance_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_cave_entrance_01",
				"pes_level_skittergate_cave_entrance_02",
				"pes_level_skittergate_cave_entrance_03",
				"pes_level_skittergate_cave_entrance_04"
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
				5.8038539886475,
				6.0452499389648,
				6.0810832977295,
				8.1394376754761
			},
			localization_strings = {
				"pes_level_skittergate_cave_entrance_01",
				"pes_level_skittergate_cave_entrance_02",
				"pes_level_skittergate_cave_entrance_03",
				"pes_level_skittergate_cave_entrance_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_through_the_gate = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_through_the_gate_01",
				"pes_level_skittergate_through_the_gate_02",
				"pes_level_skittergate_through_the_gate_03",
				"pes_level_skittergate_through_the_gate_04"
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
				5.7315831184387,
				5.7245001792908,
				3.4944584369659,
				4.8563332557678
			},
			localization_strings = {
				"pes_level_skittergate_through_the_gate_01",
				"pes_level_skittergate_through_the_gate_02",
				"pes_level_skittergate_through_the_gate_03",
				"pes_level_skittergate_through_the_gate_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_vacated_area_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_vacated_area_01",
				"pes_level_skittergate_vacated_area_02",
				"pes_level_skittergate_vacated_area_03",
				"pes_level_skittergate_vacated_area_04"
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
				7.0909790992737,
				3.2482917308807,
				5.0854997634888,
				7.1284165382385
			},
			localization_strings = {
				"pes_level_skittergate_vacated_area_01",
				"pes_level_skittergate_vacated_area_02",
				"pes_level_skittergate_vacated_area_03",
				"pes_level_skittergate_vacated_area_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_elevator_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_elevator_01",
				"pes_level_skittergate_elevator_02",
				"pes_level_skittergate_elevator_03",
				"pes_level_skittergate_elevator_04"
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
				2.4436666965485,
				2.7229583263397,
				2.3743541240692,
				2.7011249065399
			},
			localization_strings = {
				"pes_level_skittergate_elevator_01",
				"pes_level_skittergate_elevator_02",
				"pes_level_skittergate_elevator_03",
				"pes_level_skittergate_elevator_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_gate_activated_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_gate_activated_01",
				"pes_level_skittergate_gate_activated_02",
				"pes_level_skittergate_gate_activated_03",
				"pes_level_skittergate_gate_activated_04"
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
				1.2578542232513,
				1.3960000276566,
				4.2662291526794,
				7.2976040840149
			},
			localization_strings = {
				"pes_level_skittergate_gate_activated_01",
				"pes_level_skittergate_gate_activated_02",
				"pes_level_skittergate_gate_activated_03",
				"pes_level_skittergate_gate_activated_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_crater_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_crater_01",
				"pes_level_skittergate_crater_02",
				"pes_level_skittergate_crater_03",
				"pes_level_skittergate_crater_04"
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
				5.8948125839233,
				4.8223543167114,
				5.9200000762939,
				4.9219164848328
			},
			localization_strings = {
				"pes_level_skittergate_crater_01",
				"pes_level_skittergate_crater_02",
				"pes_level_skittergate_crater_03",
				"pes_level_skittergate_crater_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_get_down_to_the_cooling_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_get_down_to_the_cooling_01",
				"pes_level_skittergate_get_down_to_the_cooling_02",
				"pes_level_skittergate_get_down_to_the_cooling_03",
				"pes_level_skittergate_get_down_to_the_cooling_04"
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
				6.8621249198914,
				9.5280208587647,
				6.0271248817444,
				7.6088123321533
			},
			localization_strings = {
				"pes_level_skittergate_get_down_to_the_cooling_01",
				"pes_level_skittergate_get_down_to_the_cooling_02",
				"pes_level_skittergate_get_down_to_the_cooling_03",
				"pes_level_skittergate_get_down_to_the_cooling_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_vista_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_vista_01",
				"pes_level_skittergate_vista_02",
				"pes_level_skittergate_vista_03",
				"pes_level_skittergate_vista_04"
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
				7,
				6.2232084274292,
				6.7282085418701,
				7.1179585456848
			},
			localization_strings = {
				"pes_level_skittergate_vista_01",
				"pes_level_skittergate_vista_02",
				"pes_level_skittergate_vista_03",
				"pes_level_skittergate_vista_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_rasknitt_gate_reply = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "boss_reaction_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pes_level_skittergate_rasknitt_gate_reply_01",
				[2.0] = "pes_level_skittergate_rasknitt_gate_reply_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 12.306937217712,
				[2.0] = 18.573291778564
			},
			localization_strings = {
				[1.0] = "pes_level_skittergate_rasknitt_gate_reply_01",
				[2.0] = "pes_level_skittergate_rasknitt_gate_reply_02"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_rasknitt_stormfiend_dead = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pes_level_skittergate_rasknitt_stormfiend_dead_01",
				[2.0] = "pes_level_skittergate_rasknitt_stormfiend_dead_02"
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
				[1.0] = 3.4039423465729,
				[2.0] = 4.8903956413269
			},
			localization_strings = {
				[1.0] = "pes_level_skittergate_rasknitt_stormfiend_dead_01",
				[2.0] = "pes_level_skittergate_rasknitt_stormfiend_dead_02"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_skittergate_found_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_skittergate_found_01",
				"pes_level_skittergate_skittergate_found_02",
				"pes_level_skittergate_skittergate_found_03",
				"pes_level_skittergate_skittergate_found_04"
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
				8.7996664047241,
				5.1175622940064,
				8.2447710037231,
				3.7657499313355
			},
			localization_strings = {
				"pes_level_skittergate_skittergate_found_01",
				"pes_level_skittergate_skittergate_found_02",
				"pes_level_skittergate_skittergate_found_03",
				"pes_level_skittergate_skittergate_found_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_welcome_to_norsca_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_welcome_to_norsca_01",
				"pes_level_skittergate_welcome_to_norsca_02",
				"pes_level_skittergate_welcome_to_norsca_03",
				"pes_level_skittergate_welcome_to_norsca_04"
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
				5.1255831718445,
				3.5598332881927,
				3.984833240509,
				4.840416431427
			},
			localization_strings = {
				"pes_level_skittergate_welcome_to_norsca_01",
				"pes_level_skittergate_welcome_to_norsca_02",
				"pes_level_skittergate_welcome_to_norsca_03",
				"pes_level_skittergate_welcome_to_norsca_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_back_home_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_back_home_01",
				"pes_level_skittergate_back_home_02",
				"pes_level_skittergate_back_home_03",
				"pes_level_skittergate_back_home_04"
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
				7.8205833435059,
				7.8987083435059,
				8.119062423706,
				6.7669582366943
			},
			localization_strings = {
				"pes_level_skittergate_back_home_01",
				"pes_level_skittergate_back_home_02",
				"pes_level_skittergate_back_home_03",
				"pes_level_skittergate_back_home_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_BOOM_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_BOOM_01",
				"pes_level_skittergate_BOOM_02",
				"pes_level_skittergate_BOOM_03",
				"pes_level_skittergate_BOOM_04"
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
				2.5648748874664,
				2.2272291183472,
				3.041895866394,
				2.2611875534058
			},
			localization_strings = {
				"pes_level_skittergate_BOOM_01",
				"pes_level_skittergate_BOOM_02",
				"pes_level_skittergate_BOOM_03",
				"pes_level_skittergate_BOOM_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_get_back_to_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_get_back_to_gate_01",
				"pes_level_skittergate_get_back_to_gate_02",
				"pes_level_skittergate_get_back_to_gate_03",
				"pes_level_skittergate_get_back_to_gate_04"
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
				4.215437412262,
				5.5808124542236,
				3.4525833129883,
				7.1918334960938
			},
			localization_strings = {
				"pes_level_skittergate_get_back_to_gate_01",
				"pes_level_skittergate_get_back_to_gate_02",
				"pes_level_skittergate_get_back_to_gate_03",
				"pes_level_skittergate_get_back_to_gate_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_searching_gatekeeper_01 = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pes_level_skittergate_searching_gatekeeper_02",
				"pes_level_skittergate_searching_gatekeeper_03",
				"pes_level_skittergate_searching_gatekeeper_04"
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
				5.5653748512268,
				5.6082706451416,
				8.858229637146
			},
			localization_strings = {
				"pes_level_skittergate_searching_gatekeeper_02",
				"pes_level_skittergate_searching_gatekeeper_03",
				"pes_level_skittergate_searching_gatekeeper_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_docks_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_docks_gate_01",
				"pes_level_skittergate_docks_gate_02",
				"pes_level_skittergate_docks_gate_03",
				"pes_level_skittergate_docks_gate_04"
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
				1.752312541008,
				1.5260624885559,
				2.2672290802002,
				2.2885208129883
			},
			localization_strings = {
				"pes_level_skittergate_docks_gate_01",
				"pes_level_skittergate_docks_gate_02",
				"pes_level_skittergate_docks_gate_03",
				"pes_level_skittergate_docks_gate_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_activate_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_activate_gate_01",
				"pes_level_skittergate_activate_gate_02",
				"pes_level_skittergate_activate_gate_03",
				"pes_level_skittergate_activate_gate_04"
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
				4.4832916259766,
				2.0632290840149,
				2.0641875267029,
				5.0130834579468
			},
			localization_strings = {
				"pes_level_skittergate_activate_gate_01",
				"pes_level_skittergate_activate_gate_02",
				"pes_level_skittergate_activate_gate_03",
				"pes_level_skittergate_activate_gate_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_activate_gate_01a = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_activate_gate_01a",
				"pes_level_skittergate_activate_gate_02a",
				"pes_level_skittergate_activate_gate_03a",
				"pes_level_skittergate_activate_gate_04a"
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
				2.7992916107178,
				2.7801249027252,
				1.9106458425522,
				4.055145740509
			},
			localization_strings = {
				"pes_level_skittergate_activate_gate_01a",
				"pes_level_skittergate_activate_gate_02a",
				"pes_level_skittergate_activate_gate_03a",
				"pes_level_skittergate_activate_gate_04a"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_rasknitt_death_rattler_invulnerable = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_01",
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_02",
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_03",
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				1.8351442813873,
				2.9949791431427,
				1.4763073921204,
				2.0460455417633
			},
			localization_strings = {
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_01",
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_02",
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_03",
				"pes_level_skittergate_rasknitt_death_rattler_invulnerable_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_start_up_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_start_up_gate_01",
				"pes_level_skittergate_start_up_gate_02",
				"pes_level_skittergate_start_up_gate_03",
				"pes_level_skittergate_start_up_gate_04"
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
				5.3534374237061,
				5.2471876144409,
				4.6067500114441,
				7.0168123245239
			},
			localization_strings = {
				"pes_level_skittergate_start_up_gate_01",
				"pes_level_skittergate_start_up_gate_02",
				"pes_level_skittergate_start_up_gate_03",
				"pes_level_skittergate_start_up_gate_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_rasknitt_dismounted_one = {
			sound_events_n = 5,
			face_animations_n = 5,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 5,
			sound_events = {
				"pes_level_skittergate_rasknitt_dismounted_one_01",
				"pes_level_skittergate_rasknitt_dismounted_one_02",
				"pes_level_skittergate_rasknitt_dismounted_one_03",
				"pes_level_skittergate_rasknitt_dismounted_one_04",
				"pes_level_skittergate_rasknitt_dismounted_one_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				5.0854997634888,
				3.1330208778381,
				1.7418972253799,
				2.6458299160004,
				2.1754553318024
			},
			localization_strings = {
				"pes_level_skittergate_rasknitt_dismounted_one_01",
				"pes_level_skittergate_rasknitt_dismounted_one_02",
				"pes_level_skittergate_rasknitt_dismounted_one_03",
				"pes_level_skittergate_rasknitt_dismounted_one_04",
				"pes_level_skittergate_rasknitt_dismounted_one_05"
			},
			randomize_indexes = {}
		},
		pes_skittergate_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pes_skittergate_intro_c_01",
				[2.0] = "pes_skittergate_intro_c_02"
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
				[1.0] = 8.1386461257935,
				[2.0] = 6.9005832672119
			},
			localization_strings = {
				[1.0] = "pes_skittergate_intro_c_01",
				[2.0] = "pes_skittergate_intro_c_02"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_ships_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_ships_01",
				"pes_level_skittergate_ships_02",
				"pes_level_skittergate_ships_03",
				"pes_level_skittergate_ships_04"
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
				4.6101460456848,
				5.9388127326965,
				4.6111459732056,
				5.5834374427795
			},
			localization_strings = {
				"pes_level_skittergate_ships_01",
				"pes_level_skittergate_ships_02",
				"pes_level_skittergate_ships_03",
				"pes_level_skittergate_ships_04"
			},
			randomize_indexes = {}
		},
		pes_skittergate_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pes_skittergate_intro_a_01",
				[2.0] = "pes_skittergate_intro_a_02"
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
				[1.0] = 10.730020523071,
				[2.0] = 5.8164167404175
			},
			localization_strings = {
				[1.0] = "pes_skittergate_intro_a_01",
				[2.0] = "pes_skittergate_intro_a_02"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_enter_gate_01 = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pes_level_skittergate_enter_gate_01",
				"pes_level_skittergate_enter_gate_02",
				"pes_level_skittergate_enter_gate_03"
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
				6.757791519165,
				6.6448540687561,
				9.9105625152588
			},
			localization_strings = {
				"pes_level_skittergate_enter_gate_01",
				"pes_level_skittergate_enter_gate_02",
				"pes_level_skittergate_enter_gate_03"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_gatekeeper_death_01 = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pes_level_skittergate_gatekeeper_death_01",
				[2.0] = "pes_level_skittergate_gatekeeper_death_02"
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
				[1.0] = 7.1191458702087,
				[2.0] = 10.024333000183
			},
			localization_strings = {
				[1.0] = "pes_level_skittergate_gatekeeper_death_01",
				[2.0] = "pes_level_skittergate_gatekeeper_death_02"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_gatekeeper_appear_01 = {
			sound_events_n = 3,
			face_animations_n = 3,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 3,
			sound_events = {
				"pes_level_skittergate_gatekeeper_appear_01",
				"pes_level_skittergate_gatekeeper_appear_03",
				"pes_level_skittergate_gatekeeper_appear_04"
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
				9.7801876068115,
				9.6544370651245,
				7.6788749694824
			},
			localization_strings = {
				"pes_level_skittergate_gatekeeper_appear_01",
				"pes_level_skittergate_gatekeeper_appear_03",
				"pes_level_skittergate_gatekeeper_appear_04"
			},
			randomize_indexes = {}
		},
		pes_level_skittergate_sabotage_cooling_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "empire_soldier_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pes_level_skittergate_sabotage_cooling_01",
				"pes_level_skittergate_sabotage_cooling_02",
				"pes_level_skittergate_sabotage_cooling_03",
				"pes_level_skittergate_sabotage_cooling_04"
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
				4.489812374115,
				4.3012709617615,
				3.217916727066,
				3.8402917385101
			},
			localization_strings = {
				"pes_level_skittergate_sabotage_cooling_01",
				"pes_level_skittergate_sabotage_cooling_02",
				"pes_level_skittergate_sabotage_cooling_03",
				"pes_level_skittergate_sabotage_cooling_04"
			},
			randomize_indexes = {}
		}
	})
end
