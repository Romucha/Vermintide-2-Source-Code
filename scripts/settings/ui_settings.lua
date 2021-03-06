require("scripts/ui/ui_layer")
require("scripts/utils/colors")

UISettings = {
	bots_level_display_text = "BOT",
	tooltip_fade_in_speed = 4,
	start_drag_threshold = 0.15,
	double_click_threshold = 0.1,
	crafting_progress_time = 0.5,
	max_craft_material_presentation_amount = 999,
	crafting_animation_wait_time = 0.5,
	console_menu_camera_move_duration = 0.5,
	tooltip_wait_duration = 0.1,
	max_inventory_items = 1000,
	hero_panel_height = 120,
	wait_for_mip_streaming_items = false,
	use_subtitles = true,
	max_fatigue_shields = 20,
	crafting_animation_out_time = 0.3,
	chest_upgrade_score_topics_min_duration = 0.5,
	chest_upgrade_score_topics_max_duration = 7,
	crafting_animation_in_time = 0.3,
	wait_for_mip_streaming_character = true,
	console_menu_rect_color = Colors.get_color_table_with_alpha("console_menu_rect", 125),
	console_start_game_menu_rect_color = Colors.get_color_table_with_alpha("console_menu_rect", 125),
	game_start_windows = {
		frame = "menu_frame_09",
		background = "menu_frame_bg_01",
		spacing = 25,
		large_window_frame = "menu_frame_08",
		size = {
			520,
			820
		},
		large_window_size = {
			1680,
			900
		}
	},
	game_start_windows_console = {
		frame = "menu_frame_09",
		background = "menu_frame_bg_01",
		spacing = 25,
		large_window_frame = "menu_frame_08",
		size = {
			520,
			740
		},
		large_window_size = {
			1680,
			900
		}
	},
	mission_selection_map_size = {
		1630,
		840
	},
	dice_type_success_sides = {
		gold = 4,
		metal = 3,
		warpstone = 6,
		wood = 2
	},
	subtitles_font_size = Application.user_setting("subtitles_font_size") or 20,
	subtitles_background_alpha = 2.55 * (Application.user_setting("subtitles_background_opacity") or 20),
	root_scale = {
		Application.user_setting("root_scale_x") or 1,
		Application.user_setting("root_scale_y") or 1
	},
	hud_scale = Application.user_setting("hud_scale") or 100,
	hud_clamp_ui_scaling = Application.user_setting("hud_clamp_ui_scaling") or false,
	use_custom_hud_scale = Application.user_setting("use_custom_hud_scale") or false,
	use_gamepad_menu_layout = Application.user_setting("use_gamepad_menu_layout") or false,
	use_gamepad_hud_layout = Application.user_setting("use_gamepad_hud_layout") or false,
	interaction = {
		bar = {
			fade_in = 0.1,
			fade_out = 0.1
		}
	},
	inventory_hud = {
		select_animation_duration = 0.2,
		slot_default_alpha = 170,
		slot_select_size = 62,
		slot_select_alpha = 255,
		slot_default_size = 46,
		slot_spacing = 2,
		equip_animation_duration = 0.2,
		bar_lit_fade_out_duration = 0.12,
		bar_lit_pulse_duration = 3
	},
	inventory = {
		item_preview_fade_in_time = 0.2,
		item_list = {
			intro = {
				total_tween_time = 0.2,
				background_fade_in_end_fraction = 0.8,
				background_fade_in_start_fraction = 0.4,
				item_fade_in_end_fraction = 0.4,
				item_fade_in_start_fraction = 0,
				text_fade_in_start_fraction = 0.8,
				non_room_item_alpha_value = 120,
				text_fade_in_end_fraction = 1
			},
			border = {
				alpha_select = 255,
				select_fade_in_time = 0.2,
				alpha_hover = 178.5,
				hover_fade_out_time = 0.1,
				alpha_normal = 0,
				hover_fade_in_time = 0.1,
				select_fade_out_time = 0.2
			}
		},
		button_bars = {
			selected_fade_in = 0.2,
			selected_fade_out = 0.04,
			background = {
				fade_out_time = 0.1,
				alpha_normal = 178.5,
				alpha_hover = 255,
				fade_in_time = 0.1
			},
			icon = {
				fade_out_time = 0.1,
				alpha_normal = 178.5,
				alpha_hover = 255,
				fade_in_time = 0.1
			}
		}
	},
	map = {
		camera_time_exit = 0.5,
		camera_time_enter = 0.5,
		show_debug_levels = true
	},
	end_screen = {
		victory_fade_out = 0.8,
		defeat_fade_out = 0.5,
		victory_fade_in = 0.5,
		gdc_fade_in = 0.2,
		gdc_fade_out = 0.5,
		text_fade_in = 0.5,
		display_time = 5,
		defeat_fade_in = 1.5,
		continue_fade_out = 0.5,
		continue_fade_in = 0.5,
		background_fade_out = 0.9,
		text_fade_out = 0.3,
		background_fade_in = 1.1
	},
	summary_screen = {
		reward_screen_fade_in_time = 0.2,
		summary_entry_start_delay = 0.4,
		tween_in_time = 1,
		tween_out_time = 0.8,
		summary_entry_experience_count_time = 0.5,
		reward_screen_display_time = 1.5,
		reward_screen_fade_out_time = 0.4,
		summary_entry_fade_in_time = 0.2,
		summary_dice_fade_in_time = 0.2,
		element_presentation_time = 0.7,
		element_presentation_experience_count_start_time = 0.2,
		bar_progress_min_time = 2,
		start_delay_time = 2,
		bar_progress_max_time = 3,
		bar_progress_experience_time_multiplier = 0.006,
		speed_up_experience_time_multiplier = 2.5
	},
	scoreboard = {
		topic_select_duration = 0.15,
		arrow_select_duration = 0.12,
		arrow_dehover_duration = 0.12,
		topic_hover_alpha = 255,
		auto_pilot_select_wait_time = 6,
		topic_data_fade_in_duration = 0.2,
		arrow_deselect_duration = 0.12,
		arrow_hover_duration = 0.12,
		player_list_pluse_duration = 0.5,
		topic_hover_duration = 0.15,
		open_duration = 0.4,
		topic_dehover_duration = 0.15,
		topic_deselect_duration = 0.15,
		auto_pilot_wait_time = 15,
		topic_normal_alpha = 180,
		close_duration = 0.4,
		topic_scroll_duration = 0.4
	},
	area_indicator = {
		wait_time = 1,
		fade_time = 1
	},
	mission_objective = {
		wait_time = 3,
		fade_time = 1
	},
	crosshair = {
		hit_marker_fade = 0.6
	},
	unit_frames = {
		health_bar_lerp_time = 1,
		low_health_threshold = 0.42,
		low_health_animation_alpha_from = 255,
		low_health_animation_alpha_to = 200,
		low_health_animation_time = 5,
		health_step_value = 10
	},
	cutscene_ui = {
		letterbox = {
			bar_height = 70
		},
		fx_fade = {
			hold_time = 0,
			fade_out_time = 2,
			fade_in_time = 2
		},
		fx_text_popup = {
			hold_time = 3,
			fade_out_time = 1,
			fade_in_time = 1
		}
	},
	tutorial = {
		tooltip = {
			center_clamp_distance = 400
		},
		mission_tooltip = {
			time_lerp_multiplier = 0.24,
			fade_in_time = 0.15,
			alpha_fade_out_value = 100,
			start_scale_distance = 10,
			fade_out_time = 0.15,
			minimum_icon_scale = 0.5,
			pixel_snap_threshold = 1.4,
			end_scale_distance = 100,
			start_lerp_speed = 0.05,
			distance_from_center = {
				width = 400,
				height = 200
			}
		},
		objective_tooltip = {
			time_lerp_multiplier = 0.24,
			fade_in_time = 0.15,
			alpha_fade_out_value = 100,
			start_scale_distance = 10,
			fade_out_time = 0.15,
			minimum_icon_scale = 0.5,
			pixel_snap_threshold = 1.4,
			end_scale_distance = 100,
			start_lerp_speed = 0.05,
			distance_from_center = {
				width = 400,
				height = 200
			}
		}
	},
	chat = {
		output_background_alpha = 255,
		chat_close_delay = 6,
		scrollbar_stroke_alpha = 80,
		tab_notification_alpha_1 = 0,
		output_text_alpha = 255,
		scrollbar_background_stroke_alpha = 80,
		tab_notification_alpha_2 = 120,
		chat_close_fade_length = 2,
		window_background_alpha = 110,
		scrollbar_alpha = 160,
		input_caret_alpha = 255,
		input_background_alpha = 180,
		scrollbar_background_alpha = 80,
		input_text_alpha = 255
	},
	positive_reinforcement = {
		fade_duration = 0.5,
		show_duration = 4,
		increment_duration = 0.33
	},
	damage_feedback = {
		fade_duration = 0.5,
		show_duration = 4,
		increment_duration = 0.33
	},
	use_ps4_input_icons = Application.user_setting("gamepad_use_ps4_style_input_icons"),
	breed_textures = {
		skaven_stormfiend_demo = "unit_frame_portrait_enemy_stormfiend",
		skaven_plague_monk = "unit_frame_portrait_enemy_plague_monk",
		hero_wh_zealot = "small_unit_frame_portrait_victor_zealot",
		beastmen_bestigor = "unit_frame_portrait_enemy_bestigor",
		skaven_storm_vermin_warlord = "unit_frame_portrait_enemy_warlord",
		skaven_poison_wind_globadier = "unit_frame_portrait_enemy_poison_wind",
		hero_bw_scholar = "small_unit_frame_portrait_sienna_scholar",
		skaven_gutter_runner = "unit_frame_portrait_enemy_gutter_runner",
		hero_es_mercenary = "small_unit_frame_portrait_kruber_mercenary",
		beastmen_minotaur = "unit_frame_portrait_enemy_minotaur",
		chaos_fanatic = "unit_frame_portrait_enemy_fanatic",
		skaven_slave = "unit_frame_portrait_enemy_slave_rat",
		chaos_marauder = "unit_frame_portrait_enemy_chaos_marauder",
		hero_wh_bountyhunter = "small_unit_frame_portrait_victor_bountyhunter",
		skaven_clan_rat = "unit_frame_portrait_enemy_clanrat",
		skaven_stormfiend = "unit_frame_portrait_enemy_stormfiend",
		chaos_berzerker = "unit_frame_portrait_enemy_savage",
		chaos_raider = "unit_frame_portrait_enemy_raider",
		chaos_exalted_sorcerer = "unit_frame_portrait_enemy_sorcerer_boss",
		chaos_tentacle_sorcerer = "unit_frame_portrait_enemy_chaos_sorcerer",
		chaos_vortex_sorcerer = "unit_frame_portrait_enemy_sorcerer_vortex",
		skaven_rat_ogre = "unit_frame_portrait_enemy_rat_ogre",
		chaos_vortex = "unit_frame_portrait_enemy_sorcerer_vortex",
		chaos_plague_sorcerer = "unit_frame_portrait_enemy_chaos_sorcerer",
		chaos_troll = "unit_frame_portrait_enemy_chaos_troll",
		chaos_spawn = "unit_frame_portrait_enemy_chaos_spawn",
		chaos_corruptor_sorcerer = "unit_frame_portrait_enemy_sorcerer_corruptor",
		hero_dr_slayer = "small_unit_frame_portrait_bardin_slayer",
		skaven_stormfiend_boss = "unit_frame_portrait_enemy_stormfiend",
		skaven_storm_vermin = "unit_frame_portrait_enemy_stormvermin",
		beastmen_gor = "unit_frame_portrait_enemy_standard_bearer",
		skaven_storm_vermin_with_shield = "unit_frame_portrait_enemy_stormvermin",
		hero_we_waywatcher = "small_unit_frame_portrait_kerillian_waywatcher",
		chaos_zombie = "unit_frame_portrait_enemy_plague_zombie",
		hero_we_maidenguard = "small_unit_frame_portrait_kerillian_maidenguard",
		hero_bw_adept = "small_unit_frame_portrait_sienna_adept",
		chaos_exalted_champion_warcamp = "unit_frame_portrait_enemy_chaos_warrior",
		skaven_warpfire_thrower = "unit_frame_portrait_enemy_warpfire",
		skaven_clan_rat_with_shield = "unit_frame_portrait_enemy_clanrat",
		hero_we_shade = "small_unit_frame_portrait_kerillian_shade",
		chaos_exalted_champion_norsca = "unit_frame_portrait_enemy_chaos_warrior",
		hero_bw_unchained = "small_unit_frame_portrait_sienna_unchained",
		chaos_tentacle = "unit_frame_portrait_enemy_chaos_sorcerer",
		skaven_loot_rat = "unit_frame_portrait_enemy_lootrat",
		skaven_pack_master = "unit_frame_portrait_enemy_packmaster",
		chaos_spawn_exalted_champion_norsca = "unit_frame_portrait_enemy_chaos_spawn",
		hero_dr_ranger = "small_unit_frame_portrait_bardin_ranger",
		beastmen_ungor = "unit_frame_portrait_enemy_standard_bearer",
		skaven_ratling_gunner = "unit_frame_portrait_enemy_ratling_gunner",
		skaven_storm_vermin_champion = "unit_frame_portrait_enemy_stormvermin",
		skaven_grey_seer = "unit_frame_portrait_enemy_rasknitt",
		chaos_warrior = "unit_frame_portrait_enemy_chaos_warrior",
		hero_es_huntsman = "small_unit_frame_portrait_kruber_huntsman",
		hero_dr_ironbreaker = "small_unit_frame_portrait_bardin_ironbreaker",
		hero_es_knight = "small_unit_frame_portrait_kruber_knight",
		beastmen_ungor_archer = "unit_frame_portrait_enemy_standard_bearer",
		beastmen_standard_bearer = "unit_frame_portrait_enemy_standard_bearer",
		chaos_marauder_with_shield = "unit_frame_portrait_enemy_chaos_marauder",
		hero_wh_captain = "small_unit_frame_portrait_victor_captain",
		skaven_storm_vermin_commander = "unit_frame_portrait_enemy_stormvermin",
		beastmen_standard_bearer_crater = "unit_frame_portrait_enemy_standard_bearer"
	},
	chest_upgrade_score_topics = {
		{
			texture = "loot_mutator_icon_06",
			name = "game_won",
			display_name = "end_screen_chest_view_mission_completed"
		},
		{
			texture = "loot_mutator_icon_03",
			name = "quickplay",
			display_name = "end_screen_chest_view_quickplay_bonus"
		},
		{
			texture = "loot_objective_icon_02",
			name = "tome",
			display_name = "end_screen_chest_view_tomes"
		},
		{
			texture = "loot_objective_icon_01",
			name = "grimoire",
			display_name = "end_screen_chest_view_grimoires"
		},
		{
			texture = "loot_mutator_icon_05",
			name = "loot_dice",
			display_name = "end_screen_chest_view_loot_dice"
		},
		{
			texture = "loot_mutator_icon_04",
			name = "max_random_score",
			display_name = "end_screen_chest_view_random_bonus"
		}
	},
	default_items = {
		es_1h_sword = {
			inventory_icon = "icon_wpn_emp_sword_02_t1",
			description = "description_default_empire_soldier_es_1h_sword",
			display_name = "display_name_default_empire_soldier_es_1h_sword"
		},
		es_1h_mace = {
			inventory_icon = "icon_wpn_emp_mace_02_t1",
			description = "description_default_empire_soldier_es_1h_mace",
			display_name = "display_name_default_empire_soldier_es_1h_mace"
		},
		es_2h_sword_executioner = {
			inventory_icon = "icon_wpn_emp_sword_exe_01_t1",
			description = "description_default_empire_soldier_es_exe_sword",
			display_name = "display_name_default_empire_soldier_es_exe_sword"
		},
		es_2h_sword = {
			inventory_icon = "icon_wpn_empire_2h_sword_01_t1",
			description = "description_default_empire_soldier_es_2h_sword",
			display_name = "display_name_default_empire_soldier_es_2h_sword"
		},
		es_2h_hammer = {
			inventory_icon = "icon_wpn_empire_2h_hammer_01_t1",
			description = "description_default_empire_soldier_es_2h_war_hammer",
			display_name = "display_name_default_empire_soldier_es_2h_war_hammer"
		},
		es_sword_shield = {
			inventory_icon = "icon_wpn_empire_shield_02_sword",
			description = "description_default_empire_soldier_es_1h_sword_shield",
			display_name = "display_name_default_empire_soldier_es_1h_sword_shield"
		},
		es_mace_shield = {
			inventory_icon = "icon_wpn_empire_shield_02_mace",
			description = "description_default_empire_soldier_es_1h_mace_shield",
			display_name = "display_name_default_empire_soldier_es_1h_mace_shield"
		},
		es_1h_flail = {
			inventory_icon = "icon_wpn_emp_flail_01_t1",
			description = "description_default_empire_soldier_es_flail",
			display_name = "display_name_default_empire_soldier_es_flail"
		},
		es_halberd = {
			inventory_icon = "icon_wpn_wh_halberd_01",
			description = "description_default_empire_soldier_es_halberd",
			display_name = "display_name_default_empire_soldier_es_halberd"
		},
		es_longbow = {
			inventory_icon = "icon_wpn_empire_bow_tutorial",
			description = "description_default_empire_soldier_es_longbow",
			display_name = "display_name_default_empire_soldier_es_longbow"
		},
		es_blunderbuss = {
			inventory_icon = "icon_wpn_empire_blunderbuss_t1",
			description = "description_default_empire_soldier_es_blunderbuss",
			display_name = "display_name_default_empire_soldier_es_blunderbuss"
		},
		es_handgun = {
			inventory_icon = "icon_wpn_empire_handgun_t1",
			description = "description_default_empire_soldier_es_handgun",
			display_name = "display_name_default_empire_soldier_es_handgun"
		},
		es_repeating_handgun = {
			inventory_icon = "icon_wpn_emp_handgun_repeater_t1",
			description = "description_default_empire_soldier_es_repeating_handgun",
			display_name = "display_name_default_empire_soldier_es_repeating_handgun"
		},
		we_spear = {
			inventory_icon = "icon_wpn_we_spear_01",
			description = "description_default_wood_elf_ww_spear",
			display_name = "display_name_default_wood_elf_ww_spear"
		},
		we_dual_wield_daggers = {
			inventory_icon = "icon_wpn_we_dagger_01_t1_dual",
			description = "description_default_wood_elf_ww_dual_daggers",
			display_name = "display_name_default_wood_elf_ww_dual_daggers"
		},
		we_dual_wield_swords = {
			inventory_icon = "icon_wpn_we_sword_01_t1_dual",
			description = "description_default_wood_elf_ww_dual_swords",
			display_name = "display_name_default_wood_elf_ww_dual_swords"
		},
		we_1h_sword = {
			inventory_icon = "icon_wpn_we_sword_01_t1",
			description = "description_default_wood_elf_ww_1h_sword",
			display_name = "display_name_default_wood_elf_ww_1h_sword"
		},
		we_dual_wield_sword_dagger = {
			inventory_icon = "icon_wpn_we_sword_01_t1_dagger_dual",
			description = "description_default_wood_elf_ww_sword_and_dagger",
			display_name = "display_name_default_wood_elf_ww_sword_and_dagger"
		},
		we_shortbow = {
			inventory_icon = "icon_wpn_we_bow_short_01",
			description = "description_default_wood_elf_ww_shortbow",
			display_name = "display_name_default_wood_elf_ww_shortbow"
		},
		we_shortbow_hagbane = {
			inventory_icon = "icon_wpn_we_bow_short_01",
			description = "description_default_wood_elf_ww_hagbane",
			display_name = "display_name_default_wood_elf_ww_hagbane"
		},
		we_longbow = {
			inventory_icon = "icon_wpn_we_bow_01_t1",
			description = "description_default_wood_elf_ww_longbow",
			display_name = "display_name_default_wood_elf_ww_longbow"
		},
		we_longbow_trueflight = {
			inventory_icon = "icon_wpn_we_bow_01_t1",
			description = "description_default_wood_elf_ww_trueflight",
			display_name = "display_name_default_wood_elf_ww_trueflight"
		},
		we_2h_axe = {
			inventory_icon = "icon_wpn_we_2h_axe_01_t1",
			description = "description_default_wood_elf_ww_2h_axe",
			display_name = "display_name_default_wood_elf_ww_2h_axe"
		},
		we_2h_sword = {
			inventory_icon = "icon_wpn_we_2h_sword_01_t1",
			description = "description_default_wood_elf_ww_2h_sword",
			display_name = "display_name_default_wood_elf_ww_2h_sword"
		},
		we_crossbow_repeater = {
			inventory_icon = "icon_wpn_we_repeater_crossbow_t1",
			description = "description_default_wood_elf_repeating_crossbow",
			display_name = "display_name_default_wood_elf_repeating_crossbow"
		},
		bw_1h_mace = {
			inventory_icon = "icon_wpn_brw_mace_01",
			description = "description_default_bright_wizard_bw_morningstar",
			display_name = "display_name_default_bright_wizard_bw_morningstar"
		},
		bw_flame_sword = {
			inventory_icon = "icon_wpn_brw_flaming_sword_01_t1",
			description = "description_default_bright_wizard_bw_flame_sword",
			display_name = "display_name_default_bright_wizard_bw_flame_sword"
		},
		bw_sword = {
			inventory_icon = "icon_wpn_brw_sword_01_t1",
			description = "description_default_bright_wizard_bw_1h_sword",
			display_name = "display_name_default_bright_wizard_bw_1h_sword"
		},
		bw_dagger = {
			inventory_icon = "icon_wpn_brw_dagger_01",
			description = "description_default_bright_wizard_bw_dagger",
			display_name = "display_name_default_bright_wizard_bw_dagger"
		},
		bw_skullstaff_fireball = {
			inventory_icon = "icon_wpn_brw_staff_02",
			description = "description_default_bright_wizard_bw_staff_firball",
			display_name = "display_name_default_bright_wizard_bw_staff_firball"
		},
		bw_skullstaff_beam = {
			inventory_icon = "icon_wpn_brw_beam_staff_01",
			description = "description_default_bright_wizard_bw_staff_beam",
			display_name = "display_name_default_bright_wizard_bw_staff_beam"
		},
		bw_skullstaff_geiser = {
			inventory_icon = "icon_wpn_brw_staff_03",
			description = "description_default_bright_wizard_bw_staff_geiser",
			display_name = "display_name_default_bright_wizard_bw_staff_geiser"
		},
		bw_skullstaff_spear = {
			inventory_icon = "icon_wpn_brw_spear_staff_01",
			description = "description_default_bright_wizard_bw_staff_spear",
			display_name = "display_name_default_bright_wizard_bw_staff_spear"
		},
		bw_skullstaff_flamethrower = {
			inventory_icon = "icon_wpn_brw_flame_staff_01",
			description = "description_default_bright_wizard_bw_staff_flamethrower",
			display_name = "display_name_default_bright_wizard_bw_staff_flamethrower"
		},
		dr_1h_axe = {
			inventory_icon = "icon_wpn_dw_axe_01_t1",
			description = "description_default_dwarf_ranger_dr_1h_axes",
			display_name = "display_name_default_dwarf_ranger_dr_1h_axes"
		},
		dr_dual_wield_axes = {
			inventory_icon = "icon_wpn_dw_axe_01_t1_dual",
			description = "description_default_dwarf_ranger_dr_dual_axes",
			display_name = "display_name_default_dwarf_ranger_dr_dual_axes"
		},
		dr_2h_axe = {
			inventory_icon = "icon_wpn_dw_2h_axe_01_t1",
			description = "description_default_dwarf_ranger_dr_2h_axes",
			display_name = "display_name_default_dwarf_ranger_dr_2h_axes"
		},
		dr_2h_hammer = {
			inventory_icon = "icon_wpn_dw_2h_hammer_01_t1",
			description = "description_default_dwarf_ranger_dr_2h_hammer",
			display_name = "display_name_default_dwarf_ranger_dr_2h_hammer"
		},
		dr_1h_hammer = {
			inventory_icon = "icon_wpn_dw_hammer_01_t1",
			description = "description_default_dwarf_ranger_dr_1h_hammer",
			display_name = "display_name_default_dwarf_ranger_dr_1h_hammer"
		},
		dr_shield_axe = {
			inventory_icon = "icon_wpn_dw_shield_01_axe",
			description = "description_default_dwarf_ranger_dr_1h_axe_shield",
			display_name = "display_name_default_dwarf_ranger_dr_1h_axe_shield"
		},
		dr_shield_hammer = {
			inventory_icon = "icon_wpn_dw_shield_01_hammer",
			description = "description_default_dwarf_ranger_dr_1h_hammer_shield",
			display_name = "display_name_default_dwarf_ranger_dr_1h_hammer_shield"
		},
		dr_crossbow = {
			inventory_icon = "icon_wpn_dw_xbox_01_t1",
			description = "description_default_dwarf_ranger_dr_crossbow",
			display_name = "display_name_default_dwarf_ranger_dr_crossbow"
		},
		dr_rakegun = {
			inventory_icon = "icon_wpn_dw_rakegun_t1",
			description = "description_default_dwarf_ranger_dr_grudgeraker",
			display_name = "display_name_default_dwarf_ranger_dr_grudgeraker"
		},
		dr_handgun = {
			inventory_icon = "icon_wpn_dw_handgun_01_t1",
			description = "description_default_dwarf_ranger_dr_handgun",
			display_name = "display_name_default_dwarf_ranger_dr_handgun"
		},
		dr_drakegun = {
			inventory_icon = "icon_wpn_dw_iron_drake_02",
			description = "description_default_dwarf_ranger_dr_drakegun",
			display_name = "display_name_default_dwarf_ranger_dr_drakegun"
		},
		dr_drake_pistol = {
			inventory_icon = "icon_wpn_dw_drake_pistol_01_t1",
			description = "description_default_dwarf_ranger_dr_drakefire_pistols",
			display_name = "display_name_default_dwarf_ranger_dr_drakefire_pistols"
		},
		dr_2h_pick = {
			inventory_icon = "icon_wpn_dw_pick_01_t1",
			description = "description_default_dwarf_ranger_dr_2h_picks",
			display_name = "display_name_default_dwarf_ranger_dr_2h_picks"
		},
		wh_1h_axe = {
			inventory_icon = "icon_wpn_axe_hatchet_t1",
			description = "description_default_witch_hunter_wh_1h_axes",
			display_name = "display_name_default_witch_hunter_wh_1h_axes"
		},
		wh_2h_sword = {
			inventory_icon = "icon_wpn_empire_2h_sword_02_t1",
			description = "description_default_witch_hunter_wh_2h_sword",
			display_name = "display_name_default_witch_hunter_wh_2h_sword"
		},
		wh_fencing_sword = {
			inventory_icon = "icon_wpn_fencingsword_01_t1",
			description = "description_default_witch_hunter_wh_fencing_sword",
			display_name = "display_name_default_witch_hunter_wh_fencing_sword"
		},
		wh_brace_of_pistols = {
			inventory_icon = "icon_wpn_emp_pistol_01_t1",
			description = "description_default_witch_hunter_wh_brace_of_pisols",
			display_name = "display_name_default_witch_hunter_wh_brace_of_pisols"
		},
		wh_repeating_pistols = {
			inventory_icon = "icon_wpn_empire_pistol_repeater_t1",
			description = "description_default_witch_hunter_wh_repeating_pistol",
			display_name = "display_name_default_witch_hunter_wh_repeating_pistol"
		},
		wh_crossbow = {
			inventory_icon = "icon_wpn_emp_crossbow_02_t1",
			description = "description_default_witch_hunter_wh_crossbow",
			display_name = "display_name_default_witch_hunter_wh_crossbow"
		},
		wh_crossbow_repeater = {
			inventory_icon = "icon_wpn_wh_repeater_crossbow_t1",
			description = "description_default_witch_hunter_wh_repeating_crossbow",
			display_name = "display_name_default_witch_hunter_wh_repeating_crossbow"
		},
		wh_1h_falchion = {
			inventory_icon = "icon_wpn_emp_sword_04_t1",
			description = "description_default_witch_hunter_wh_1h_falchions",
			display_name = "display_name_default_witch_hunter_wh_1h_falchions"
		},
		ring = {
			inventory_icon = "icon_charm_09",
			description = "description_default_ring",
			display_name = "display_name_default_ring"
		},
		necklace = {
			inventory_icon = "icon_necklace_09",
			description = "description_default_necklace",
			display_name = "display_name_default_necklace"
		},
		trinket = {
			inventory_icon = "icon_trinket_12",
			description = "description_default_trinket",
			display_name = "display_name_default_trinket"
		}
	}
}

