return function ()
	define_rule({
		name = "pbw_level_crawl_intro_a",
		response = "pbw_level_crawl_intro_a",
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
				"level_crawl_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_crawl_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_crawl_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_crawl_intro_b",
		response = "pbw_level_crawl_intro_b",
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
				"level_crawl_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_crawl_intro_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_crawl_intro_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_level_crawl_intro_c",
		response = "pbw_level_crawl_intro_c",
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
				"level_crawl_intro_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"level_crawl_intro_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_crawl_intro_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_head_for_first_pub",
		response = "pbw_crawl_head_for_first_pub",
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
				"crawl_head_for_first_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_head_for_first_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_head_for_first_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_spot_first_pub",
		response = "pbw_crawl_spot_first_pub",
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
				"crawl_spot_first_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_spot_first_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_first_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_spot_first_pub_closer",
		response = "pbw_crawl_spot_first_pub_closer",
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
				"crawl_spot_first_pub_closer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_spot_first_pub_closer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_first_pub_closer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_old_path_blocked",
		response = "pbw_crawl_old_path_blocked",
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
				"crawl_old_path_blocked"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_old_path_blocked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_old_path_blocked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_shortcut",
		response = "pbw_crawl_shortcut",
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
				"crawl_shortcut"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_shortcut",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_shortcut",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_pub_brazers",
		response = "pbw_crawl_pub_brazers",
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
				"crawl_pub_brazers"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_pub_brazers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_brazers",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_pub_door",
		response = "pbw_crawl_pub_door",
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
				"crawl_pub_door"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_pub_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_pub_destroyed",
		response = "pbw_crawl_pub_destroyed",
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
				"crawl_pub_destroyed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_pub_destroyed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_destroyed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_pub_horde_end",
		response = "pbw_crawl_pub_horde_end",
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
				"crawl_pub_horde_end"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_horde_end",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_head_for_second_pub",
		response = "pbw_crawl_head_for_second_pub",
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
				"crawl_pub_horde_end"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_head_for_second_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_head_for_second_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_tunnel_passage",
		response = "pbw_crawl_tunnel_passage",
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
				"crawl_tunnel_passage"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_tunnel_passage",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_tunnel_passage",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_mid_level_banter",
		response = "pbw_crawl_mid_level_banter",
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
				"crawl_mid_level_banter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_mid_level_banter",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_mid_level_banter",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_pub_district_sign",
		response = "pbw_crawl_pub_district_sign",
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
				"crawl_pub_district_sign"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_pub_district_sign",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_district_sign",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_spot_second_pub",
		response = "pbw_crawl_spot_second_pub",
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
				"crawl_spot_second_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_have_a_drink",
		response = "pbw_crawl_have_a_drink",
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
				"crawl_spot_second_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_have_a_drink",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_have_a_drink",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_cheers",
		response = "pbw_crawl_cheers",
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
				"crawl_cheers"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
				"faction_memory",
				"crawl_cheers",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_heard_us",
		response = "pbw_crawl_heard_us",
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
				"crawl_heard_us"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_heard_us",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_heard_us",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_head_for_third_pub",
		response = "pbw_crawl_head_for_third_pub",
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
				"crawl_head_for_third_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_head_for_third_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_head_for_third_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_slaughter",
		response = "pbw_crawl_slaughter",
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
				"crawl_slaughter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_slaughter",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_slaughter",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_spot_third_pub",
		response = "pbw_crawl_spot_third_pub",
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
				"crawl_spot_third_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_get_into_third_pub",
		response = "pbw_crawl_get_into_third_pub",
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
				"crawl_get_into_third_pub"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_get_into_third_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_get_into_third_pub",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_end_event_keep_quiet",
		response = "pbw_crawl_end_event_keep_quiet",
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
				"crawl_end_event_keep_quiet"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_end_event_keep_quiet",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_keep_quiet",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_end_event_find_good_beer",
		response = "pbw_crawl_end_event_find_good_beer",
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
				"crawl_end_event_find_good_beer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_end_event_find_good_beer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_find_good_beer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_loud_crash_interact",
		response = "pbw_crawl_loud_crash_interact",
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
				"crawl_loud_crash_interact"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_loud_crash_interact",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_loud_crash_interact",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_loud_crash_reply",
		response = "pbw_crawl_loud_crash_reply",
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
				"crawl_loud_crash_interact"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_loud_crash_reply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_loud_crash_reply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_loud_crash_end_reply",
		response = "pbw_crawl_loud_crash_end_reply",
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
				"crawl_loud_crash_end_reply"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_loud_crash_end_reply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_loud_crash_end_reply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_upstairs",
		response = "pbw_crawl_upstairs",
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
				"crawl_upstairs"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_upstairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_upstairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_get_out_soon",
		response = "pbw_crawl_get_out_soon",
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
				"crawl_get_out_soon"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_get_out_soon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_get_out_soon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_end_event_way_open",
		response = "pbw_crawl_end_event_way_open",
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
				"crawl_end_event_way_open"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_end_event_way_open",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_way_open",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_end_event_keep_running",
		response = "pbw_crawl_end_event_keep_running",
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
				"crawl_end_event_keep_running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_end_event_keep_running",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_keep_running",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_end_event_tunnel",
		response = "pbw_crawl_end_event_tunnel",
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
				"crawl_end_event_tunnel"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_end_event_tunnel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_tunnel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_end_event_waystone",
		response = "pbw_crawl_end_event_waystone",
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
				"crawl_end_event_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_end_event_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_end_event_waystone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_crawl_pub_destroyed_reaction",
		response = "pbw_crawl_pub_destroyed_reaction",
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
				"crawl_pub_destroyed_reaction"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_pub_destroyed_reaction",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"crawl_pub_destroyed_reaction",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pbw_crawl_end_event_waystone = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_end_event_waystone_03",
				[2.0] = "pbw_crawl_end_event_waystone_04"
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
				[1.0] = 4.0359997749329,
				[2.0] = 2.7681667804718
			},
			localization_strings = {
				[1.0] = "pbw_crawl_end_event_waystone_03",
				[2.0] = "pbw_crawl_end_event_waystone_04"
			},
			randomize_indexes = {}
		},
		pbw_level_crawl_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_level_crawl_intro_a_01",
				[2.0] = "pbw_level_crawl_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.0053544044495,
				[2.0] = 5.0355625152588
			},
			localization_strings = {
				[1.0] = "pbw_level_crawl_intro_a_01",
				[2.0] = "pbw_level_crawl_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_loud_crash_end_reply = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_loud_crash_end_reply_01",
				[2.0] = "pbw_crawl_loud_crash_end_reply_02"
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
				[1.0] = 5.7657709121704,
				[2.0] = 3.3756248950958
			},
			localization_strings = {
				[1.0] = "pbw_crawl_loud_crash_end_reply_01",
				[2.0] = "pbw_crawl_loud_crash_end_reply_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_end_event_find_good_beer = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_end_event_find_good_beer_01",
				[2.0] = "pbw_crawl_end_event_find_good_beer_02"
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
				[1.0] = 6.8602499961853,
				[2.0] = 4.3000001907349
			},
			localization_strings = {
				[1.0] = "pbw_crawl_end_event_find_good_beer_01",
				[2.0] = "pbw_crawl_end_event_find_good_beer_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_old_path_blocked = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_old_path_blocked_02",
				[2.0] = "pbw_crawl_old_path_blocked_03"
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
				[1.0] = 6.673791885376,
				[2.0] = 7.4998331069946
			},
			localization_strings = {
				[1.0] = "pbw_crawl_old_path_blocked_02",
				[2.0] = "pbw_crawl_old_path_blocked_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_slaughter = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_slaughter_02",
				[2.0] = "pbw_crawl_slaughter_04"
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
				[1.0] = 2.8224167823791,
				[2.0] = 7.1331872940064
			},
			localization_strings = {
				[1.0] = "pbw_crawl_slaughter_02",
				[2.0] = "pbw_crawl_slaughter_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_pub_district_sign = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_pub_district_sign_01",
				[2.0] = "pbw_crawl_pub_district_sign_04"
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
				[1.0] = 4.3557710647583,
				[2.0] = 6.2819790840149
			},
			localization_strings = {
				[1.0] = "pbw_crawl_pub_district_sign_01",
				[2.0] = "pbw_crawl_pub_district_sign_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_mid_level_banter = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_mid_level_banter_02",
				[2.0] = "pbw_crawl_mid_level_banter_03"
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
				[1.0] = 8.5650625228882,
				[2.0] = 5.5786457061768
			},
			localization_strings = {
				[1.0] = "pbw_crawl_mid_level_banter_02",
				[2.0] = "pbw_crawl_mid_level_banter_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_pub_horde_end = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_pub_horde_end_02",
				[2.0] = "pbw_crawl_pub_horde_end_04"
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
				[1.0] = 5.0838541984558,
				[2.0] = 4.8098959922791
			},
			localization_strings = {
				[1.0] = "pbw_crawl_pub_horde_end_02",
				[2.0] = "pbw_crawl_pub_horde_end_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_spot_second_pub = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_spot_second_pub_01",
				[2.0] = "pbw_crawl_spot_second_pub_04"
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
				[1.0] = 5.0563125610352,
				[2.0] = 5.7341876029968
			},
			localization_strings = {
				[1.0] = "pbw_crawl_spot_second_pub_01",
				[2.0] = "pbw_crawl_spot_second_pub_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_end_event_way_open = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_end_event_way_open_03",
				[2.0] = "pbw_crawl_end_event_way_open_04"
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
				[1.0] = 1.9022916555405,
				[2.0] = 1.9505833387375
			},
			localization_strings = {
				[1.0] = "pbw_crawl_end_event_way_open_03",
				[2.0] = "pbw_crawl_end_event_way_open_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_pub_brazers = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_pub_brazers_02",
				[2.0] = "pbw_crawl_pub_brazers_04"
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
				[1.0] = 3.3995208740234,
				[2.0] = 7.9726877212524
			},
			localization_strings = {
				[1.0] = "pbw_crawl_pub_brazers_02",
				[2.0] = "pbw_crawl_pub_brazers_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_spot_third_pub = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_spot_third_pub_01",
				[2.0] = "pbw_crawl_spot_third_pub_03"
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
				[1.0] = 3.4000000953674,
				[2.0] = 5.7106251716614
			},
			localization_strings = {
				[1.0] = "pbw_crawl_spot_third_pub_01",
				[2.0] = "pbw_crawl_spot_third_pub_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_get_into_third_pub = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_get_into_third_pub_02",
				[2.0] = "pbw_crawl_get_into_third_pub_04"
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
				[1.0] = 4.8221459388733,
				[2.0] = 5.2547707557678
			},
			localization_strings = {
				[1.0] = "pbw_crawl_get_into_third_pub_02",
				[2.0] = "pbw_crawl_get_into_third_pub_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_loud_crash_reply = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_crawl",
			category = "cut_scene",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_crawl_loud_crash_reply_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 4.207396030426
			},
			localization_strings = {
				[1.0] = "pbw_crawl_loud_crash_reply_01"
			}
		},
		pbw_crawl_shortcut = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_shortcut_01",
				[2.0] = "pbw_crawl_shortcut_04"
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
				[1.0] = 2.2321457862854,
				[2.0] = 5.7674584388733
			},
			localization_strings = {
				[1.0] = "pbw_crawl_shortcut_01",
				[2.0] = "pbw_crawl_shortcut_04"
			},
			randomize_indexes = {}
		},
		pbw_level_crawl_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_level_crawl_intro_c_01",
				[2.0] = "pbw_level_crawl_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_angry",
				[2.0] = "face_angry"
			},
			sound_events_duration = {
				[1.0] = 3.2605624198914,
				[2.0] = 6.3821249008179
			},
			localization_strings = {
				[1.0] = "pbw_level_crawl_intro_c_01",
				[2.0] = "pbw_level_crawl_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_have_a_drink = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_have_a_drink_03",
				[2.0] = "pbw_crawl_have_a_drink_04"
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
				[1.0] = 3.2439999580383,
				[2.0] = 5.0121040344238
			},
			localization_strings = {
				[1.0] = "pbw_crawl_have_a_drink_03",
				[2.0] = "pbw_crawl_have_a_drink_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_heard_us = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_heard_us_01",
				[2.0] = "pbw_crawl_heard_us_03"
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
				[1.0] = 4.3652501106262,
				[2.0] = 2.9943542480469
			},
			localization_strings = {
				[1.0] = "pbw_crawl_heard_us_01",
				[2.0] = "pbw_crawl_heard_us_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_end_event_keep_quiet = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_end_event_keep_quiet_01",
				[2.0] = "pbw_crawl_end_event_keep_quiet_02"
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
				[1.0] = 3.4567,
				[2.0] = 3.4567
			},
			localization_strings = {
				[1.0] = "pbw_crawl_end_event_keep_quiet_01",
				[2.0] = "pbw_crawl_end_event_keep_quiet_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_end_event_tunnel = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_end_event_tunnel_02",
				[2.0] = "pbw_crawl_end_event_tunnel_03"
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
				[1.0] = 5.7347917556763,
				[2.0] = 5.3527293205261
			},
			localization_strings = {
				[1.0] = "pbw_crawl_end_event_tunnel_02",
				[2.0] = "pbw_crawl_end_event_tunnel_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_end_event_keep_running = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_end_event_keep_running_01",
				[2.0] = "pbw_crawl_end_event_keep_running_02"
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
				[1.0] = 2.681479215622,
				[2.0] = 0.82125002145767
			},
			localization_strings = {
				[1.0] = "pbw_crawl_end_event_keep_running_01",
				[2.0] = "pbw_crawl_end_event_keep_running_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_head_for_first_pub = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_crawl",
			category = "cut_scene",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_crawl_head_for_first_pub_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 5.709520816803
			},
			localization_strings = {
				[1.0] = "pbw_crawl_head_for_first_pub_03"
			}
		},
		pbw_crawl_pub_door = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_pub_door_01",
				[2.0] = "pbw_crawl_pub_door_04"
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
				[1.0] = 2.2449374198914,
				[2.0] = 3.2339999675751
			},
			localization_strings = {
				[1.0] = "pbw_crawl_pub_door_01",
				[2.0] = "pbw_crawl_pub_door_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_pub_destroyed = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_crawl",
			category = "cut_scene",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_crawl_pub_destroyed_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_fear"
			},
			sound_events_duration = {
				[1.0] = 2.9893751144409
			},
			localization_strings = {
				[1.0] = "pbw_crawl_pub_destroyed_03"
			}
		},
		pbw_crawl_spot_first_pub = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_spot_first_pub_02",
				[2.0] = "pbw_crawl_spot_first_pub_03"
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
				[1.0] = 4.3829164505005,
				[2.0] = 5.2245206832886
			},
			localization_strings = {
				[1.0] = "pbw_crawl_spot_first_pub_02",
				[2.0] = "pbw_crawl_spot_first_pub_03"
			},
			randomize_indexes = {}
		},
		pbw_level_crawl_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_level_crawl_intro_b_01",
				[2.0] = "pbw_level_crawl_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_calm",
				[2.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.7796041965485,
				[2.0] = 2.3402500152588
			},
			localization_strings = {
				[1.0] = "pbw_level_crawl_intro_b_01",
				[2.0] = "pbw_level_crawl_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_loud_crash_interact = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_crawl",
			category = "cut_scene",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_crawl_loud_crash_interact_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.9284374713898
			},
			localization_strings = {
				[1.0] = "pbw_crawl_loud_crash_interact_01"
			}
		},
		pbw_crawl_head_for_second_pub = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_head_for_second_pub_01",
				[2.0] = "pbw_crawl_head_for_second_pub_02"
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
				[1.0] = 6.3776249885559,
				[2.0] = 6.6429581642151
			},
			localization_strings = {
				[1.0] = "pbw_crawl_head_for_second_pub_01",
				[2.0] = "pbw_crawl_head_for_second_pub_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_spot_first_pub_closer = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_spot_first_pub_closer_01",
				[2.0] = "pbw_crawl_spot_first_pub_closer_03"
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
				[1.0] = 3.0938959121704,
				[2.0] = 6.0308332443237
			},
			localization_strings = {
				[1.0] = "pbw_crawl_spot_first_pub_closer_01",
				[2.0] = "pbw_crawl_spot_first_pub_closer_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_head_for_third_pub = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_head_for_third_pub_01",
				[2.0] = "pbw_crawl_head_for_third_pub_03"
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
				[1.0] = 5.966854095459,
				[2.0] = 4.9378333091736
			},
			localization_strings = {
				[1.0] = "pbw_crawl_head_for_third_pub_01",
				[2.0] = "pbw_crawl_head_for_third_pub_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_tunnel_passage = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_tunnel_passage_02",
				[2.0] = "pbw_crawl_tunnel_passage_03"
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
				[1.0] = 2.9913749694824,
				[2.0] = 4.3185000419617
			},
			localization_strings = {
				[1.0] = "pbw_crawl_tunnel_passage_02",
				[2.0] = "pbw_crawl_tunnel_passage_03"
			},
			randomize_indexes = {}
		},
		pbw_crawl_pub_destroyed_reaction = {
			sound_events_n = 8,
			face_animations_n = 8,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_curse_01",
				"pbw_curse_02",
				"pbw_curse_03",
				"pbw_curse_04",
				"pbw_curse_05",
				"pbw_curse_06",
				"pbw_curse_07",
				"pbw_curse_08"
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
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				1.7620625495911,
				1.6899166107178,
				1.2837707996368,
				1.3013957738876,
				1.5967916250229,
				2.7104375362396,
				1.8352500200272,
				1.8317500352859
			},
			localization_strings = {
				"pbw_curse_01",
				"pbw_curse_02",
				"pbw_curse_03",
				"pbw_curse_04",
				"pbw_curse_05",
				"pbw_curse_06",
				"pbw_curse_07",
				"pbw_curse_08"
			},
			randomize_indexes = {}
		},
		pbw_crawl_get_out_soon = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_get_out_soon_01",
				[2.0] = "pbw_crawl_get_out_soon_02"
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
				[1.0] = 7.7020206451416,
				[2.0] = 5.8910207748413
			},
			localization_strings = {
				[1.0] = "pbw_crawl_get_out_soon_01",
				[2.0] = "pbw_crawl_get_out_soon_02"
			},
			randomize_indexes = {}
		},
		pbw_crawl_cheers = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_crawl_cheers_01",
				"pbw_crawl_cheers_02",
				"pbw_crawl_cheers_03",
				"pbw_crawl_cheers_04"
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
				3.865770816803,
				2.7999999523163,
				2.8738124370575,
				8.0705833435059
			},
			localization_strings = {
				"pbw_crawl_cheers_01",
				"pbw_crawl_cheers_02",
				"pbw_crawl_cheers_03",
				"pbw_crawl_cheers_04"
			},
			randomize_indexes = {}
		},
		pbw_crawl_upstairs = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "bright_wizard_crawl",
			randomize_indexes_n = 0,
			category = "cut_scene",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_crawl_upstairs_01",
				[2.0] = "pbw_crawl_upstairs_02"
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
				[1.0] = 2.3374166488648,
				[2.0] = 4.5253124237061
			},
			localization_strings = {
				[1.0] = "pbw_crawl_upstairs_01",
				[2.0] = "pbw_crawl_upstairs_02"
			},
			randomize_indexes = {}
		}
	})
end
