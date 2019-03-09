return function ()
	define_rule({
		name = "pwh_crawl_drunk_buff_wears_off",
		response = "pwh_crawl_drunk_buff_wears_off",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"buff_wears_off"
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
				"user_memory",
				"buff_wears_off",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"buff_wears_off",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_crawl_drunk_buff_begins",
		response = "pwh_crawl_drunk_buff_begins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"drunk_buff_begins"
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
				"user_memory",
				"drunk_buff_begins",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"drunk_buff_begins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_crawl_drunk_buff_begins_from_sick",
		response = "pwh_crawl_drunk_buff_begins_from_sick",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"buff_begins_from_sick"
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
				"user_memory",
				"buff_begins_from_sick",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"buff_begins_from_sick",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_healing_draught_drunk",
		response = "pwh_gameplay_healing_draught_drunk",
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
				"health_flask"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_spots_potion_drunk",
		response = "pwh_gameplay_spots_potion_drunk",
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
				"potion"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_using_potion_drunk",
		response = "pwh_gameplay_using_potion_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_healing_draught"
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
				"user_memory",
				"time_since_used_potion",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_used_potion",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_tips_wizard_wind_drunk",
		response = "pwh_gameplay_tips_wizard_wind_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"chaos_vortex_spawned"
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				55
			},
			{
				"faction_memory",
				"chaos_vortex_spawned",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_vortex_spawned",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_crawl_drank",
		name = "pwh_crawl_drank",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_drank_vce"
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
			}
		}
	})
	define_rule({
		name = "pwh_hiccup",
		response = "pwh_hiccup",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
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
				"time_since_hiccup",
				OP.TIMEDIFF,
				OP.GT,
				150
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_hiccup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_burp",
		response = "pwh_burp",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
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
				"crawl_heard_us",
				OP.EQ,
				1
			},
			{
				"user_memory",
				"time_since_burp",
				OP.TIMEDIFF,
				OP.GT,
				150
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_burp",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_empire_soldier_being_helped_up_drunk",
		name = "pwh_gameplay_empire_soldier_being_helped_up_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_dwarf_ranger_being_helped_up_drunk",
		name = "pwh_gameplay_dwarf_ranger_being_helped_up_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_wood_elf_being_helped_up_drunk",
		name = "pwh_gameplay_wood_elf_being_helped_up_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_bright_wizard_being_helped_up_drunk",
		name = "pwh_gameplay_bright_wizard_being_helped_up_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_healing_empire_soldier_drunk",
		response = "pwh_gameplay_healing_empire_soldier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_healing_dwarf_ranger_drunk",
		response = "pwh_gameplay_healing_dwarf_ranger_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_healing_wood_elf_drunk",
		response = "pwh_gameplay_healing_wood_elf_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_healing_bright_wizard_drunk",
		response = "pwh_gameplay_healing_bright_wizard_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_helped_by_empire_soldier_drunk",
		response = "pwh_gameplay_helped_by_empire_soldier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_helped_by_dwarf_ranger_drunk",
		response = "pwh_gameplay_helped_by_dwarf_ranger_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_helped_by_wood_elf_drunk",
		response = "pwh_gameplay_helped_by_wood_elf_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_helped_by_bright_wizard_drunk",
		response = "pwh_gameplay_helped_by_bright_wizard_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_low_on_health_drunk",
		response = "pwh_gameplay_low_on_health_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"current_amount",
				OP.LTEQ,
				0.4
			},
			{
				"query_context",
				"current_amount",
				OP.GTEQ,
				0.1
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"decreasing"
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
				"user_memory",
				"low_health",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_empire_soldier_low_on_health_drunk",
		response = "pwh_gameplay_empire_soldier_low_on_health_drunk",
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
				"pes_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_low_health_pes",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_dwarf_ranger_low_on_health_drunk",
		response = "pwh_gameplay_dwarf_ranger_low_on_health_drunk",
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
				"pdr_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_low_health_pwh",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pwh",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_wood_elf_low_on_health_drunk",
		response = "pwh_gameplay_wood_elf_low_on_health_drunk",
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
				"pwe_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_low_health_pwe",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pwe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_bright_wizard_low_on_health_drunk",
		response = "pwh_gameplay_bright_wizard_low_on_health_drunk",
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
				"pbw_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_low_health_pbw",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pbw",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_spots_ammo_drunk",
		response = "pwh_gameplay_spots_ammo_drunk",
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
				"ammo"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"global_context",
				"current_level",
				OP.NEQ,
				"inn_level"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_spots_health_drunk",
		response = "pwh_gameplay_spots_health_drunk",
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
				"health"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_spots_bomb_drunk",
		response = "pwh_gameplay_spots_bomb_drunk",
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
				"bomb"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_out_of_ammo_drunk",
		response = "pwh_gameplay_out_of_ammo_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"reload_failed"
			},
			{
				"query_context",
				"fail_reason",
				OP.EQ,
				"out_of_ammo"
			},
			{
				"query_context",
				"item_name",
				OP.NEQ,
				"healthkit_first_aid_kit_01"
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
				"user_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_self_heal_drunk",
		response = "pwh_gameplay_self_heal_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
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
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_throwing_bomb_drunk",
		response = "pwh_gameplay_throwing_bomb_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"throwing_item"
			},
			{
				"query_context",
				"item_type",
				OP.EQ,
				"grenade"
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
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_friendly_fire_dwarf_ranger_drunk",
		response = "pwh_gameplay_friendly_fire_dwarf_ranger_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_friendly_fire_bright_wizard_drunk",
		response = "pwh_gameplay_friendly_fire_bright_wizard_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_friendly_fire_wood_elf_drunk",
		response = "pwh_gameplay_friendly_fire_wood_elf_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_friendly_fire_empire_soldier_drunk",
		response = "pwh_gameplay_friendly_fire_empire_soldier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_special_ability_captain_non_drunk",
		name = "pwh_special_ability_captain_non_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
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
				"user_context",
				"player_career",
				OP.EQ,
				"wh_captain"
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		response = "pwh_activate_ability_bounty_hunter_non_drunk",
		name = "pwh_activate_ability_bounty_hunter_non_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
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
				"user_context",
				"player_career",
				OP.EQ,
				"wh_bountyhunter"
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		response = "pwh_activate_ability_zealot_non_drunk",
		name = "pwh_activate_ability_zealot_non_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
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
				"user_context",
				"player_career",
				OP.EQ,
				"wh_zealot"
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_knocked_down_drunk",
		response = "pwh_gameplay_knocked_down_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
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
				"user_memory",
				"time_since_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMESET
			},
			{
				"faction_memory",
				"times_we_downed",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"times_down_witch_hunter",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_player_pounced_drunk",
		response = "pwh_gameplay_player_pounced_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"pounced_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"target_name",
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
				"user_memory",
				"time_since_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_gutter_runner_drunk",
		response = "pwh_gameplay_hearing_a_gutter_runner_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_globadier_drunk",
		response = "pwh_gameplay_hearing_a_globadier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_incoming_skaven_rat_ogre_drunk",
		response = "pwh_gameplay_incoming_skaven_rat_ogre_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"rat_ogre_charge"
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_patrol_stormvermin_drunk",
		response = "pwh_gameplay_hearing_a_skaven_patrol_stormvermin_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_ratling_gun_drunk",
		response = "pwh_gameplay_hearing_a_skaven_ratling_gun_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_gutter_runner_combat_drunk",
		response = "pwh_gameplay_hearing_a_gutter_runner_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_globadier_combat_drunk",
		response = "pwh_gameplay_hearing_a_globadier_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_rat_ogre_combat_drunk",
		response = "pwh_gameplay_hearing_a_skaven_rat_ogre_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_ratling_gun_combat_drunk",
		response = "pwh_gameplay_hearing_a_skaven_ratling_gun_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_spawn_combat_drunk",
		response = "pwh_gameplay_hearing_a_chaos_spawn_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_spawn_drunk",
		response = "pwh_gameplay_hearing_a_chaos_spawn_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_wind_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_wind_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_wind_combat_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_wind_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_drunk",
		response = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_drunk",
		response = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_stormfiend_drunk",
		response = "pwh_gameplay_hearing_a_stormfiend_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_stormfiend_combat_drunk",
		response = "pwh_gameplay_hearing_a_stormfiend_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_troll_drunk",
		response = "pwh_gameplay_hearing_a_troll_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_troll_combat_drunk",
		response = "pwh_gameplay_hearing_a_troll_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_rat_ogre_drunk",
		response = "pwh_gameplay_hearing_a_skaven_rat_ogre_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"user_memory",
				"incoming_threat_victor",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_victor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hears_incoming_horde_drunk",
		response = "pwh_gameplay_hears_incoming_horde_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"vector"
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
				"time_since_horde",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_horde",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_ambush_horde_spawned_drunk",
		response = "pwh_gameplay_ambush_horde_spawned_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"ambush"
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
				"time_since_ambush",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_pm_no_drunk",
		response = "pwh_gameplay_seeing_a_pm_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_plague_monk"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				10
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_scr_no_drunk",
		response = "pwh_gameplay_seeing_a_scr_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"seeing_a_scr",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"seeing_a_scr",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_pm_no_drunk",
		response = "pwh_gameplay_hearing_a_pm_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"Play_plague_monk_alerted_vce"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_pm_in_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_pm_in_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"Play_plague_monk_alerted_vce"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_spawn_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_spawn_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_chaos_spawn_no_drunk",
		response = "pwh_gameplay_seeing_a_chaos_spawn_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_spawn_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_spawn_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_stormfiend_no_drunk",
		response = "pwh_gameplay_killing_a_stormfiend_no_drunk",
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
				"skaven_stormfiend"
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
				"user_memory",
				"time_since_killing_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				5
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_skaven_stormfiend",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_warrior_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_warrior_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_warrior",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_plague_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_plague_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_plague_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_plague_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_plague_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_plague_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_plague_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_plague_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_tentacle_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_tentacle_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_tentacle_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_tentacle_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_tentacle_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_tentacle_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_tentacle_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_tentacle_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_tentacle_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_tentacle_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_wind_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_wind_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_chaos_wizard_wind_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_chaos_wizard_wind_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_no_drunk",
		response = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_stormfiend_no_drunk",
		response = "pwh_gameplay_hearing_a_stormfiend_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_stormfiend_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_stormfiend_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_troll_no_drunk",
		response = "pwh_gameplay_hearing_a_troll_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_troll_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_troll_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_marauder_berserker_combat_no_drunk",
		response = "pwh_gameplay_hearing_marauder_berserker_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"ecb_gameplay_running_towards_players"
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_berzerker",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_berzerker",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_chaos_warrior_no_drunk",
		response = "pwh_gameplay_killing_a_chaos_warrior_no_drunk",
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
				"chaos_warrior"
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
				"user_memory",
				"time_since_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				5
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_warrior",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_chaos_warrior_champion_no_drunk",
		response = "pwh_gameplay_killing_a_chaos_warrior_champion_no_drunk",
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
				"chaos_exalted_champion"
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
				"user_memory",
				"time_since_chaos_exalted_champion",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_exalted_champion",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_chaos_wizard_plague_no_drunk",
		response = "pwh_gameplay_killing_a_chaos_wizard_plague_no_drunk",
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
				"chaos_plague_sorcerer"
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
				"user_memory",
				"time_since_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_plague_sorcerer",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_chaos_wizard_tentacle_no_drunk",
		response = "pwh_gameplay_killing_a_chaos_wizard_tentacle_no_drunk",
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
				"chaos_tentacle_sorcerer"
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
				"user_memory",
				"time_since_chaos_wizard_tentacle",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_wizard_tentacle",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_chaos_wizard_wind_no_drunk",
		response = "pwh_gameplay_killing_a_chaos_wizard_wind_no_drunk",
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
				"chaos_vortex_sorcerer"
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
				"user_memory",
				"time_since_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_vortex_sorcerer",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_skaven_warpfire_thrower_no_drunk",
		response = "pwh_gameplay_killing_a_skaven_warpfire_thrower_no_drunk",
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
				"skaven_warpfire_thrower"
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
				"user_memory",
				"time_since_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_skaven_warpfire_thrower",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_chaos_warrior_no_drunk",
		response = "pwh_gameplay_seeing_a_chaos_warrior_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_warrior",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_chaos_warrior_champion_combat_no_drunk",
		response = "pwh_gameplay_seeing_a_chaos_warrior_champion_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_exalted_champion"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_exalted_champion",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_exalted_champion",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_exalted_champion",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_chaos_wizard_plague_no_drunk",
		response = "pwh_gameplay_seeing_a_chaos_wizard_plague_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_plague_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_plague_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_plague_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_chaos_wizard_tentacle_no_drunk",
		response = "pwh_gameplay_seeing_a_chaos_wizard_tentacle_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_tentacle_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_tentacle_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_tentacle_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_tentacle_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_chaos_wizard_wind_no_drunk",
		response = "pwh_gameplay_seeing_a_chaos_wizard_wind_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_shield_stormvermin_no_drunk",
		response = "pwh_gameplay_seeing_a_shield_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin_with_shield"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_storm_vermin_with_shield",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_storm_vermin_with_shield",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk",
		response = "pwh_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_stormfiend_no_drunk",
		response = "pwh_gameplay_seeing_a_stormfiend_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_troll_no_drunk",
		response = "pwh_gameplay_seeing_a_troll_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_killing_a_chaos_wizard_leech_no_drunk",
		response = "pwh_gameplay_killing_a_chaos_wizard_leech_no_drunk",
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
				"chaos_corruptor_sorcerer"
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
				"user_memory",
				"time_since_chaos_wizard_leech",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_wizard_leech",
				OP.TIMESET
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_gutter_runner_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_gutter_runner_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_globadier_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_globadier_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_rat_ogre_combat_no_drunk_no_drunk",
		response = "pwh_gameplay_hearing_a_skaven_rat_ogre_combat_no_drunk_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_ratling_gun_combat_no_drunk",
		response = "pwh_gameplay_hearing_a_skaven_ratling_gun_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_stormvermin_no_drunk",
		response = "pwh_gameplay_seeing_a_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin_commander"
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_storm_vermin_commander",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_storm_vermin_commander",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_gutter_runner_no_drunk",
		response = "pwh_gameplay_seeing_a_gutter_runner_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_gutter_runner_no_drunk",
		response = "pwh_gameplay_hearing_a_gutter_runner_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_globadier_no_drunk",
		response = "pwh_gameplay_seeing_a_globadier_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_globadier_no_drunk",
		response = "pwh_gameplay_hearing_a_globadier_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_skaven_rat_ogre_no_drunk",
		response = "pwh_gameplay_seeing_a_skaven_rat_ogre_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_rat_ogre_no_drunk",
		response = "pwh_gameplay_hearing_a_skaven_rat_ogre_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_incoming_skaven_rat_ogre_no_drunk",
		response = "pwh_gameplay_incoming_skaven_rat_ogre_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"rat_ogre_charge"
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_skaven_patrol_stormvermin_no_drunk",
		response = "pwh_gameplay_seeing_a_skaven_patrol_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_patrol_stormvermin_no_drunk",
		response = "pwh_gameplay_hearing_a_skaven_patrol_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_skaven_slaver_no_drunk",
		response = "pwh_gameplay_seeing_a_skaven_slaver_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_pack_master"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				4
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_slaver",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_slaver",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_seeing_a_skaven_ratling_gun_no_drunk",
		response = "pwh_gameplay_seeing_a_skaven_ratling_gun_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_hearing_a_skaven_ratling_gun_no_drunk",
		response = "pwh_gameplay_hearing_a_skaven_ratling_gun_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
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
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pwh_gameplay_hearing_a_chaos_wizard_plague_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_wizard_plague_01",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_02",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_03",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_04",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_05",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_06",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_07",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_wizard_plague_01",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_02",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_03",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_04",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_05",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_06",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_07",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_patrol_stormvermin_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_nervous",
				"face_concerned",
				"face_concerned",
				"face_nervous"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_gutter_runner_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_seeing_a_gutter_runner_01",
				"pwh_gameplay_seeing_a_gutter_runner_02",
				"pwh_gameplay_seeing_a_gutter_runner_03",
				"pwh_gameplay_seeing_a_gutter_runner_04",
				"pwh_gameplay_seeing_a_gutter_runner_05",
				"pwh_gameplay_seeing_a_gutter_runner_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_surprise",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_gutter_runner_01",
				"pwh_gameplay_seeing_a_gutter_runner_02",
				"pwh_gameplay_seeing_a_gutter_runner_03",
				"pwh_gameplay_seeing_a_gutter_runner_04",
				"pwh_gameplay_seeing_a_gutter_runner_05",
				"pwh_gameplay_seeing_a_gutter_runner_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_01",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_02",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_03",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_04",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_05",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_01",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_02",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_03",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_04",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_05",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_friendly_fire_empire_soldier_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_friendly_fire_empire_soldier_04",
				"pwh_gameplay_friendly_fire_empire_soldier_05",
				"pwh_gameplay_friendly_fire_empire_soldier_06",
				"pwh_gameplay_friendly_fire_empire_soldier_07",
				"pwh_gameplay_friendly_fire_empire_soldier_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwh_gameplay_friendly_fire_empire_soldier_04",
				"pwh_gameplay_friendly_fire_empire_soldier_05",
				"pwh_gameplay_friendly_fire_empire_soldier_06",
				"pwh_gameplay_friendly_fire_empire_soldier_07",
				"pwh_gameplay_friendly_fire_empire_soldier_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_troll_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_troll_01",
				"pwh_gameplay_seeing_a_troll_02",
				"pwh_gameplay_seeing_a_troll_03",
				"pwh_gameplay_seeing_a_troll_04",
				"pwh_gameplay_seeing_a_troll_05",
				"pwh_gameplay_seeing_a_troll_06",
				"pwh_gameplay_seeing_a_troll_07",
				"pwh_gameplay_seeing_a_troll_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_troll_01",
				"pwh_gameplay_seeing_a_troll_02",
				"pwh_gameplay_seeing_a_troll_03",
				"pwh_gameplay_seeing_a_troll_04",
				"pwh_gameplay_seeing_a_troll_05",
				"pwh_gameplay_seeing_a_troll_06",
				"pwh_gameplay_seeing_a_troll_07",
				"pwh_gameplay_seeing_a_troll_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_chaos_wizard_plague_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_killing_a_chaos_wizard_plague_01",
				"pwh_gameplay_killing_a_chaos_wizard_plague_02",
				"pwh_gameplay_killing_a_chaos_wizard_plague_03",
				"pwh_gameplay_killing_a_chaos_wizard_plague_04",
				"pwh_gameplay_killing_a_chaos_wizard_plague_05",
				"pwh_gameplay_killing_a_chaos_wizard_plague_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_chaos_wizard_plague_01",
				"pwh_gameplay_killing_a_chaos_wizard_plague_02",
				"pwh_gameplay_killing_a_chaos_wizard_plague_03",
				"pwh_gameplay_killing_a_chaos_wizard_plague_04",
				"pwh_gameplay_killing_a_chaos_wizard_plague_05",
				"pwh_gameplay_killing_a_chaos_wizard_plague_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_using_potion_drunk = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_drank"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_drank"
			}
		},
		pwh_gameplay_seeing_a_stormvermin_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_stormvermin_01",
				"pwh_gameplay_seeing_a_stormvermin_02",
				"pwh_gameplay_seeing_a_stormvermin_03",
				"pwh_gameplay_seeing_a_stormvermin_04",
				"pwh_gameplay_seeing_a_stormvermin_05",
				"pwh_gameplay_seeing_a_stormvermin_06",
				"pwh_gameplay_seeing_a_stormvermin_07",
				"pwh_gameplay_seeing_a_stormvermin_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_neutral",
				"face_neutral",
				"face_contempt",
				"face_neutral",
				"face_angry"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_stormvermin_01",
				"pwh_gameplay_seeing_a_stormvermin_02",
				"pwh_gameplay_seeing_a_stormvermin_03",
				"pwh_gameplay_seeing_a_stormvermin_04",
				"pwh_gameplay_seeing_a_stormvermin_05",
				"pwh_gameplay_seeing_a_stormvermin_06",
				"pwh_gameplay_seeing_a_stormvermin_07",
				"pwh_gameplay_seeing_a_stormvermin_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_spots_ammo_drunk = {
			sound_events_n = 10,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "witch_hunter_game_play_crawl",
			category = "seen_items",
			dialogue_animations_n = 10,
			sound_events = {
				"pwh_gameplay_spots_ammo_01",
				"pwh_gameplay_spots_ammo_06",
				"pwh_gameplay_spots_ammo_07",
				"pwh_gameplay_spots_ammo_08",
				"pwh_gameplay_spots_ammo_09",
				"pwh_gameplay_spots_ammo_10",
				"pwh_gameplay_spots_ammo_11",
				"pwh_gameplay_spots_ammo_12",
				"pwh_gameplay_spots_ammo_13",
				"pwh_gameplay_spots_ammo_14"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_spots_ammo_01",
				"pwh_gameplay_spots_ammo_06",
				"pwh_gameplay_spots_ammo_07",
				"pwh_gameplay_spots_ammo_08",
				"pwh_gameplay_spots_ammo_09",
				"pwh_gameplay_spots_ammo_10",
				"pwh_gameplay_spots_ammo_11",
				"pwh_gameplay_spots_ammo_12",
				"pwh_gameplay_spots_ammo_13",
				"pwh_gameplay_spots_ammo_14"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_wind_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_wizard_wind_01",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_02",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_03",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_04",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_05",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_06",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_07",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_wizard_wind_01",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_02",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_03",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_04",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_05",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_06",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_07",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_shield_stormvermin_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_shield_stormvermin_01",
				"pwh_gameplay_seeing_a_shield_stormvermin_02",
				"pwh_gameplay_seeing_a_shield_stormvermin_03",
				"pwh_gameplay_seeing_a_shield_stormvermin_04",
				"pwh_gameplay_seeing_a_shield_stormvermin_05",
				"pwh_gameplay_seeing_a_shield_stormvermin_06",
				"pwh_gameplay_seeing_a_shield_stormvermin_07",
				"pwh_gameplay_seeing_a_shield_stormvermin_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_shield_stormvermin_01",
				"pwh_gameplay_seeing_a_shield_stormvermin_02",
				"pwh_gameplay_seeing_a_shield_stormvermin_03",
				"pwh_gameplay_seeing_a_shield_stormvermin_04",
				"pwh_gameplay_seeing_a_shield_stormvermin_05",
				"pwh_gameplay_seeing_a_shield_stormvermin_06",
				"pwh_gameplay_seeing_a_shield_stormvermin_07",
				"pwh_gameplay_seeing_a_shield_stormvermin_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_chaos_wizard_wind_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_killing_a_chaos_wizard_wind_01",
				"pwh_gameplay_killing_a_chaos_wizard_wind_02",
				"pwh_gameplay_killing_a_chaos_wizard_wind_03",
				"pwh_gameplay_killing_a_chaos_wizard_wind_04",
				"pwh_gameplay_killing_a_chaos_wizard_wind_05",
				"pwh_gameplay_killing_a_chaos_wizard_wind_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_chaos_wizard_wind_01",
				"pwh_gameplay_killing_a_chaos_wizard_wind_02",
				"pwh_gameplay_killing_a_chaos_wizard_wind_03",
				"pwh_gameplay_killing_a_chaos_wizard_wind_04",
				"pwh_gameplay_killing_a_chaos_wizard_wind_05",
				"pwh_gameplay_killing_a_chaos_wizard_wind_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_ratling_gun_no_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_hearing_a_skaven_ratling_gun_04",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_05",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_06",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_01",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_02",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_03",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_07"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_skaven_ratling_gun_04",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_05",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_06",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_01",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_02",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_03",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_07"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_out_of_ammo_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_out_of_ammo_04",
				"pwh_gameplay_out_of_ammo_05",
				"pwh_gameplay_out_of_ammo_06",
				"pwh_gameplay_out_of_ammo_07",
				"pwh_gameplay_out_of_ammo_08",
				"pwh_gameplay_out_of_ammo_09",
				"pwh_gameplay_out_of_ammo_10"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_out_of_ammo_04",
				"pwh_gameplay_out_of_ammo_05",
				"pwh_gameplay_out_of_ammo_06",
				"pwh_gameplay_out_of_ammo_07",
				"pwh_gameplay_out_of_ammo_08",
				"pwh_gameplay_out_of_ammo_09",
				"pwh_gameplay_out_of_ammo_10"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_chaos_spawn_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_chaos_spawn_01",
				"pwh_gameplay_seeing_a_chaos_spawn_02",
				"pwh_gameplay_seeing_a_chaos_spawn_03",
				"pwh_gameplay_seeing_a_chaos_spawn_04",
				"pwh_gameplay_seeing_a_chaos_spawn_05",
				"pwh_gameplay_seeing_a_chaos_spawn_06",
				"pwh_gameplay_seeing_a_chaos_spawn_07",
				"pwh_gameplay_seeing_a_chaos_spawn_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_chaos_spawn_01",
				"pwh_gameplay_seeing_a_chaos_spawn_02",
				"pwh_gameplay_seeing_a_chaos_spawn_03",
				"pwh_gameplay_seeing_a_chaos_spawn_04",
				"pwh_gameplay_seeing_a_chaos_spawn_05",
				"pwh_gameplay_seeing_a_chaos_spawn_06",
				"pwh_gameplay_seeing_a_chaos_spawn_07",
				"pwh_gameplay_seeing_a_chaos_spawn_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_skaven_ratling_gun_no_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_seeing_a_skaven_ratling_gun_01",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_02",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_03",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_04",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_05",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_06",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_07"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_skaven_ratling_gun_01",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_02",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_03",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_04",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_05",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_06",
				"pwh_gameplay_seeing_a_skaven_ratling_gun_07"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_troll_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_skaven_slaver_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_skaven_slaver_01",
				"pwh_gameplay_seeing_a_skaven_slaver_02",
				"pwh_gameplay_seeing_a_skaven_slaver_07",
				"pwh_gameplay_seeing_a_skaven_slaver_03",
				"pwh_gameplay_seeing_a_skaven_slaver_04",
				"pwh_gameplay_seeing_a_skaven_slaver_05",
				"pwh_gameplay_seeing_a_skaven_slaver_06",
				"pwh_gameplay_seeing_a_skaven_slaver_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_skaven_slaver_01",
				"pwh_gameplay_seeing_a_skaven_slaver_02",
				"pwh_gameplay_seeing_a_skaven_slaver_07",
				"pwh_gameplay_seeing_a_skaven_slaver_03",
				"pwh_gameplay_seeing_a_skaven_slaver_04",
				"pwh_gameplay_seeing_a_skaven_slaver_05",
				"pwh_gameplay_seeing_a_skaven_slaver_06",
				"pwh_gameplay_seeing_a_skaven_slaver_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_patrol_stormvermin_no_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_01",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_02",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_03",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_04",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_05",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_06",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_07"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_nervous",
				"face_concerned",
				"face_concerned",
				"face_nervous",
				"face_nervous",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_01",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_02",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_03",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_04",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_05",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_06",
				"pwh_gameplay_hearing_a_skaven_patrol_stormvermin_07"
			},
			randomize_indexes = {}
		},
		pwh_activate_ability_zealot_non_drunk = {
			sound_events_n = 10,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "witch_hunter_game_play_crawl",
			category = "activate_ability",
			dialogue_animations_n = 10,
			sound_events = {
				"pwh_activate_ability_zealot_01",
				"pwh_activate_ability_zealot_02",
				"pwh_activate_ability_zealot_03",
				"pwh_activate_ability_zealot_04",
				"pwh_activate_ability_zealot_05",
				"pwh_activate_ability_zealot_06",
				"pwh_activate_ability_zealot_11",
				"pwh_activate_ability_zealot_12",
				"pwh_activate_ability_zealot_13",
				"pwh_activate_ability_zealot_14"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_activate_ability_zealot_01",
				"pwh_activate_ability_zealot_02",
				"pwh_activate_ability_zealot_03",
				"pwh_activate_ability_zealot_04",
				"pwh_activate_ability_zealot_05",
				"pwh_activate_ability_zealot_06",
				"pwh_activate_ability_zealot_11",
				"pwh_activate_ability_zealot_12",
				"pwh_activate_ability_zealot_13",
				"pwh_activate_ability_zealot_14"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_marauder_berserker_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_marauder_berserker_combat_01",
				"pwh_gameplay_hearing_marauder_berserker_combat_02",
				"pwh_gameplay_hearing_marauder_berserker_combat_03",
				"pwh_gameplay_hearing_marauder_berserker_combat_04",
				"pwh_gameplay_hearing_marauder_berserker_combat_05",
				"pwh_gameplay_hearing_marauder_berserker_combat_06",
				"pwh_gameplay_hearing_marauder_berserker_combat_07",
				"pwh_gameplay_hearing_marauder_berserker_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_marauder_berserker_combat_01",
				"pwh_gameplay_hearing_marauder_berserker_combat_02",
				"pwh_gameplay_hearing_marauder_berserker_combat_03",
				"pwh_gameplay_hearing_marauder_berserker_combat_04",
				"pwh_gameplay_hearing_marauder_berserker_combat_05",
				"pwh_gameplay_hearing_marauder_berserker_combat_06",
				"pwh_gameplay_hearing_marauder_berserker_combat_07",
				"pwh_gameplay_hearing_marauder_berserker_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_wind_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_healing_bright_wizard_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_healing_bright_wizard_02",
				"pwh_gameplay_healing_bright_wizard_05",
				"pwh_gameplay_healing_bright_wizard_06",
				"pwh_gameplay_healing_bright_wizard_07",
				"pwh_gameplay_healing_bright_wizard_08",
				"pwh_gameplay_healing_bright_wizard_09"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_healing_bright_wizard_02",
				"pwh_gameplay_healing_bright_wizard_05",
				"pwh_gameplay_healing_bright_wizard_06",
				"pwh_gameplay_healing_bright_wizard_07",
				"pwh_gameplay_healing_bright_wizard_08",
				"pwh_gameplay_healing_bright_wizard_09"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_wood_elf_low_on_health_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_wood_elf_low_on_health_05",
				"pwh_gameplay_wood_elf_low_on_health_06",
				"pwh_gameplay_wood_elf_low_on_health_07",
				"pwh_gameplay_wood_elf_low_on_health_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_wood_elf_low_on_health_05",
				"pwh_gameplay_wood_elf_low_on_health_06",
				"pwh_gameplay_wood_elf_low_on_health_07",
				"pwh_gameplay_wood_elf_low_on_health_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_rat_ogre_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_skaven_rat_ogre_01",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_04",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_05",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_02",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_03",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_contempt",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_skaven_rat_ogre_01",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_04",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_05",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_02",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_03",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_chaos_wizard_leech_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_killing_a_chaos_wizard_leech_01",
				"pwh_gameplay_killing_a_chaos_wizard_leech_02",
				"pwh_gameplay_killing_a_chaos_wizard_leech_03",
				"pwh_gameplay_killing_a_chaos_wizard_leech_04",
				"pwh_gameplay_killing_a_chaos_wizard_leech_05",
				"pwh_gameplay_killing_a_chaos_wizard_leech_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_chaos_wizard_leech_01",
				"pwh_gameplay_killing_a_chaos_wizard_leech_02",
				"pwh_gameplay_killing_a_chaos_wizard_leech_03",
				"pwh_gameplay_killing_a_chaos_wizard_leech_04",
				"pwh_gameplay_killing_a_chaos_wizard_leech_05",
				"pwh_gameplay_killing_a_chaos_wizard_leech_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_skaven_rat_ogre_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_seeing_a_skaven_rat_ogre_01",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_04",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_06",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_02",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_03",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_skaven_rat_ogre_01",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_04",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_06",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_02",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_03",
				"pwh_gameplay_seeing_a_skaven_rat_ogre_05"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_globadier_no_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_hearing_a_globadier_02",
				"pwh_gameplay_hearing_a_globadier_05",
				"pwh_gameplay_hearing_a_globadier_06",
				"pwh_gameplay_hearing_a_globadier_01",
				"pwh_gameplay_hearing_a_globadier_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_globadier_02",
				"pwh_gameplay_hearing_a_globadier_05",
				"pwh_gameplay_hearing_a_globadier_06",
				"pwh_gameplay_hearing_a_globadier_01",
				"pwh_gameplay_hearing_a_globadier_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_globadier_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_seeing_a_globadier_01",
				"pwh_gameplay_seeing_a_globadier_03",
				"pwh_gameplay_seeing_a_globadier_04",
				"pwh_gameplay_seeing_a_globadier_02",
				"pwh_gameplay_seeing_a_globadier_05",
				"pwh_gameplay_seeing_a_globadier_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_globadier_01",
				"pwh_gameplay_seeing_a_globadier_03",
				"pwh_gameplay_seeing_a_globadier_04",
				"pwh_gameplay_seeing_a_globadier_02",
				"pwh_gameplay_seeing_a_globadier_05",
				"pwh_gameplay_seeing_a_globadier_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_spawn_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_gutter_runner_combat_no_drunk = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			sound_events = {
				"pwh_gameplay_hearing_a_gutter_runner_combat_01",
				"pwh_gameplay_hearing_a_gutter_runner_combat_02",
				"pwh_gameplay_hearing_a_gutter_runner_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_gutter_runner_combat_01",
				"pwh_gameplay_hearing_a_gutter_runner_combat_02",
				"pwh_gameplay_hearing_a_gutter_runner_03"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_gutter_runner_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_gutter_runner_01",
				"pwh_gameplay_hearing_a_gutter_runner_02",
				"pwh_gameplay_hearing_a_gutter_runner_03",
				"pwh_gameplay_hearing_a_gutter_runner_04",
				"pwh_gameplay_hearing_a_gutter_runner_05",
				"pwh_gameplay_hearing_a_gutter_runner_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_gutter_runner_01",
				"pwh_gameplay_hearing_a_gutter_runner_02",
				"pwh_gameplay_hearing_a_gutter_runner_03",
				"pwh_gameplay_hearing_a_gutter_runner_04",
				"pwh_gameplay_hearing_a_gutter_runner_05",
				"pwh_gameplay_hearing_a_gutter_runner_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_gutter_runner_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_helped_by_bright_wizard_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_helped_by_bright_wizard_03",
				"pwh_gameplay_helped_by_bright_wizard_05",
				"pwh_gameplay_helped_by_bright_wizard_06",
				"pwh_gameplay_helped_by_bright_wizard_07",
				"pwh_gameplay_helped_by_bright_wizard_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_helped_by_bright_wizard_03",
				"pwh_gameplay_helped_by_bright_wizard_05",
				"pwh_gameplay_helped_by_bright_wizard_06",
				"pwh_gameplay_helped_by_bright_wizard_07",
				"pwh_gameplay_helped_by_bright_wizard_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_ratling_gun_combat_no_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_01",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_02",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_03",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_04"
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
			localization_strings = {
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_01",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_02",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_03",
				"pwh_gameplay_hearing_a_skaven_ratling_gun_combat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_stormfiend_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_stormfiend_combat_01",
				"pwh_gameplay_hearing_a_stormfiend_combat_02",
				"pwh_gameplay_hearing_a_stormfiend_combat_03",
				"pwh_gameplay_hearing_a_stormfiend_combat_04",
				"pwh_gameplay_hearing_a_stormfiend_combat_05",
				"pwh_gameplay_hearing_a_stormfiend_combat_06",
				"pwh_gameplay_hearing_a_stormfiend_combat_07",
				"pwh_gameplay_hearing_a_stormfiend_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_stormfiend_combat_01",
				"pwh_gameplay_hearing_a_stormfiend_combat_02",
				"pwh_gameplay_hearing_a_stormfiend_combat_03",
				"pwh_gameplay_hearing_a_stormfiend_combat_04",
				"pwh_gameplay_hearing_a_stormfiend_combat_05",
				"pwh_gameplay_hearing_a_stormfiend_combat_06",
				"pwh_gameplay_hearing_a_stormfiend_combat_07",
				"pwh_gameplay_hearing_a_stormfiend_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_pm_in_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_plague_monk_combat_01",
				"pwh_gameplay_hearing_a_plague_monk_combat_02",
				"pwh_gameplay_hearing_a_plague_monk_combat_03",
				"pwh_gameplay_hearing_a_plague_monk_combat_04",
				"pwh_gameplay_hearing_a_plague_monk_combat_05",
				"pwh_gameplay_hearing_a_plague_monk_combat_06",
				"pwh_gameplay_hearing_a_plague_monk_combat_07",
				"pwh_gameplay_hearing_a_plague_monk_combat_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_plague_monk_combat_01",
				"pwh_gameplay_hearing_a_plague_monk_combat_02",
				"pwh_gameplay_hearing_a_plague_monk_combat_03",
				"pwh_gameplay_hearing_a_plague_monk_combat_04",
				"pwh_gameplay_hearing_a_plague_monk_combat_05",
				"pwh_gameplay_hearing_a_plague_monk_combat_06",
				"pwh_gameplay_hearing_a_plague_monk_combat_07",
				"pwh_gameplay_hearing_a_plague_monk_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_Skaven_warpfire_thrower_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_01",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_02",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_03",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_04",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_05",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_01",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_02",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_03",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_04",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_05",
				"pwh_gameplay_hearing_a_Skaven_warpfire_thrower_06"
			},
			randomize_indexes = {}
		},
		pwh_crawl_drank = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "witch_hunter_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_drank_drunk"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_drank_drunk"
			}
		},
		pwh_gameplay_seeing_a_pm_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_plague_monk_01",
				"pwh_gameplay_seeing_a_plague_monk_02",
				"pwh_gameplay_seeing_a_plague_monk_03",
				"pwh_gameplay_seeing_a_plague_monk_04",
				"pwh_gameplay_seeing_a_plague_monk_05",
				"pwh_gameplay_seeing_a_plague_monk_06",
				"pwh_gameplay_seeing_a_plague_monk_07",
				"pwh_gameplay_seeing_a_plague_monk_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_plague_monk_01",
				"pwh_gameplay_seeing_a_plague_monk_02",
				"pwh_gameplay_seeing_a_plague_monk_03",
				"pwh_gameplay_seeing_a_plague_monk_04",
				"pwh_gameplay_seeing_a_plague_monk_05",
				"pwh_gameplay_seeing_a_plague_monk_06",
				"pwh_gameplay_seeing_a_plague_monk_07",
				"pwh_gameplay_seeing_a_plague_monk_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_dwarf_ranger_low_on_health_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_dwarf_ranger_low_on_health_02",
				"pwh_gameplay_dwarf_ranger_low_on_health_05",
				"pwh_gameplay_dwarf_ranger_low_on_health_06",
				"pwh_gameplay_dwarf_ranger_low_on_health_07"
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
			localization_strings = {
				"pwh_gameplay_dwarf_ranger_low_on_health_02",
				"pwh_gameplay_dwarf_ranger_low_on_health_05",
				"pwh_gameplay_dwarf_ranger_low_on_health_06",
				"pwh_gameplay_dwarf_ranger_low_on_health_07"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_chaos_wizard_plague_no_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_seeing_a_chaos_wizard_plague_01",
				"pwh_gameplay_seeing_a_chaos_wizard_plague_02",
				"pwh_gameplay_seeing_a_chaos_wizard_plague_03",
				"pwh_gameplay_seeing_a_chaos_wizard_plague_04"
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
			localization_strings = {
				"pwh_gameplay_seeing_a_chaos_wizard_plague_01",
				"pwh_gameplay_seeing_a_chaos_wizard_plague_02",
				"pwh_gameplay_seeing_a_chaos_wizard_plague_03",
				"pwh_gameplay_seeing_a_chaos_wizard_plague_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_chaos_wizard_wind_no_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_seeing_a_chaos_wizard_wind_01",
				"pwh_gameplay_seeing_a_chaos_wizard_wind_02",
				"pwh_gameplay_seeing_a_chaos_wizard_wind_03",
				"pwh_gameplay_seeing_a_chaos_wizard_wind_04"
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
			localization_strings = {
				"pwh_gameplay_seeing_a_chaos_wizard_wind_01",
				"pwh_gameplay_seeing_a_chaos_wizard_wind_02",
				"pwh_gameplay_seeing_a_chaos_wizard_wind_03",
				"pwh_gameplay_seeing_a_chaos_wizard_wind_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_chaos_wizard_tentacle_no_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_01",
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_02",
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_03",
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_04"
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
			localization_strings = {
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_01",
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_02",
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_03",
				"pwh_gameplay_seeing_a_chaos_wizard_tentacle_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_tips_wizard_wind_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_spawn_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_01",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_02",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_03",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_04",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_05",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_06",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_07",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_01",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_02",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_03",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_04",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_05",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_06",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_07",
				"pwh_gameplay_seeing_a_Skaven_warpfire_thrower_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_spots_bomb_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "seen_items",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_spots_bomb_10",
				"pwh_gameplay_spots_bomb_11",
				"pwh_gameplay_spots_bomb_12",
				"pwh_gameplay_spots_bomb_13",
				"pwh_gameplay_spots_bomb_14",
				"pwh_gameplay_spots_bomb_15",
				"pwh_gameplay_spots_bomb_16"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_spots_bomb_10",
				"pwh_gameplay_spots_bomb_11",
				"pwh_gameplay_spots_bomb_12",
				"pwh_gameplay_spots_bomb_13",
				"pwh_gameplay_spots_bomb_14",
				"pwh_gameplay_spots_bomb_15",
				"pwh_gameplay_spots_bomb_16"
			},
			randomize_indexes = {}
		},
		pwh_crawl_drunk_buff_begins_from_sick = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_crawl_drunk_buff_begins_from_sick_01",
				"pwh_crawl_drunk_buff_begins_from_sick_02",
				"pwh_crawl_drunk_buff_begins_from_sick_03",
				"pwh_crawl_drunk_buff_begins_from_sick_04",
				"pwh_crawl_drunk_buff_begins_from_sick_05",
				"pwh_crawl_drunk_buff_begins_from_sick_06"
			},
			dialogue_animations = {
				"dialogue_shout",
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
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_crawl_drunk_buff_begins_from_sick_01",
				"pwh_crawl_drunk_buff_begins_from_sick_02",
				"pwh_crawl_drunk_buff_begins_from_sick_03",
				"pwh_crawl_drunk_buff_begins_from_sick_04",
				"pwh_crawl_drunk_buff_begins_from_sick_05",
				"pwh_crawl_drunk_buff_begins_from_sick_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_rat_ogre_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_healing_draught_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "seen_items",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_spotted_liquid_01",
				"pwh_crawl_drunk_spotted_liquid_02",
				"pwh_crawl_drunk_spotted_liquid_03",
				"pwh_crawl_drunk_spotted_liquid_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_crawl_drunk_spotted_liquid_01",
				"pwh_crawl_drunk_spotted_liquid_02",
				"pwh_crawl_drunk_spotted_liquid_03",
				"pwh_crawl_drunk_spotted_liquid_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_chaos_warrior_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_chaos_warrior_01",
				"pwh_gameplay_seeing_a_chaos_warrior_02",
				"pwh_gameplay_seeing_a_chaos_warrior_03",
				"pwh_gameplay_seeing_a_chaos_warrior_04",
				"pwh_gameplay_seeing_a_chaos_warrior_05",
				"pwh_gameplay_seeing_a_chaos_warrior_06",
				"pwh_gameplay_seeing_a_chaos_warrior_07",
				"pwh_gameplay_seeing_a_chaos_warrior_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_chaos_warrior_01",
				"pwh_gameplay_seeing_a_chaos_warrior_02",
				"pwh_gameplay_seeing_a_chaos_warrior_03",
				"pwh_gameplay_seeing_a_chaos_warrior_04",
				"pwh_gameplay_seeing_a_chaos_warrior_05",
				"pwh_gameplay_seeing_a_chaos_warrior_06",
				"pwh_gameplay_seeing_a_chaos_warrior_07",
				"pwh_gameplay_seeing_a_chaos_warrior_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_skaven_warpfire_thrower_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_01",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_02",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_03",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_04",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_05",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_06",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_07",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_01",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_02",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_03",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_04",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_05",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_06",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_07",
				"pwh_gameplay_killing_a_Skaven_warpfire_thrower_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_chaos_wizard_tentacle_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_01",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_02",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_03",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_04",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_05",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_01",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_02",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_03",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_04",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_05",
				"pwh_gameplay_killing_a_chaos_wizard_tentacle_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_warrior_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_warrior_combat_01",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_02",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_03",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_04",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_05",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_06",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_07",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_warrior_combat_01",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_02",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_03",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_04",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_05",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_06",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_07",
				"pwh_gameplay_hearing_a_chaos_warrior_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_troll_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_spots_potion_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "seen_items",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_spotted_liquid_01",
				"pwh_crawl_drunk_spotted_liquid_02",
				"pwh_crawl_drunk_spotted_liquid_03",
				"pwh_crawl_drunk_spotted_liquid_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_crawl_drunk_spotted_liquid_01",
				"pwh_crawl_drunk_spotted_liquid_02",
				"pwh_crawl_drunk_spotted_liquid_03",
				"pwh_crawl_drunk_spotted_liquid_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_skaven_patrol_stormvermin_no_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_01",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_02",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_03",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_04",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_05",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_06",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_07"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_concerned",
				"face_concerned",
				"face_contempt",
				"face_nervous",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_01",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_02",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_03",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_04",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_05",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_06",
				"pwh_gameplay_seeing_a_skaven_patrol_stormvermin_07"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_chaos_warrior_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_killing_a_chaos_warrior_01",
				"pwh_gameplay_killing_a_chaos_warrior_02",
				"pwh_gameplay_killing_a_chaos_warrior_03",
				"pwh_gameplay_killing_a_chaos_warrior_04",
				"pwh_gameplay_killing_a_chaos_warrior_05",
				"pwh_gameplay_killing_a_chaos_warrior_06",
				"pwh_gameplay_killing_a_chaos_warrior_07",
				"pwh_gameplay_killing_a_chaos_warrior_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_chaos_warrior_01",
				"pwh_gameplay_killing_a_chaos_warrior_02",
				"pwh_gameplay_killing_a_chaos_warrior_03",
				"pwh_gameplay_killing_a_chaos_warrior_04",
				"pwh_gameplay_killing_a_chaos_warrior_05",
				"pwh_gameplay_killing_a_chaos_warrior_06",
				"pwh_gameplay_killing_a_chaos_warrior_07",
				"pwh_gameplay_killing_a_chaos_warrior_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_spawn_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_spawn_01",
				"pwh_gameplay_hearing_a_chaos_spawn_02",
				"pwh_gameplay_hearing_a_chaos_spawn_03",
				"pwh_gameplay_hearing_a_chaos_spawn_04",
				"pwh_gameplay_hearing_a_chaos_spawn_05",
				"pwh_gameplay_hearing_a_chaos_spawn_06",
				"pwh_gameplay_hearing_a_chaos_spawn_07",
				"pwh_gameplay_hearing_a_chaos_spawn_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_spawn_01",
				"pwh_gameplay_hearing_a_chaos_spawn_02",
				"pwh_gameplay_hearing_a_chaos_spawn_03",
				"pwh_gameplay_hearing_a_chaos_spawn_04",
				"pwh_gameplay_hearing_a_chaos_spawn_05",
				"pwh_gameplay_hearing_a_chaos_spawn_06",
				"pwh_gameplay_hearing_a_chaos_spawn_07",
				"pwh_gameplay_hearing_a_chaos_spawn_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_globadier_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_friendly_fire_bright_wizard_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_friendly_fire_bright_wizard_02",
				"pwh_gameplay_friendly_fire_bright_wizard_05",
				"pwh_gameplay_friendly_fire_bright_wizard_06",
				"pwh_gameplay_friendly_fire_bright_wizard_07",
				"pwh_gameplay_friendly_fire_bright_wizard_08",
				"pwh_gameplay_friendly_fire_bright_wizard_09"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwh_gameplay_friendly_fire_bright_wizard_02",
				"pwh_gameplay_friendly_fire_bright_wizard_05",
				"pwh_gameplay_friendly_fire_bright_wizard_06",
				"pwh_gameplay_friendly_fire_bright_wizard_07",
				"pwh_gameplay_friendly_fire_bright_wizard_08",
				"pwh_gameplay_friendly_fire_bright_wizard_09"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_troll_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_troll_combat_01",
				"pwh_gameplay_hearing_a_troll_combat_02",
				"pwh_gameplay_hearing_a_troll_combat_03",
				"pwh_gameplay_hearing_a_troll_combat_04",
				"pwh_gameplay_hearing_a_troll_combat_05",
				"pwh_gameplay_hearing_a_troll_combat_06",
				"pwh_gameplay_hearing_a_troll_combat_07",
				"pwh_gameplay_hearing_a_troll_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_troll_combat_01",
				"pwh_gameplay_hearing_a_troll_combat_02",
				"pwh_gameplay_hearing_a_troll_combat_03",
				"pwh_gameplay_hearing_a_troll_combat_04",
				"pwh_gameplay_hearing_a_troll_combat_05",
				"pwh_gameplay_hearing_a_troll_combat_06",
				"pwh_gameplay_hearing_a_troll_combat_07",
				"pwh_gameplay_hearing_a_troll_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_troll_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_troll_01",
				"pwh_gameplay_hearing_a_troll_02",
				"pwh_gameplay_hearing_a_troll_03",
				"pwh_gameplay_hearing_a_troll_04",
				"pwh_gameplay_hearing_a_troll_05",
				"pwh_gameplay_hearing_a_troll_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_troll_01",
				"pwh_gameplay_hearing_a_troll_02",
				"pwh_gameplay_hearing_a_troll_03",
				"pwh_gameplay_hearing_a_troll_04",
				"pwh_gameplay_hearing_a_troll_05",
				"pwh_gameplay_hearing_a_troll_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_rat_ogre_combat_no_drunk_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_skaven_rat_ogre_combat_01",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_combat_02",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_combat_03",
				"pwh_gameplay_first_time_seeing_a_skaven_rat_ogre_02",
				"pwh_gameplay_first_time_seeing_a_skaven_rat_ogre_01",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_01"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_contempt",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_skaven_rat_ogre_combat_01",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_combat_02",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_combat_03",
				"pwh_gameplay_first_time_seeing_a_skaven_rat_ogre_02",
				"pwh_gameplay_first_time_seeing_a_skaven_rat_ogre_01",
				"pwh_gameplay_hearing_a_skaven_rat_ogre_01"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_stormfiend_no_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_hearing_a_stormfiend_01",
				"pwh_gameplay_hearing_a_stormfiend_02",
				"pwh_gameplay_hearing_a_stormfiend_03",
				"pwh_gameplay_hearing_a_stormfiend_04",
				"pwh_gameplay_hearing_a_stormfiend_05",
				"pwh_gameplay_hearing_a_stormfiend_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_stormfiend_01",
				"pwh_gameplay_hearing_a_stormfiend_02",
				"pwh_gameplay_hearing_a_stormfiend_03",
				"pwh_gameplay_hearing_a_stormfiend_04",
				"pwh_gameplay_hearing_a_stormfiend_05",
				"pwh_gameplay_hearing_a_stormfiend_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_wood_elf_being_helped_up_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_wood_elf_being_helped_up_05",
				"pwh_gameplay_wood_elf_being_helped_up_06",
				"pwh_gameplay_wood_elf_being_helped_up_07",
				"pwh_gameplay_wood_elf_being_helped_up_08",
				"pwh_gameplay_wood_elf_being_helped_up_09",
				"pwh_gameplay_wood_elf_being_helped_up_10",
				"pwh_gameplay_wood_elf_being_helped_up_11",
				"pwh_gameplay_wood_elf_being_helped_up_12"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_wood_elf_being_helped_up_05",
				"pwh_gameplay_wood_elf_being_helped_up_06",
				"pwh_gameplay_wood_elf_being_helped_up_07",
				"pwh_gameplay_wood_elf_being_helped_up_08",
				"pwh_gameplay_wood_elf_being_helped_up_09",
				"pwh_gameplay_wood_elf_being_helped_up_10",
				"pwh_gameplay_wood_elf_being_helped_up_11",
				"pwh_gameplay_wood_elf_being_helped_up_12"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_healing_dwarf_ranger_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_healing_dwarf_ranger_03",
				"pwh_gameplay_healing_dwarf_ranger_04",
				"pwh_gameplay_healing_dwarf_ranger_05",
				"pwh_gameplay_healing_dwarf_ranger_06",
				"pwh_gameplay_healing_dwarf_ranger_07",
				"pwh_gameplay_healing_dwarf_ranger_08",
				"pwh_gameplay_healing_dwarf_ranger_09"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_healing_dwarf_ranger_03",
				"pwh_gameplay_healing_dwarf_ranger_04",
				"pwh_gameplay_healing_dwarf_ranger_05",
				"pwh_gameplay_healing_dwarf_ranger_06",
				"pwh_gameplay_healing_dwarf_ranger_07",
				"pwh_gameplay_healing_dwarf_ranger_08",
				"pwh_gameplay_healing_dwarf_ranger_09"
			},
			randomize_indexes = {}
		},
		pwh_activate_ability_bounty_hunter_non_drunk = {
			sound_events_n = 12,
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "witch_hunter_game_play_crawl",
			category = "activate_ability",
			dialogue_animations_n = 12,
			sound_events = {
				"pwh_activate_ability_bounty_hunter_01",
				"pwh_activate_ability_bounty_hunter_02",
				"pwh_activate_ability_bounty_hunter_03",
				"pwh_activate_ability_bounty_hunter_04",
				"pwh_activate_ability_bounty_hunter_05",
				"pwh_activate_ability_bounty_hunter_06",
				"pwh_activate_ability_bounty_hunter_07",
				"pwh_activate_ability_bounty_hunter_08",
				"pwh_activate_ability_bounty_hunter_09",
				"pwh_activate_ability_bounty_hunter_10",
				"pwh_activate_ability_bounty_hunter_11",
				"pwh_activate_ability_bounty_hunter_12"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_activate_ability_bounty_hunter_01",
				"pwh_activate_ability_bounty_hunter_02",
				"pwh_activate_ability_bounty_hunter_03",
				"pwh_activate_ability_bounty_hunter_04",
				"pwh_activate_ability_bounty_hunter_05",
				"pwh_activate_ability_bounty_hunter_06",
				"pwh_activate_ability_bounty_hunter_07",
				"pwh_activate_ability_bounty_hunter_08",
				"pwh_activate_ability_bounty_hunter_09",
				"pwh_activate_ability_bounty_hunter_10",
				"pwh_activate_ability_bounty_hunter_11",
				"pwh_activate_ability_bounty_hunter_12"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_wind_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_player_pounced_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_knocked_down_01",
				"pwh_crawl_drunk_knocked_down_02",
				"pwh_crawl_drunk_knocked_down_03",
				"pwh_crawl_drunk_knocked_down_04"
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
				"face_fear"
			},
			localization_strings = {
				"pwh_crawl_drunk_knocked_down_01",
				"pwh_crawl_drunk_knocked_down_02",
				"pwh_crawl_drunk_knocked_down_03",
				"pwh_crawl_drunk_knocked_down_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_01",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_02",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_03",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_04",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_05",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_06",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_07",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_01",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_02",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_03",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_04",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_05",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_06",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_07",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hears_incoming_horde_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_hears_incoming_horde_11",
				"pwh_gameplay_hears_incoming_horde_12",
				"pwh_gameplay_hears_incoming_horde_13",
				"pwh_gameplay_hears_incoming_horde_14",
				"pwh_gameplay_hears_incoming_horde_15",
				"pwh_gameplay_hears_incoming_horde_16",
				"pwh_gameplay_hears_incoming_horde_17"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_smug",
				"face_smug",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_hears_incoming_horde_11",
				"pwh_gameplay_hears_incoming_horde_12",
				"pwh_gameplay_hears_incoming_horde_13",
				"pwh_gameplay_hears_incoming_horde_14",
				"pwh_gameplay_hears_incoming_horde_15",
				"pwh_gameplay_hears_incoming_horde_16",
				"pwh_gameplay_hears_incoming_horde_17"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_tentacle_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_01",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_02",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_03",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_04",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_05",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_06",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_07",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_01",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_02",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_03",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_04",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_05",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_06",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_07",
				"pwh_gameplay_hearing_a_chaos_wizard_tentacle_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_bright_wizard_low_on_health_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_bright_wizard_low_on_health_05",
				"pwh_gameplay_bright_wizard_low_on_health_06",
				"pwh_gameplay_bright_wizard_low_on_health_07",
				"pwh_gameplay_bright_wizard_low_on_health_08"
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
			localization_strings = {
				"pwh_gameplay_bright_wizard_low_on_health_05",
				"pwh_gameplay_bright_wizard_low_on_health_06",
				"pwh_gameplay_bright_wizard_low_on_health_07",
				"pwh_gameplay_bright_wizard_low_on_health_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_plague_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_01",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_02",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_03",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_04",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_05",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_06",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_07",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_01",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_02",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_03",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_04",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_05",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_06",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_07",
				"pwh_gameplay_hearing_a_chaos_wizard_plague_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_ambush_horde_spawned_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_ambush_horde_spawned_02",
				"pwh_gameplay_ambush_horde_spawned_03",
				"pwh_gameplay_ambush_horde_spawned_05",
				"pwh_gameplay_ambush_horde_spawned_07",
				"pwh_gameplay_ambush_horde_spawned_08",
				"pwh_gameplay_ambush_horde_spawned_09",
				"pwh_gameplay_ambush_horde_spawned_10"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pwh_gameplay_ambush_horde_spawned_02",
				"pwh_gameplay_ambush_horde_spawned_03",
				"pwh_gameplay_ambush_horde_spawned_05",
				"pwh_gameplay_ambush_horde_spawned_07",
				"pwh_gameplay_ambush_horde_spawned_08",
				"pwh_gameplay_ambush_horde_spawned_09",
				"pwh_gameplay_ambush_horde_spawned_10"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_low_on_health_drunk = {
			sound_events_n = 10,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 10,
			sound_events = {
				"pwh_gameplay_low_on_health_03",
				"pwh_gameplay_low_on_health_04",
				"pwh_gameplay_low_on_health_09",
				"pwh_gameplay_low_on_health_10",
				"pwh_gameplay_low_on_health_11",
				"pwh_gameplay_low_on_health_12",
				"pwh_gameplay_low_on_health_13",
				"pwh_gameplay_low_on_health_14",
				"pwh_gameplay_low_on_health_15",
				"pwh_gameplay_low_on_health_16"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pwh_gameplay_low_on_health_03",
				"pwh_gameplay_low_on_health_04",
				"pwh_gameplay_low_on_health_09",
				"pwh_gameplay_low_on_health_10",
				"pwh_gameplay_low_on_health_11",
				"pwh_gameplay_low_on_health_12",
				"pwh_gameplay_low_on_health_13",
				"pwh_gameplay_low_on_health_14",
				"pwh_gameplay_low_on_health_15",
				"pwh_gameplay_low_on_health_16"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_chaos_warrior_champion_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_killing_a_chaos_warrior_champion_01",
				"pwh_gameplay_killing_a_chaos_warrior_champion_02",
				"pwh_gameplay_killing_a_chaos_warrior_champion_03",
				"pwh_gameplay_killing_a_chaos_warrior_champion_04",
				"pwh_gameplay_killing_a_chaos_warrior_champion_05",
				"pwh_gameplay_killing_a_chaos_warrior_champion_06",
				"pwh_gameplay_killing_a_chaos_warrior_champion_07",
				"pwh_gameplay_killing_a_chaos_warrior_champion_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_chaos_warrior_champion_01",
				"pwh_gameplay_killing_a_chaos_warrior_champion_02",
				"pwh_gameplay_killing_a_chaos_warrior_champion_03",
				"pwh_gameplay_killing_a_chaos_warrior_champion_04",
				"pwh_gameplay_killing_a_chaos_warrior_champion_05",
				"pwh_gameplay_killing_a_chaos_warrior_champion_06",
				"pwh_gameplay_killing_a_chaos_warrior_champion_07",
				"pwh_gameplay_killing_a_chaos_warrior_champion_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_Skaven_warpfire_thrower_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_spawn_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_spawn_combat_01",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_02",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_03",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_04",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_05",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_06",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_07",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_spawn_combat_01",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_02",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_03",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_04",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_05",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_06",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_07",
				"pwh_gameplay_hearing_a_chaos_spawn_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_dwarf_ranger_being_helped_up_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_dwarf_ranger_being_helped_up_05",
				"pwh_gameplay_dwarf_ranger_being_helped_up_06",
				"pwh_gameplay_dwarf_ranger_being_helped_up_07",
				"pwh_gameplay_dwarf_ranger_being_helped_up_08",
				"pwh_gameplay_dwarf_ranger_being_helped_up_09",
				"pwh_gameplay_dwarf_ranger_being_helped_up_10",
				"pwh_gameplay_dwarf_ranger_being_helped_up_11",
				"pwh_gameplay_dwarf_ranger_being_helped_up_12"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_dwarf_ranger_being_helped_up_05",
				"pwh_gameplay_dwarf_ranger_being_helped_up_06",
				"pwh_gameplay_dwarf_ranger_being_helped_up_07",
				"pwh_gameplay_dwarf_ranger_being_helped_up_08",
				"pwh_gameplay_dwarf_ranger_being_helped_up_09",
				"pwh_gameplay_dwarf_ranger_being_helped_up_10",
				"pwh_gameplay_dwarf_ranger_being_helped_up_11",
				"pwh_gameplay_dwarf_ranger_being_helped_up_12"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_rat_ogre_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_helped_by_wood_elf_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_helped_by_wood_elf_01",
				"pwh_gameplay_helped_by_wood_elf_02",
				"pwh_gameplay_helped_by_wood_elf_05",
				"pwh_gameplay_helped_by_wood_elf_06",
				"pwh_gameplay_helped_by_wood_elf_07"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_helped_by_wood_elf_01",
				"pwh_gameplay_helped_by_wood_elf_02",
				"pwh_gameplay_helped_by_wood_elf_05",
				"pwh_gameplay_helped_by_wood_elf_06",
				"pwh_gameplay_helped_by_wood_elf_07"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_healing_empire_soldier_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_healing_empire_soldier_05",
				"pwh_gameplay_healing_empire_soldier_06",
				"pwh_gameplay_healing_empire_soldier_07",
				"pwh_gameplay_healing_empire_soldier_08",
				"pwh_gameplay_healing_empire_soldier_09"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_healing_empire_soldier_05",
				"pwh_gameplay_healing_empire_soldier_06",
				"pwh_gameplay_healing_empire_soldier_07",
				"pwh_gameplay_healing_empire_soldier_08",
				"pwh_gameplay_healing_empire_soldier_09"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_stormfiend_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_scr_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_shield_clanrat_01",
				"pwh_gameplay_seeing_a_shield_clanrat_02",
				"pwh_gameplay_seeing_a_shield_clanrat_03",
				"pwh_gameplay_seeing_a_shield_clanrat_04",
				"pwh_gameplay_seeing_a_shield_clanrat_05",
				"pwh_gameplay_seeing_a_shield_clanrat_06",
				"pwh_gameplay_seeing_a_shield_clanrat_07",
				"pwh_gameplay_seeing_a_shield_clanrat_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_shield_clanrat_01",
				"pwh_gameplay_seeing_a_shield_clanrat_02",
				"pwh_gameplay_seeing_a_shield_clanrat_03",
				"pwh_gameplay_seeing_a_shield_clanrat_04",
				"pwh_gameplay_seeing_a_shield_clanrat_05",
				"pwh_gameplay_seeing_a_shield_clanrat_06",
				"pwh_gameplay_seeing_a_shield_clanrat_07",
				"pwh_gameplay_seeing_a_shield_clanrat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_stormfiend_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_stormfiend_01",
				"pwh_gameplay_seeing_a_stormfiend_02",
				"pwh_gameplay_seeing_a_stormfiend_03",
				"pwh_gameplay_seeing_a_stormfiend_04",
				"pwh_gameplay_seeing_a_stormfiend_05",
				"pwh_gameplay_seeing_a_stormfiend_06",
				"pwh_gameplay_seeing_a_stormfiend_07",
				"pwh_gameplay_seeing_a_stormfiend_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_stormfiend_01",
				"pwh_gameplay_seeing_a_stormfiend_02",
				"pwh_gameplay_seeing_a_stormfiend_03",
				"pwh_gameplay_seeing_a_stormfiend_04",
				"pwh_gameplay_seeing_a_stormfiend_05",
				"pwh_gameplay_seeing_a_stormfiend_06",
				"pwh_gameplay_seeing_a_stormfiend_07",
				"pwh_gameplay_seeing_a_stormfiend_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_bright_wizard_being_helped_up_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_bright_wizard_being_helped_up_05",
				"pwh_gameplay_bright_wizard_being_helped_up_06",
				"pwh_gameplay_bright_wizard_being_helped_up_07",
				"pwh_gameplay_bright_wizard_being_helped_up_08",
				"pwh_gameplay_bright_wizard_being_helped_up_09",
				"pwh_gameplay_bright_wizard_being_helped_up_10",
				"pwh_gameplay_bright_wizard_being_helped_up_11",
				"pwh_gameplay_bright_wizard_being_helped_up_12"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_bright_wizard_being_helped_up_05",
				"pwh_gameplay_bright_wizard_being_helped_up_06",
				"pwh_gameplay_bright_wizard_being_helped_up_07",
				"pwh_gameplay_bright_wizard_being_helped_up_08",
				"pwh_gameplay_bright_wizard_being_helped_up_09",
				"pwh_gameplay_bright_wizard_being_helped_up_10",
				"pwh_gameplay_bright_wizard_being_helped_up_11",
				"pwh_gameplay_bright_wizard_being_helped_up_12"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_stormfiend_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_friendly_fire_dwarf_ranger_drunk = {
			sound_events_n = 9,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 9,
			sound_events = {
				"pwh_gameplay_friendly_fire_dwarf_ranger_01",
				"pwh_gameplay_friendly_fire_dwarf_ranger_02",
				"pwh_gameplay_friendly_fire_dwarf_ranger_03",
				"pwh_gameplay_friendly_fire_dwarf_ranger_04",
				"pwh_gameplay_friendly_fire_dwarf_ranger_05",
				"pwh_gameplay_friendly_fire_dwarf_ranger_06",
				"pwh_gameplay_friendly_fire_dwarf_ranger_07",
				"pwh_gameplay_friendly_fire_dwarf_ranger_08",
				"pwh_gameplay_friendly_fire_dwarf_ranger_09"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_friendly_fire_dwarf_ranger_01",
				"pwh_gameplay_friendly_fire_dwarf_ranger_02",
				"pwh_gameplay_friendly_fire_dwarf_ranger_03",
				"pwh_gameplay_friendly_fire_dwarf_ranger_04",
				"pwh_gameplay_friendly_fire_dwarf_ranger_05",
				"pwh_gameplay_friendly_fire_dwarf_ranger_06",
				"pwh_gameplay_friendly_fire_dwarf_ranger_07",
				"pwh_gameplay_friendly_fire_dwarf_ranger_08",
				"pwh_gameplay_friendly_fire_dwarf_ranger_09"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_healing_wood_elf_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_healing_wood_elf_05",
				"pwh_gameplay_healing_wood_elf_06",
				"pwh_gameplay_healing_wood_elf_07",
				"pwh_gameplay_healing_wood_elf_08",
				"pwh_gameplay_healing_wood_elf_09"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_healing_wood_elf_05",
				"pwh_gameplay_healing_wood_elf_06",
				"pwh_gameplay_healing_wood_elf_07",
				"pwh_gameplay_healing_wood_elf_08",
				"pwh_gameplay_healing_wood_elf_09"
			},
			randomize_indexes = {}
		},
		pwh_special_ability_captain_non_drunk = {
			sound_events_n = 12,
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "witch_hunter_game_play_crawl",
			category = "activate_ability",
			dialogue_animations_n = 12,
			sound_events = {
				"pwh_activate_ability_captain_01",
				"pwh_activate_ability_captain_02",
				"pwh_activate_ability_captain_03",
				"pwh_activate_ability_captain_04",
				"pwh_activate_ability_captain_05",
				"pwh_activate_ability_captain_06",
				"pwh_activate_ability_captain_07",
				"pwh_activate_ability_captain_08",
				"pwh_activate_ability_captain_09",
				"pwh_activate_ability_captain_10",
				"pwh_activate_ability_captain_11",
				"pwh_activate_ability_captain_12"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_activate_ability_captain_01",
				"pwh_activate_ability_captain_02",
				"pwh_activate_ability_captain_03",
				"pwh_activate_ability_captain_04",
				"pwh_activate_ability_captain_05",
				"pwh_activate_ability_captain_06",
				"pwh_activate_ability_captain_07",
				"pwh_activate_ability_captain_08",
				"pwh_activate_ability_captain_09",
				"pwh_activate_ability_captain_10",
				"pwh_activate_ability_captain_11",
				"pwh_activate_ability_captain_12"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_knocked_down_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_knocked_down_01",
				"pwh_crawl_drunk_knocked_down_02",
				"pwh_crawl_drunk_knocked_down_03",
				"pwh_crawl_drunk_knocked_down_04"
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
				"face_fear"
			},
			localization_strings = {
				"pwh_crawl_drunk_knocked_down_01",
				"pwh_crawl_drunk_knocked_down_02",
				"pwh_crawl_drunk_knocked_down_03",
				"pwh_crawl_drunk_knocked_down_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_Skaven_warpfire_thrower_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_throwing_bomb_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_throwing_bomb_01",
				"pwh_gameplay_throwing_bomb_06",
				"pwh_gameplay_throwing_bomb_07",
				"pwh_gameplay_throwing_bomb_08",
				"pwh_gameplay_throwing_bomb_09"
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
			localization_strings = {
				"pwh_gameplay_throwing_bomb_01",
				"pwh_gameplay_throwing_bomb_06",
				"pwh_gameplay_throwing_bomb_07",
				"pwh_gameplay_throwing_bomb_08",
				"pwh_gameplay_throwing_bomb_09"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_pm_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_hearing_a_plague_monk_01",
				"pwh_gameplay_hearing_a_plague_monk_02",
				"pwh_gameplay_hearing_a_plague_monk_03",
				"pwh_gameplay_hearing_a_plague_monk_04",
				"pwh_gameplay_hearing_a_plague_monk_05",
				"pwh_gameplay_hearing_a_plague_monk_06",
				"pwh_gameplay_hearing_a_plague_monk_07",
				"pwh_gameplay_hearing_a_plague_monk_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_plague_monk_01",
				"pwh_gameplay_hearing_a_plague_monk_02",
				"pwh_gameplay_hearing_a_plague_monk_03",
				"pwh_gameplay_hearing_a_plague_monk_04",
				"pwh_gameplay_hearing_a_plague_monk_05",
				"pwh_gameplay_hearing_a_plague_monk_06",
				"pwh_gameplay_hearing_a_plague_monk_07",
				"pwh_gameplay_hearing_a_plague_monk_08"
			},
			randomize_indexes = {}
		},
		pwh_burp = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "witch_hunter_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_burp"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_burp"
			}
		},
		pwh_gameplay_helped_by_empire_soldier_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_gameplay_helped_by_empire_soldier_05",
				"pwh_gameplay_helped_by_empire_soldier_06",
				"pwh_gameplay_helped_by_empire_soldier_07",
				"pwh_gameplay_helped_by_empire_soldier_11"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_helped_by_empire_soldier_05",
				"pwh_gameplay_helped_by_empire_soldier_06",
				"pwh_gameplay_helped_by_empire_soldier_07",
				"pwh_gameplay_helped_by_empire_soldier_11"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_globadier_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_globadier_combat_no_drunk = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			sound_events = {
				"pwh_gameplay_hearing_a_globadier_combat_01",
				"pwh_gameplay_hearing_a_globadier_combat_02",
				"pwh_gameplay_hearing_a_globadier_combat_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_contempt"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_globadier_combat_01",
				"pwh_gameplay_hearing_a_globadier_combat_02",
				"pwh_gameplay_hearing_a_globadier_combat_03"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_empire_soldier_low_on_health_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_empire_soldier_low_on_health_01",
				"pwh_gameplay_empire_soldier_low_on_health_05",
				"pwh_gameplay_empire_soldier_low_on_health_06",
				"pwh_gameplay_empire_soldier_low_on_health_07",
				"pwh_gameplay_empire_soldier_low_on_health_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_empire_soldier_low_on_health_01",
				"pwh_gameplay_empire_soldier_low_on_health_05",
				"pwh_gameplay_empire_soldier_low_on_health_06",
				"pwh_gameplay_empire_soldier_low_on_health_07",
				"pwh_gameplay_empire_soldier_low_on_health_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_spots_health_drunk = {
			sound_events_n = 14,
			randomize_indexes_n = 0,
			face_animations_n = 14,
			database = "witch_hunter_game_play_crawl",
			category = "seen_items",
			dialogue_animations_n = 14,
			sound_events = {
				"pwh_gameplay_spots_health_01",
				"pwh_gameplay_spots_health_06",
				"pwh_gameplay_spots_health_07",
				"pwh_gameplay_spots_health_08",
				"pwh_gameplay_spots_health_09",
				"pwh_gameplay_spots_health_10",
				"pwh_gameplay_spots_health_11",
				"pwh_gameplay_spots_health_12",
				"pwh_gameplay_spots_health_13",
				"pwh_gameplay_spots_health_18",
				"pwh_gameplay_spots_health_19",
				"pwh_gameplay_spots_health_20",
				"pwh_gameplay_spots_health_21",
				"pwh_gameplay_spots_health_22"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_spots_health_01",
				"pwh_gameplay_spots_health_06",
				"pwh_gameplay_spots_health_07",
				"pwh_gameplay_spots_health_08",
				"pwh_gameplay_spots_health_09",
				"pwh_gameplay_spots_health_10",
				"pwh_gameplay_spots_health_11",
				"pwh_gameplay_spots_health_12",
				"pwh_gameplay_spots_health_13",
				"pwh_gameplay_spots_health_18",
				"pwh_gameplay_spots_health_19",
				"pwh_gameplay_spots_health_20",
				"pwh_gameplay_spots_health_21",
				"pwh_gameplay_spots_health_22"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_killing_a_stormfiend_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_killing_a_stormfiend_01",
				"pwh_gameplay_killing_a_stormfiend_02",
				"pwh_gameplay_killing_a_stormfiend_03",
				"pwh_gameplay_killing_a_stormfiend_04",
				"pwh_gameplay_killing_a_stormfiend_05",
				"pwh_gameplay_killing_a_stormfiend_06",
				"pwh_gameplay_killing_a_stormfiend_07",
				"pwh_gameplay_killing_a_stormfiend_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_killing_a_stormfiend_01",
				"pwh_gameplay_killing_a_stormfiend_02",
				"pwh_gameplay_killing_a_stormfiend_03",
				"pwh_gameplay_killing_a_stormfiend_04",
				"pwh_gameplay_killing_a_stormfiend_05",
				"pwh_gameplay_killing_a_stormfiend_06",
				"pwh_gameplay_killing_a_stormfiend_07",
				"pwh_gameplay_killing_a_stormfiend_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_chaos_wizard_wind_combat_no_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_03",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_04",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_05",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_06",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_07"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_03",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_04",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_05",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_06",
				"pwh_gameplay_hearing_a_chaos_wizard_wind_combat_07"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_self_heal_drunk = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_gameplay_self_heal_06",
				"pwh_gameplay_self_heal_02",
				"pwh_gameplay_self_heal_07",
				"pwh_gameplay_self_heal_08",
				"pwh_gameplay_self_heal_09",
				"pwh_gameplay_self_heal_10"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pwh_gameplay_self_heal_06",
				"pwh_gameplay_self_heal_02",
				"pwh_gameplay_self_heal_07",
				"pwh_gameplay_self_heal_08",
				"pwh_gameplay_self_heal_09",
				"pwh_gameplay_self_heal_10"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_ratling_gun_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_crawl_drunk_buff_begins = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 6,
			sound_events = {
				"pwh_crawl_drunk_buff_begins_01",
				"pwh_crawl_drunk_buff_begins_02",
				"pwh_crawl_drunk_buff_begins_03",
				"pwh_crawl_drunk_buff_begins_04",
				"pwh_crawl_drunk_buff_begins_05",
				"pwh_crawl_drunk_buff_begins_06"
			},
			dialogue_animations = {
				"dialogue_shout",
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
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_crawl_drunk_buff_begins_01",
				"pwh_crawl_drunk_buff_begins_02",
				"pwh_crawl_drunk_buff_begins_03",
				"pwh_crawl_drunk_buff_begins_04",
				"pwh_crawl_drunk_buff_begins_05",
				"pwh_crawl_drunk_buff_begins_06"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_gutter_runner_combat_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_hiccup = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "witch_hunter_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_hiccup"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_hiccup"
			}
		},
		pwh_gameplay_helped_by_dwarf_ranger_drunk = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 7,
			sound_events = {
				"pwh_gameplay_helped_by_dwarf_ranger_01",
				"pwh_gameplay_helped_by_dwarf_ranger_02",
				"pwh_gameplay_helped_by_dwarf_ranger_03",
				"pwh_gameplay_helped_by_dwarf_ranger_04",
				"pwh_gameplay_helped_by_dwarf_ranger_05",
				"pwh_gameplay_helped_by_dwarf_ranger_06",
				"pwh_gameplay_helped_by_dwarf_ranger_07"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_helped_by_dwarf_ranger_01",
				"pwh_gameplay_helped_by_dwarf_ranger_02",
				"pwh_gameplay_helped_by_dwarf_ranger_03",
				"pwh_gameplay_helped_by_dwarf_ranger_04",
				"pwh_gameplay_helped_by_dwarf_ranger_05",
				"pwh_gameplay_helped_by_dwarf_ranger_06",
				"pwh_gameplay_helped_by_dwarf_ranger_07"
			},
			randomize_indexes = {}
		},
		pwh_crawl_drunk_buff_wears_off = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_crawl_drunk_buff_wears_off_01",
				"pwh_crawl_drunk_buff_wears_off_02",
				"pwh_crawl_drunk_buff_wears_off_03",
				"pwh_crawl_drunk_buff_wears_off_04",
				"pwh_crawl_drunk_buff_wears_off_05",
				"pwh_crawl_drunk_buff_wears_off_06",
				"pwh_crawl_drunk_buff_wears_off_07",
				"pwh_crawl_drunk_buff_wears_off_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_crawl_drunk_buff_wears_off_01",
				"pwh_crawl_drunk_buff_wears_off_02",
				"pwh_crawl_drunk_buff_wears_off_03",
				"pwh_crawl_drunk_buff_wears_off_04",
				"pwh_crawl_drunk_buff_wears_off_05",
				"pwh_crawl_drunk_buff_wears_off_06",
				"pwh_crawl_drunk_buff_wears_off_07",
				"pwh_crawl_drunk_buff_wears_off_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_incoming_skaven_rat_ogre_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_incoming_skaven_rat_ogre_01",
				"pwh_gameplay_incoming_skaven_rat_ogre_05",
				"pwh_gameplay_incoming_skaven_rat_ogre_06",
				"pwh_gameplay_incoming_skaven_rat_ogre_02",
				"pwh_gameplay_incoming_skaven_rat_ogre_03",
				"pwh_gameplay_incoming_skaven_rat_ogre_04",
				"pwh_gameplay_incoming_skaven_rat_ogre_07",
				"pwh_gameplay_incoming_skaven_rat_ogre_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_incoming_skaven_rat_ogre_01",
				"pwh_gameplay_incoming_skaven_rat_ogre_05",
				"pwh_gameplay_incoming_skaven_rat_ogre_06",
				"pwh_gameplay_incoming_skaven_rat_ogre_02",
				"pwh_gameplay_incoming_skaven_rat_ogre_03",
				"pwh_gameplay_incoming_skaven_rat_ogre_04",
				"pwh_gameplay_incoming_skaven_rat_ogre_07",
				"pwh_gameplay_incoming_skaven_rat_ogre_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_seeing_a_chaos_warrior_champion_combat_no_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_01",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_02",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_03",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_04",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_05",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_06",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_07",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_01",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_02",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_03",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_04",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_05",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_06",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_07",
				"pwh_gameplay_seeing_a_chaos_warrior_champion_combat_08"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_hearing_a_skaven_ratling_gun_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_empire_soldier_being_helped_up_drunk = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pwh_gameplay_empire_soldier_being_helped_up_03",
				"pwh_gameplay_empire_soldier_being_helped_up_05",
				"pwh_gameplay_empire_soldier_being_helped_up_06",
				"pwh_gameplay_empire_soldier_being_helped_up_07",
				"pwh_gameplay_empire_soldier_being_helped_up_08",
				"pwh_gameplay_empire_soldier_being_helped_up_09",
				"pwh_gameplay_empire_soldier_being_helped_up_10",
				"pwh_gameplay_empire_soldier_being_helped_up_11"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_gameplay_empire_soldier_being_helped_up_03",
				"pwh_gameplay_empire_soldier_being_helped_up_05",
				"pwh_gameplay_empire_soldier_being_helped_up_06",
				"pwh_gameplay_empire_soldier_being_helped_up_07",
				"pwh_gameplay_empire_soldier_being_helped_up_08",
				"pwh_gameplay_empire_soldier_being_helped_up_09",
				"pwh_gameplay_empire_soldier_being_helped_up_10",
				"pwh_gameplay_empire_soldier_being_helped_up_11"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_friendly_fire_wood_elf_drunk = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pwh_gameplay_friendly_fire_wood_elf_05",
				"pwh_gameplay_friendly_fire_wood_elf_06",
				"pwh_gameplay_friendly_fire_wood_elf_07",
				"pwh_gameplay_friendly_fire_wood_elf_08",
				"pwh_gameplay_friendly_fire_wood_elf_09"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwh_gameplay_friendly_fire_wood_elf_05",
				"pwh_gameplay_friendly_fire_wood_elf_06",
				"pwh_gameplay_friendly_fire_wood_elf_07",
				"pwh_gameplay_friendly_fire_wood_elf_08",
				"pwh_gameplay_friendly_fire_wood_elf_09"
			},
			randomize_indexes = {}
		},
		pwh_gameplay_incoming_skaven_rat_ogre_drunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_game_play_crawl",
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			sound_events = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
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
			localization_strings = {
				"pwh_crawl_drunk_incoming_threat_01",
				"pwh_crawl_drunk_incoming_threat_02",
				"pwh_crawl_drunk_incoming_threat_03",
				"pwh_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {}
		}
	})
end