for _, dlc in pairs(DLCSettings) do
	local default_items = dlc.default_items

	if default_items then
		for item_name, item_data in pairs(default_items) do
			UISettings.default_items[item_name] = item_data
		end
	end
end

UISettings.difficulties_select_sounds = {
	"play_gui_lobby_button_01_difficulty_select_normal",
	"play_gui_lobby_button_01_difficulty_select_hard",
	"play_gui_lobby_button_01_difficulty_select_nightmare",
	"play_gui_lobby_button_01_difficulty_select_cataclysm"
}
UISettings.hero_icons = {
	small = {
		witch_hunter = "tabs_class_icon_witch_hunter_normal",
		empire_soldier = "tabs_class_icon_empire_soldier_normal",
		dwarf_ranger = "tabs_class_icon_dwarf_ranger_normal",
		wood_elf = "tabs_class_icon_way_watcher_normal",
		bright_wizard = "tabs_class_icon_bright_wizard_normal"
	},
	medium = {
		witch_hunter = "hero_icon_medium_witch_hunter_yellow",
		empire_soldier = "hero_icon_medium_empire_soldier_yellow",
		dwarf_ranger = "hero_icon_medium_dwarf_ranger_yellow",
		wood_elf = "hero_icon_medium_way_watcher_yellow",
		bright_wizard = "hero_icon_medium_bright_wizard_yellow"
	}
}
UISettings.hero_tooltips = {
	witch_hunter = "inventory_screen_witch_hunter_tooltip",
	empire_soldier = "inventory_screen_empire_soldier_tooltip",
	dwarf_ranger = "inventory_screen_dwarf_tooltip",
	wood_elf = "inventory_screen_way_watcher_tooltip",
	bright_wizard = "inventory_screen_bright_wizard_tooltip"
}
UISettings.slot_icons = {
	crafting_material = "tabs_icon_crafting_material",
	melee_ranged = "tabs_icon_melee_ranged",
	necklace = "tabs_icon_necklace",
	trinket = "tabs_icon_trinkets",
	melee = "tabs_icon_equipment",
	forge = "tabs_icon_anvil",
	portrait_frame = "tabs_icon_portrait_frame",
	hat = "tabs_icon_cosmetics",
	ring = "tabs_icon_charm",
	ranged = "tabs_icon_ranged",
	skins = "tabs_icon_character_skins"
}
UISettings.item_type_store_icons = {
	default = "store_tag_icon_dlc",
	weapon_skin = "store_tag_icon_weapon",
	hat = "store_tag_icon_hat",
	bundle = "store_tag_icon_bundle",
	frame = "store_tag_icon_frame",
	skin = "store_tag_icon_skin",
	dlc = "store_tag_icon_dlc",
	currency = "store_tag_icon_currency"
}

