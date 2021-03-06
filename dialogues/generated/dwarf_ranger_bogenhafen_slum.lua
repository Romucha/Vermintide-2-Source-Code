return function ()
	define_rule({
		name = "pdr_level_bogenhafen_slum_slum",
		response = "pdr_level_bogenhafen_slum_slum",
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
				"level_bogenhafen_slum_slum"
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
				"level_bogenhafen_slum_slum",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_slum",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_slum",
		response = "pdr_ib_level_bogenhafen_slum_slum",
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
				"level_bogenhafen_slum_slum"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_slum",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_slum",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_sl_level_bogenhafen_slum_slum",
		response = "pdr_sl_level_bogenhafen_slum_slum",
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
				"level_bogenhafen_slum_slum"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_slayer"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_slum",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_slum",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_the_58",
		response = "pdr_level_bogenhafen_slum_the_58",
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
				"level_bogenhafen_slum_the_58"
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
				"level_bogenhafen_slum_the_58",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_the_58",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_river",
		response = "pdr_level_bogenhafen_slum_river",
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
				"level_bogenhafen_slum_river"
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
				"level_bogenhafen_slum_river",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_river",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib level_bogenhafen_slum_river",
		response = "pdr_ib level_bogenhafen_slum_river",
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
				"level_bogenhafen_slum_river"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_river",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_river",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_squalor",
		response = "pdr_level_bogenhafen_slum_squalor",
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
				"level_bogenhafen_slum_squalor"
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
				"level_bogenhafen_slum_squalor",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_squalor",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_blackfire",
		response = "pdr_level_bogenhafen_slum_blackfire",
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
				"pit_blackfire"
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
				"pit_blackfire",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pit_blackfire",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_blackfire",
		response = "pdr_ib_level_bogenhafen_slum_blackfire",
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
				"pit_blackfire"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"pit_blackfire",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pit_blackfire",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_gang",
		response = "pdr_level_bogenhafen_slum_gang",
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
				"level_bogenhafen_slum_gang"
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
				"level_bogenhafen_slum_gang",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_gang",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_sl_level_bogenhafen_slum_gang",
		response = "pdr_sl_level_bogenhafen_slum_gang",
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
				"level_bogenhafen_slum_gang"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_slayer"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_gang",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_gang",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_find_hideout",
		response = "pdr_level_bogenhafen_slum_find_hideout",
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
				"level_bogenhafen_slum_find_hideout"
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
				"level_bogenhafen_slum_find_hideout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_find_hideout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_find_hideout",
		response = "pdr_ib_level_bogenhafen_slum_find_hideout",
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
				"level_bogenhafen_slum_find_hideout"
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
				"user_context",
				"player_career",
				OP.EQ,
				"bw_unchained"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_find_hideout",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_find_hideout",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_too_quiet",
		response = "pdr_level_bogenhafen_slum_too_quiet",
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
				"level_bogenhafen_slum_too_quiet"
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
				"level_bogenhafen_slum_too_quiet",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_too_quiet",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_stolen_goods",
		response = "pdr_level_bogenhafen_slum_stolen_goods",
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
				"level_bogenhafen_slum_stolen_goods"
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
				"level_bogenhafen_slum_stolen_goods",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_stolen_goods",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_foul_air",
		response = "pdr_level_bogenhafen_slum_foul_air",
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
				"level_bogenhafen_slum_foul_air"
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
				"level_bogenhafen_slum_foul_air",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_foul_air",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_foul_air",
		response = "pdr_ib_level_bogenhafen_slum_foul_air",
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
				"level_bogenhafen_slum_foul_air"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_foul_air",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_foul_air",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_ambush",
		response = "pdr_level_bogenhafen_slum_ambush",
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
				"level_bogenhafen_slum_ambush"
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
				"level_bogenhafen_slum_ambush",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_ambush",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_sl_level_bogenhafen_slum_ambush",
		response = "pdr_sl_level_bogenhafen_slum_ambush",
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
				"level_bogenhafen_slum_ambush"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_slayer"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_ambush",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_ambush",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_ambush",
		response = "pdr_ib_level_bogenhafen_slum_ambush",
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
				"level_bogenhafen_slum_ambush"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_ambush",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_ambush",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_fortify_prep",
		response = "pdr_level_bogenhafen_slum_fortify_prep",
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
				"level_bogenhafen_slum_fortify_prep"
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
				"level_bogenhafen_slum_fortify_prep",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_fortify_prep",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_fortify_prep",
		response = "pdr_ib_level_bogenhafen_slum_fortify_prep",
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
				"level_bogenhafen_slum_fortify_prep"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_fortify_prep",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_fortify_prep",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_fortify",
		response = "pdr_level_bogenhafen_slum_fortify",
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
				"level_bogenhafen_slum_fortify"
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
				"level_bogenhafen_slum_fortify",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_fortify",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_sl_level_bogenhafen_slum_fortify",
		response = "pdr_sl_level_bogenhafen_slum_fortify",
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
				"level_bogenhafen_slum_fortify"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_slayer"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_fortify",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_fortify",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_search",
		response = "pdr_level_bogenhafen_slum_search",
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
				"level_bogenhafen_slum_search"
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
				"level_bogenhafen_slum_search",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_search",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_tainted_food",
		response = "pdr_level_bogenhafen_slum_tainted_food",
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
				"level_bogenhafen_slum_tainted_food"
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
				"level_bogenhafen_slum_tainted_food",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_tainted_food",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_tainted_food",
		response = "pdr_ib_level_bogenhafen_slum_tainted_food",
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
				"level_bogenhafen_slum_tainted_food"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_tainted_food",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_tainted_food",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_noble_food",
		response = "pdr_level_bogenhafen_slum_noble_food",
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
				"level_bogenhafen_slum_noble_food"
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
				"level_bogenhafen_slum_noble_food",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_noble_food",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_burn_food",
		response = "pdr_level_bogenhafen_slum_burn_food",
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
				"level_bogenhafen_slum_burn_food"
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
				"level_bogenhafen_slum_burn_food",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_burn_food",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_cannon",
		response = "pdr_level_bogenhafen_slum_cannon",
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
				"level_bogenhafen_slum_cannon"
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
				"level_bogenhafen_slum_cannon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_cannon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_ib_level_bogenhafen_slum_cannon",
		response = "pdr_ib_level_bogenhafen_slum_cannon",
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
				"level_bogenhafen_slum_cannon"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_cannon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_cannon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_noisy_exit",
		response = "pdr_level_bogenhafen_slum_noisy_exit",
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
				"level_bogenhafen_slum_noisy_exit"
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
				"level_bogenhafen_slum_noisy_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_noisy_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_sl_level_bogenhafen_slum_noisy_exit",
		response = "pdr_sl_level_bogenhafen_slum_noisy_exit",
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
				"level_bogenhafen_slum_noisy_exit"
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
				"user_context",
				"player_career",
				OP.EQ,
				"dr_slayer"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_noisy_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_noisy_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_escape",
		response = "pdr_level_bogenhafen_slum_escape",
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
				"level_bogenhafen_slum_escape"
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
				"level_bogenhafen_slum_escape",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_escape",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_the_wall",
		response = "pdr_level_bogenhafen_slum_the_wall",
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
				"pdr_level_bogenhafen_slum_the_wall"
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
				"pdr_level_bogenhafen_slum_the_wall",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pdr_level_bogenhafen_slum_the_wall",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_end",
		response = "pdr_level_bogenhafen_slum_end",
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
				"level_bogenhafen_slum_end"
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
				"level_bogenhafen_slum_end",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_end",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_intro_a",
		response = "pdr_level_bogenhafen_slum_intro_a",
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
				"level_bogenhafen_slum_intro_a"
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
				"level_bogenhafen_slum_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_intro_b",
		response = "pdr_level_bogenhafen_slum_intro_b",
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
				"level_bogenhafen_slum_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_level_bogenhafen_slum_intro_c",
		response = "pdr_level_bogenhafen_slum_intro_c",
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
				"level_bogenhafen_slum_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"level_bogenhafen_slum_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bogenhafen_slum_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pdr_sl_level_bogenhafen_slum_gang = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_gang_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_concerned"
			},
			sound_events_duration = {
				[1.0] = 5.3366456031799
			},
			localization_strings = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_gang_01"
			}
		},
		pdr_level_bogenhafen_slum_end = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_end_01",
				"pdr_level_bogenhafen_slum_end_02",
				"pdr_level_bogenhafen_slum_end_03",
				"pdr_level_bogenhafen_slum_end_04"
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
				3.4783124923706,
				3.8997707366943,
				3.8984999656677,
				3.8984999656677
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_end_01",
				"pdr_level_bogenhafen_slum_end_02",
				"pdr_level_bogenhafen_slum_end_03",
				"pdr_level_bogenhafen_slum_end_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_slum = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_slum_01",
				"pdr_level_bogenhafen_slum_slum_02",
				"pdr_level_bogenhafen_slum_slum_03",
				"pdr_level_bogenhafen_slum_slum_04"
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
				2.8772082328796,
				3.2150416374206,
				4.2178750038147,
				3.7200000286102
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_slum_01",
				"pdr_level_bogenhafen_slum_slum_02",
				"pdr_level_bogenhafen_slum_slum_03",
				"pdr_level_bogenhafen_slum_slum_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_burn_food = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_burn_food_01",
				"pdr_level_bogenhafen_slum_burn_food_02",
				"pdr_level_bogenhafen_slum_burn_food_03",
				"pdr_level_bogenhafen_slum_burn_food_04"
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
				1.8505208492279,
				2.759583234787,
				2.8983333110809,
				3.4898540973663
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_burn_food_01",
				"pdr_level_bogenhafen_slum_burn_food_02",
				"pdr_level_bogenhafen_slum_burn_food_03",
				"pdr_level_bogenhafen_slum_burn_food_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_gang = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_gang_01",
				"pdr_level_bogenhafen_slum_gang_02",
				"pdr_level_bogenhafen_slum_gang_03",
				"pdr_level_bogenhafen_slum_gang_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_neutral",
				"face_neutral",
				"face_curious"
			},
			sound_events_duration = {
				3.5690834522247,
				4.694833278656,
				4.1056041717529,
				7.8854999542236
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_gang_01",
				"pdr_level_bogenhafen_slum_gang_02",
				"pdr_level_bogenhafen_slum_gang_03",
				"pdr_level_bogenhafen_slum_gang_04"
			},
			randomize_indexes = {}
		},
		pdr_sl_level_bogenhafen_slum_noisy_exit = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_noisy_exit_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.4877710342407
			},
			localization_strings = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_noisy_exit_01"
			}
		},
		pdr_ib_level_bogenhafen_slum_blackfire = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_blackfire_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_concerned"
			},
			sound_events_duration = {
				[1.0] = 6.448853969574
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_blackfire_01"
			}
		},
		pdr_ib_level_bogenhafen_slum_fortify_prep = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_fortify_prep_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 7.6008749008179
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_fortify_prep_01"
			}
		},
		["pdr_ib level_bogenhafen_slum_river"] = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib level_bogenhafen_slum_river_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.4567
			},
			localization_strings = {
				[1.0] = "pdr_ib level_bogenhafen_slum_river_01"
			}
		},
		pdr_ib_level_bogenhafen_slum_tainted_food = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_tainted_food_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.6155624389648
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_tainted_food_01"
			}
		},
		pdr_ib_level_bogenhafen_slum_slum = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_slum_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.9557499885559
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_slum_01"
			}
		},
		pdr_level_bogenhafen_slum_blackfire = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_blackfire_01",
				"pdr_level_bogenhafen_slum_blackfire_02",
				"pdr_level_bogenhafen_slum_blackfire_03",
				"pdr_level_bogenhafen_slum_blackfire_04"
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
				2.7370624542236,
				5.2840623855591,
				4.1943125724792,
				3.7571249008179
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_blackfire_01",
				"pdr_level_bogenhafen_slum_blackfire_02",
				"pdr_level_bogenhafen_slum_blackfire_03",
				"pdr_level_bogenhafen_slum_blackfire_04"
			},
			randomize_indexes = {}
		},
		pdr_ib_level_bogenhafen_slum_foul_air = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_foul_air_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.0276665687561
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_foul_air_01"
			}
		},
		pdr_level_bogenhafen_slum_fortify_prep = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_fortify_prep_01",
				"pdr_level_bogenhafen_slum_fortify_prep_02",
				"pdr_level_bogenhafen_slum_fortify_prep_03",
				"pdr_level_bogenhafen_slum_fortify_prep_04"
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
				3.7484583854675,
				3.1573750972748,
				3.4992499351502,
				4.5584168434143
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_fortify_prep_01",
				"pdr_level_bogenhafen_slum_fortify_prep_02",
				"pdr_level_bogenhafen_slum_fortify_prep_03",
				"pdr_level_bogenhafen_slum_fortify_prep_04"
			},
			randomize_indexes = {}
		},
		pdr_sl_level_bogenhafen_slum_ambush = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_ambush_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.9874377250671
			},
			localization_strings = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_ambush_01"
			}
		},
		pdr_level_bogenhafen_slum_search = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_search_01",
				"pdr_level_bogenhafen_slum_search_02",
				"pdr_level_bogenhafen_slum_search_03",
				"pdr_level_bogenhafen_slum_search_04"
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
				3.8061666488648,
				3.2080209255219,
				4.6699166297913,
				3.1906249523163
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_search_01",
				"pdr_level_bogenhafen_slum_search_02",
				"pdr_level_bogenhafen_slum_search_03",
				"pdr_level_bogenhafen_slum_search_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_tainted_food = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_tainted_food_01",
				"pdr_level_bogenhafen_slum_tainted_food_02",
				"pdr_level_bogenhafen_slum_tainted_food_03",
				"pdr_level_bogenhafen_slum_tainted_food_04"
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
				3.3741457462311,
				4.8530416488647,
				8.1241044998169,
				4.9023542404175
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_tainted_food_01",
				"pdr_level_bogenhafen_slum_tainted_food_02",
				"pdr_level_bogenhafen_slum_tainted_food_03",
				"pdr_level_bogenhafen_slum_tainted_food_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_stolen_goods = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_stolen_goods_01",
				"pdr_level_bogenhafen_slum_stolen_goods_02",
				"pdr_level_bogenhafen_slum_stolen_goods_03",
				"pdr_level_bogenhafen_slum_stolen_goods_04"
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
				3.512791633606,
				3.0299999713898,
				3.9752082824707,
				5.2287707328796
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_stolen_goods_01",
				"pdr_level_bogenhafen_slum_stolen_goods_02",
				"pdr_level_bogenhafen_slum_stolen_goods_03",
				"pdr_level_bogenhafen_slum_stolen_goods_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_foul_air = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_foul_air_01",
				"pdr_level_bogenhafen_slum_foul_air_02",
				"pdr_level_bogenhafen_slum_foul_air_03",
				"pdr_level_bogenhafen_slum_foul_air_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
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
				2.674708366394,
				3.9081666469574,
				3.0166041851044,
				5.4701042175293
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_foul_air_01",
				"pdr_level_bogenhafen_slum_foul_air_02",
				"pdr_level_bogenhafen_slum_foul_air_03",
				"pdr_level_bogenhafen_slum_foul_air_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_noisy_exit = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_noisy_exit_01",
				"pdr_level_bogenhafen_slum_noisy_exit_02",
				"pdr_level_bogenhafen_slum_noisy_exit_03",
				"pdr_level_bogenhafen_slum_noisy_exit_04"
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
				3.9864165782928,
				3.4165415763855,
				4.1203751564026,
				3.3755624294281
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_noisy_exit_01",
				"pdr_level_bogenhafen_slum_noisy_exit_02",
				"pdr_level_bogenhafen_slum_noisy_exit_03",
				"pdr_level_bogenhafen_slum_noisy_exit_04"
			},
			randomize_indexes = {}
		},
		pdr_sl_level_bogenhafen_slum_fortify = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_fortify_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.939749956131
			},
			localization_strings = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_fortify_01"
			}
		},
		pdr_level_bogenhafen_slum_the_58 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_the_58_01",
				"pdr_level_bogenhafen_slum_the_58_02",
				"pdr_level_bogenhafen_slum_the_58_03",
				"pdr_level_bogenhafen_slum_the_58_04"
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
				4.8066248893738,
				3.9960417747498,
				6.4821457862854,
				5.1940832138061
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_the_58_01",
				"pdr_level_bogenhafen_slum_the_58_02",
				"pdr_level_bogenhafen_slum_the_58_03",
				"pdr_level_bogenhafen_slum_the_58_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_too_quiet = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_too_quiet_01",
				"pdr_level_bogenhafen_slum_too_quiet_02",
				"pdr_level_bogenhafen_slum_too_quiet_03",
				"pdr_level_bogenhafen_slum_too_quiet_04"
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
				5.0284581184387,
				4.6450834274292,
				3.1026666164398,
				3.2631459236145
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_too_quiet_01",
				"pdr_level_bogenhafen_slum_too_quiet_02",
				"pdr_level_bogenhafen_slum_too_quiet_03",
				"pdr_level_bogenhafen_slum_too_quiet_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_ambush = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_ambush_01",
				"pdr_level_bogenhafen_slum_ambush_02",
				"pdr_level_bogenhafen_slum_ambush_03",
				"pdr_level_bogenhafen_slum_ambush_04"
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
				3.861249923706,
				2.1232917308807,
				2.9629583358765,
				3.1506667137146
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_ambush_01",
				"pdr_level_bogenhafen_slum_ambush_02",
				"pdr_level_bogenhafen_slum_ambush_03",
				"pdr_level_bogenhafen_slum_ambush_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_level_bogenhafen_slum_intro_a_01",
				[2.0] = "pdr_level_bogenhafen_slum_intro_a_02"
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
				[1.0] = 4.3943123817444,
				[2.0] = 6.0739164352417
			},
			localization_strings = {
				[1.0] = "pdr_level_bogenhafen_slum_intro_a_01",
				[2.0] = "pdr_level_bogenhafen_slum_intro_a_02"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_river = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_river_01",
				"pdr_level_bogenhafen_slum_river_02",
				"pdr_level_bogenhafen_slum_river_03",
				"pdr_level_bogenhafen_slum_river_04"
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
				2.4713749885559,
				5.3197708129883,
				4.0772709846497,
				5.5001459121704
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_river_01",
				"pdr_level_bogenhafen_slum_river_02",
				"pdr_level_bogenhafen_slum_river_03",
				"pdr_level_bogenhafen_slum_river_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_level_bogenhafen_slum_intro_b_01",
				[2.0] = "pdr_level_bogenhafen_slum_intro_b_02"
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
				[1.0] = 9.1948957443237,
				[2.0] = 7.7607083320618
			},
			localization_strings = {
				[1.0] = "pdr_level_bogenhafen_slum_intro_b_01",
				[2.0] = "pdr_level_bogenhafen_slum_intro_b_02"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_level_bogenhafen_slum_intro_c_01",
				[2.0] = "pdr_level_bogenhafen_slum_intro_c_02"
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
				[1.0] = 4.8958539962769,
				[2.0] = 3.1876666545868
			},
			localization_strings = {
				[1.0] = "pdr_level_bogenhafen_slum_intro_c_01",
				[2.0] = "pdr_level_bogenhafen_slum_intro_c_02"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_the_wall = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_the_wall_01",
				"pdr_level_bogenhafen_slum_the_wall_02",
				"pdr_level_bogenhafen_slum_the_wall_03",
				"pdr_level_bogenhafen_slum_the_wall_04"
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
				3.0061457157135,
				3.5896458625794,
				4.1214375495911,
				3.6265625953674
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_the_wall_01",
				"pdr_level_bogenhafen_slum_the_wall_02",
				"pdr_level_bogenhafen_slum_the_wall_03",
				"pdr_level_bogenhafen_slum_the_wall_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_fortify = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_fortify_01",
				"pdr_level_bogenhafen_slum_fortify_02",
				"pdr_level_bogenhafen_slum_fortify_03",
				"pdr_level_bogenhafen_slum_fortify_04"
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
				3.0572500228882,
				3.2208542823791,
				3.2429583072662,
				3.1442084312439
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_fortify_01",
				"pdr_level_bogenhafen_slum_fortify_02",
				"pdr_level_bogenhafen_slum_fortify_03",
				"pdr_level_bogenhafen_slum_fortify_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_escape = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_escape_01",
				"pdr_level_bogenhafen_slum_escape_02",
				"pdr_level_bogenhafen_slum_escape_03",
				"pdr_level_bogenhafen_slum_escape_04"
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
				3.161229133606,
				3.1317083835602,
				2.8658125400543,
				3.3015832901001
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_escape_01",
				"pdr_level_bogenhafen_slum_escape_02",
				"pdr_level_bogenhafen_slum_escape_03",
				"pdr_level_bogenhafen_slum_escape_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_noble_food = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_noble_food_01",
				"pdr_level_bogenhafen_slum_noble_food_02",
				"pdr_level_bogenhafen_slum_noble_food_03",
				"pdr_level_bogenhafen_slum_noble_food_04"
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
				4.2860417366028,
				5.2734999656677,
				5.5767498016357,
				5.2626876831055
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_noble_food_01",
				"pdr_level_bogenhafen_slum_noble_food_02",
				"pdr_level_bogenhafen_slum_noble_food_03",
				"pdr_level_bogenhafen_slum_noble_food_04"
			},
			randomize_indexes = {}
		},
		pdr_ib_level_bogenhafen_slum_cannon = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_cannon_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.9475417137146
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_cannon_01"
			}
		},
		pdr_level_bogenhafen_slum_cannon = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_cannon_01",
				"pdr_level_bogenhafen_slum_cannon_02",
				"pdr_level_bogenhafen_slum_cannon_03",
				"pdr_level_bogenhafen_slum_cannon_04"
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
				4.9843335151672,
				3.7162082195282,
				3.7404999732971,
				7.5674376487732
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_cannon_01",
				"pdr_level_bogenhafen_slum_cannon_02",
				"pdr_level_bogenhafen_slum_cannon_03",
				"pdr_level_bogenhafen_slum_cannon_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_squalor = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_squalor_01",
				"pdr_level_bogenhafen_slum_squalor_02",
				"pdr_level_bogenhafen_slum_squalor_03",
				"pdr_level_bogenhafen_slum_squalor_04"
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
				5.064395904541,
				4.5174374580383,
				4.7441873550415,
				6.3602085113525
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_squalor_01",
				"pdr_level_bogenhafen_slum_squalor_02",
				"pdr_level_bogenhafen_slum_squalor_03",
				"pdr_level_bogenhafen_slum_squalor_04"
			},
			randomize_indexes = {}
		},
		pdr_level_bogenhafen_slum_find_hideout = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_bogenhafen_slum",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_bogenhafen_slum_find_hideout_01",
				"pdr_level_bogenhafen_slum_find_hideout_02",
				"pdr_level_bogenhafen_slum_find_hideout_03",
				"pdr_level_bogenhafen_slum_find_hideout_04"
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
				1.7207499742508,
				4.0672497749329,
				3.9386041164398,
				4.0655627250671
			},
			localization_strings = {
				"pdr_level_bogenhafen_slum_find_hideout_01",
				"pdr_level_bogenhafen_slum_find_hideout_02",
				"pdr_level_bogenhafen_slum_find_hideout_03",
				"pdr_level_bogenhafen_slum_find_hideout_04"
			},
			randomize_indexes = {}
		},
		pdr_sl_level_bogenhafen_slum_slum = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_slum_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.6568958759308
			},
			localization_strings = {
				[1.0] = "pdr_sl_level_bogenhafen_slum_slum_01"
			}
		},
		pdr_ib_level_bogenhafen_slum_ambush = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_ambush_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.2433543205261
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_ambush_01"
			}
		},
		pdr_ib_level_bogenhafen_slum_find_hideout = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_bogenhafen_slum",
			category = "level_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_find_hideout_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 9.0851039886475
			},
			localization_strings = {
				[1.0] = "pdr_ib_level_bogenhafen_slum_find_hideout_01"
			}
		}
	})
end