for _, dlc in pairs(DLCSettings) do
	local item_type_store_icons = dlc.item_type_store_icons

	if item_type_store_icons then
		for type, icon in pairs(item_type_store_icons) do
			UISettings.item_type_store_icons[type] = icon
		end
	end
end

UISettings.crafting_material_order = {
	"crafting_material_scrap",
	"crafting_material_weapon",
	"crafting_material_jewellery",
	"crafting_material_dust_1",
	"crafting_material_dust_2",
	"crafting_material_dust_3",
	"crafting_material_dust_4"
}
UISettings.crafting_material_icons_small = {
	crafting_material_dust_3 = "icon_crafting_dust_03_small",
	crafting_material_dust_1 = "icon_crafting_dust_01_small",
	crafting_material_weapon = "icon_crafting_weapon_part_small",
	crafting_material_dust_4 = "icon_crafting_dust_04_small",
	crafting_material_scrap = "icon_crafting_scrap_small",
	crafting_material_jewellery = "icon_crafting_jewellery_part_small",
	crafting_material_dust_2 = "icon_crafting_dust_02_small"
}
UISettings.crafting_material_order_by_item_key = {
	crafting_material_scrap = 6,
	crafting_material_dust_1 = 1,
	crafting_material_weapon = 7,
	crafting_material_dust_4 = 4,
	crafting_material_dust_3 = 3,
	crafting_material_jewellery = 5,
	crafting_material_dust_2 = 2
}
UISettings.loot_containers = {
	epic = "loot_container_icon_02",
	default = "loot_container_icon_01",
	elite = "loot_container_icon_03"
}
UISettings.item_rarity_textures = {
	common = "icon_bg_common",
	promo = "icon_bg_promo",
	exotic = "icon_bg_exotic",
	magic = "icon_bg_magic",
	plentiful = "icon_bg_plentiful",
	default = "icon_bg_default",
	rare = "icon_bg_rare",
	unique = "icon_bg_unique"
}
UISettings.item_rarity_order = {
	common = 6,
	promo = 1,
	exotic = 4,
	magic = 2,
	plentiful = 7,
	default = 8,
	rare = 5,
	unique = 3
}
UISettings.cosmetics_sorting_order = {
	weapon_skin = 3,
	skin = 2,
	hat = 1
}
UISettings.inventory_consumable_slot_colors = {
	healthkit_first_aid_kit_01 = Colors.get_color_table_with_alpha("healthkit_first_aid_kit_01", 255),
	wpn_side_objective_tome_01 = Colors.get_color_table_with_alpha("wpn_side_objective_tome_01", 255),
	potion_healing_draught_01 = Colors.get_color_table_with_alpha("potion_healing_draught_01", 255),
	potion_damage_boost_01 = Colors.get_color_table_with_alpha("potion_damage_boost_01", 255),
	potion_speed_boost_01 = Colors.get_color_table_with_alpha("potion_speed_boost_01", 255),
	potion_cooldown_reduction_01 = Colors.get_color_table_with_alpha("potion_cooldown_reduction_01", 255),
	wpn_grimoire_01 = Colors.get_color_table_with_alpha("wpn_grimoire_01", 255),
	grenade_frag_01 = Colors.get_color_table_with_alpha("grenade_frag_01", 255),
	grenade_frag_02 = Colors.get_color_table_with_alpha("grenade_frag_02", 255),
	grenade_smoke_01 = Colors.get_color_table_with_alpha("grenade_smoke_01", 255),
	grenade_smoke_02 = Colors.get_color_table_with_alpha("grenade_smoke_02", 255),
	grenade_fire_01 = Colors.get_color_table_with_alpha("grenade_fire_01", 255),
	grenade_fire_02 = Colors.get_color_table_with_alpha("grenade_fire_02", 255),
	default = {
		255,
		0,
		0,
		0
	}
}
UISettings.console_menu_scenegraphs = {
	screen = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.default + 1
		}
	},
	area = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = {
			1820,
			840
		},
		position = {
			50,
			-120,
			1
		}
	},
	area_left = {
		vertical_alignment = "top",
		parent = "area",
		horizontal_alignment = "left",
		size = {
			560,
			840
		},
		position = {
			0,
			0,
			1
		}
	},
	area_right = {
		vertical_alignment = "center",
		parent = "area_divider",
		horizontal_alignment = "left",
		size = {
			1190,
			840
		},
		position = {
			60,
			0,
			1
		}
	},
	area_divider = {
		vertical_alignment = "center",
		parent = "area_left",
		horizontal_alignment = "right",
		size = {
			50,
			840
		},
		position = {
			60,
			0,
			1
		}
	},
	craft_bg_root = {
		vertical_alignment = "top",
		parent = "area_right",
		horizontal_alignment = "left",
		size = {
			512,
			512
		},
		position = {
			40,
			-220,
			1
		}
	},
	craft_button = {
		vertical_alignment = "center",
		parent = "craft_bg_root",
		horizontal_alignment = "center",
		size = {
			0,
			0
		},
		position = {
			0,
			-294,
			1
		}
	}
}
UISettings.hero_selection_camera_position_by_character = {
	witch_hunter = {
		z = 0.9,
		x = 0,
		y = 0.8
	},
	bright_wizard = {
		z = 0.7,
		x = 0,
		y = 0.4
	},
	dwarf_ranger = {
		z = 0.4,
		x = 0,
		y = 0
	},
	wood_elf = {
		z = 0.7,
		x = 0,
		y = 0.4
	},
	empire_soldier = {
		z = 0.7,
		x = 0,
		y = 0.5
	},
	empire_soldier_tutorial = {
		z = 0.7,
		x = 0,
		y = 0.5
	}
}
UISettings.hero_hat_camera_position_by_character = {
	witch_hunter = {
		z = 0.93,
		x = 0,
		y = -2.1
	},
	bright_wizard = {
		z = 0.7,
		x = 0,
		y = -2.2
	},
	dwarf_ranger = {
		z = 0.17,
		x = 0,
		y = -2
	},
	wood_elf = {
		z = 0.7,
		x = 0,
		y = -2
	},
	empire_soldier = {
		z = 0.88,
		x = 0,
		y = -2.1
	},
	empire_soldier_tutorial = {
		z = 0.88,
		x = 0,
		y = -2.1
	}
}
UISettings.hero_skin_camera_position_by_character = {
	witch_hunter = {
		z = 0.4,
		x = 0,
		y = -1.2
	},
	bright_wizard = {
		z = 0.2,
		x = 0,
		y = -1.4
	},
	dwarf_ranger = {
		z = -0.2,
		x = 0,
		y = -1.5
	},
	wood_elf = {
		z = 0.25,
		x = 0,
		y = -1.4
	},
	empire_soldier = {
		z = 0.25,
		x = 0,
		y = -1.2
	},
	empire_soldier_tutorial = {
		z = 0.25,
		x = 0,
		y = -1.2
	}
}
UISettings.console_tooltip_pass_definitions = {
	"console_item_titles",
	"skin_applied",
	"deed_mission",
	"deed_difficulty",
	"mutators",
	"deed_rewards",
	"ammunition",
	"fatigue",
	"item_power_level",
	"properties",
	"traits",
	"weapon_skin_title",
	"item_information_text",
	"loot_chest_difficulty",
	"loot_chest_power_range",
	"unwieldable",
	"console_keywords",
	"console_item_description",
	"light_attack_stats",
	"heavy_attack_stats",
	"detailed_stats_light",
	"detailed_stats_heavy",
	"detailed_stats_push",
	"detailed_stats_ranged_light",
	"detailed_stats_ranged_heavy",
	"console_item_background"
}

UISettings.hero_fullscreen_menu_on_enter = function ()
	print("hero_fullscreen_menu_on_enter")
end

UISettings.hero_fullscreen_menu_on_exit = function ()
	print("hero_fullscreen_menu_on_exit")
end

local button_mapping = {
	win32 = {
		{
			texture = "pc_button_icon_left",
			size = {
				20,
				36
			}
		},
		{
			texture = "pc_button_icon_middle",
			tileable = true,
			size = {
				8,
				36
			}
		},
		{
			texture = "pc_button_icon_right",
			size = {
				20,
				36
			}
		}
	},
	xb1 = {
		a = {
			texture = "xbone_button_icon_a",
			size = {
				34,
				34
			}
		},
		b = {
			texture = "xbone_button_icon_b",
			size = {
				34,
				34
			}
		},
		x = {
			texture = "xbone_button_icon_x",
			size = {
				34,
				34
			}
		},
		y = {
			texture = "xbone_button_icon_y",
			size = {
				34,
				34
			}
		},
		d_up = {
			texture = "xbone_button_icon_d_pad_up",
			size = {
				33,
				33
			}
		},
		d_down = {
			texture = "xbone_button_icon_d_pad_down",
			size = {
				33,
				33
			}
		},
		d_left = {
			texture = "xbone_button_icon_d_pad_left",
			size = {
				33,
				33
			}
		},
		d_right = {
			texture = "xbone_button_icon_d_pad_right",
			size = {
				33,
				33
			}
		},
		d_horizontal = {
			texture = "xbone_button_icon_d_pad_horizontal",
			size = {
				33,
				33
			}
		},
		d_vertical = {
			texture = "xbone_button_icon_d_pad_vertical",
			size = {
				33,
				33
			}
		},
		d_pad = {
			texture = "xbone_button_icon_d_pad",
			size = {
				33,
				33
			}
		},
		left_shoulder = {
			texture = "xbone_button_icon_lb",
			size = {
				36,
				26
			}
		},
		left_trigger = {
			texture = "xbone_button_icon_lt",
			size = {
				38,
				33
			}
		},
		left_thumb = {
			texture = "xbone_button_icon_l3",
			size = {
				30,
				33
			}
		},
		right_shoulder = {
			texture = "xbone_button_icon_rb",
			size = {
				36,
				26
			}
		},
		right_trigger = {
			texture = "xbone_button_icon_rt",
			size = {
				38,
				33
			}
		},
		right_thumb = {
			texture = "xbone_button_icon_r3",
			size = {
				30,
				33
			}
		},
		l1_r1 = {
			texture = "xbone_button_icon_lb_rb",
			size = {
				69,
				26
			}
		},
		l2_r2 = {
			texture = "xbone_button_icon_lt_rt",
			size = {
				77,
				33
			}
		},
		left_stick = {
			texture = "xbone_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right_stick = {
			texture = "xbone_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		left_axis = {
			texture = "xbone_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right_axis = {
			texture = "xbone_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		left = {
			texture = "xbone_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right = {
			texture = "xbone_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		start = {
			texture = "xbone_button_icon_menu",
			size = {
				26,
				26
			}
		},
		back = {
			texture = "xbone_button_icon_show",
			size = {
				26,
				26
			}
		}
	},
	ps4 = {
		cross = {
			texture = "ps4_button_icon_cross",
			size = {
				34,
				34
			}
		},
		circle = {
			texture = "ps4_button_icon_circle",
			size = {
				34,
				34
			}
		},
		square = {
			texture = "ps4_button_icon_square",
			size = {
				34,
				34
			}
		},
		triangle = {
			texture = "ps4_button_icon_triangle",
			size = {
				34,
				34
			}
		},
		up = {
			texture = "ps4_button_icon_d_pad_up",
			size = {
				33,
				33
			}
		},
		down = {
			texture = "ps4_button_icon_d_pad_down",
			size = {
				33,
				33
			}
		},
		left = {
			texture = "ps4_button_icon_d_pad_left",
			size = {
				33,
				33
			}
		},
		right = {
			texture = "ps4_button_icon_d_pad_right",
			size = {
				33,
				33
			}
		},
		d_horizontal = {
			texture = "ps4_button_icon_d_pad_horizontal",
			size = {
				33,
				33
			}
		},
		d_vertical = {
			texture = "ps4_button_icon_d_pad_vertical",
			size = {
				33,
				33
			}
		},
		d_pad = {
			texture = "ps4_button_icon_d_pad",
			size = {
				33,
				33
			}
		},
		l1 = {
			texture = "ps4_button_icon_l1",
			size = {
				36,
				26
			}
		},
		l2 = {
			texture = "ps4_button_icon_l2",
			size = {
				38,
				33
			}
		},
		l3 = {
			texture = "ps4_button_icon_l3",
			size = {
				30,
				33
			}
		},
		r1 = {
			texture = "ps4_button_icon_r1",
			size = {
				36,
				26
			}
		},
		r2 = {
			texture = "ps4_button_icon_r2",
			size = {
				38,
				33
			}
		},
		r3 = {
			texture = "ps4_button_icon_r3",
			size = {
				30,
				33
			}
		},
		l1_r1 = {
			texture = "ps4_button_icon_l1_r1",
			size = {
				69,
				26
			}
		},
		l2_r2 = {
			texture = "ps4_button_icon_l2_r2",
			size = {
				73,
				33
			}
		},
		left_stick = {
			texture = "ps4_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right_stick = {
			texture = "ps4_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		left_axis = {
			texture = "ps4_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right_axis = {
			texture = "ps4_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		options = {
			texture = "ps4_button_icon_options",
			size = {
				44,
				33
			}
		},
		share = {
			texture = "ps4_button_icon_share",
			size = {
				44,
				33
			}
		},
		touch = {
			texture = "ps4_button_icon_touchpad",
			size = {
				42,
				28
			}
		}
	},
	win32_ps4 = {
		a = {
			texture = "ps4_button_icon_cross",
			size = {
				34,
				34
			}
		},
		b = {
			texture = "ps4_button_icon_circle",
			size = {
				34,
				34
			}
		},
		x = {
			texture = "ps4_button_icon_square",
			size = {
				34,
				34
			}
		},
		y = {
			texture = "ps4_button_icon_triangle",
			size = {
				34,
				34
			}
		},
		d_up = {
			texture = "ps4_button_icon_d_pad_up",
			size = {
				33,
				33
			}
		},
		d_down = {
			texture = "ps4_button_icon_d_pad_down",
			size = {
				33,
				33
			}
		},
		d_left = {
			texture = "ps4_button_icon_d_pad_left",
			size = {
				33,
				33
			}
		},
		d_right = {
			texture = "ps4_button_icon_d_pad_right",
			size = {
				33,
				33
			}
		},
		d_horizontal = {
			texture = "ps4_button_icon_d_pad_horizontal",
			size = {
				33,
				33
			}
		},
		d_vertical = {
			texture = "ps4_button_icon_d_pad_vertical",
			size = {
				33,
				33
			}
		},
		d_pad = {
			texture = "ps4_button_icon_d_pad",
			size = {
				33,
				33
			}
		},
		left_shoulder = {
			texture = "ps4_button_icon_l1",
			size = {
				36,
				26
			}
		},
		left_trigger = {
			texture = "ps4_button_icon_l2",
			size = {
				38,
				33
			}
		},
		left_thumb = {
			texture = "ps4_button_icon_l3",
			size = {
				30,
				33
			}
		},
		right_shoulder = {
			texture = "ps4_button_icon_r1",
			size = {
				36,
				26
			}
		},
		right_trigger = {
			texture = "ps4_button_icon_r2",
			size = {
				38,
				33
			}
		},
		right_thumb = {
			texture = "ps4_button_icon_r3",
			size = {
				30,
				33
			}
		},
		l1_r1 = {
			texture = "ps4_button_icon_l1_r1",
			size = {
				69,
				26
			}
		},
		l2_r2 = {
			texture = "ps4_button_icon_l2_r2",
			size = {
				73,
				33
			}
		},
		left_stick = {
			texture = "ps4_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right_stick = {
			texture = "ps4_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		left_axis = {
			texture = "ps4_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right_axis = {
			texture = "ps4_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		left = {
			texture = "ps4_button_icon_left_stick",
			size = {
				32,
				33
			}
		},
		right = {
			texture = "ps4_button_icon_right_stick",
			size = {
				32,
				33
			}
		},
		start = {
			texture = "ps4_button_icon_options",
			size = {
				44,
				33
			}
		},
		back = {
			texture = "ps4_button_icon_share",
			size = {
				44,
				33
			}
		}
	}
}

function ButtonTextureByName(button_name, platform)
	local use_ps4_input_icons = UISettings.use_ps4_input_icons

	if platform == "xb1" and use_ps4_input_icons then
		return button_mapping.win32_ps4[button_name]
	else
		return (platform == "win32" and button_mapping[platform]) or button_mapping[platform][button_name]
	end
end

UISettings.get_gamepad_input_texture_data = function (input_service, input_action, gamepad_active, optional_alternative_input_service)
	local platform = PLATFORM

	if platform == "xb1" and GameSettingsDevelopment.allow_keyboard_mouse and not gamepad_active then
		platform = "win32"
	elseif platform == "win32" and gamepad_active then
		platform = "xb1"
	end

	local button_texture_data = nil
	local button_name = ""
	local unassigned = false
	local keymap_binding = input_service:get_keymapping(input_action, platform)

	if #keymap_binding < 3 then
		return button_texture_data, button_name
	end

	local device_type = keymap_binding[1]
	local key_index = keymap_binding[2]
	local key_action_type = keymap_binding[3]

	if key_index == UNASSIGNED_KEY and optional_alternative_input_service then
		keymap_binding = optional_alternative_input_service:get_keymapping(input_action, platform)
		device_type = keymap_binding[1]
		key_index = keymap_binding[2]
		key_action_type = keymap_binding[3]
		unassigned = true
	end

	if key_index and key_index ~= UNASSIGNED_KEY then
		if device_type == "keyboard" then
			button_name = Keyboard.button_locale_name(key_index) or Keyboard.button_name(key_index)
		elseif device_type == "mouse" then
			button_name = Mouse.button_name(key_index)
		elseif device_type == "gamepad" then
			if key_action_type == "axis" then
				button_name = Pad1.axis_name(key_index)
				button_name = button_name .. "_axis"
			else
				button_name = Pad1.button_name(key_index)
			end
		end
	end

	button_name = button_name or "ERROR"
	button_texture_data = ButtonTextureByName(button_name, platform)

	return button_texture_data, button_name, keymap_binding, unassigned
end

return
