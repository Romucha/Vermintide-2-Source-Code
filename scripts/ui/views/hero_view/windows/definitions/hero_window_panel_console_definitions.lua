local window_default_settings = UISettings.game_start_windows
local window_background = window_default_settings.background
local window_frame = window_default_settings.frame
local window_size = window_default_settings.size
local window_frame_width = UIFrameSettings[window_frame].texture_sizes.vertical[1]
local window_frame_height = UIFrameSettings[window_frame].texture_sizes.horizontal[2]
local game_option_size = {
	window_size[1] - window_frame_width * 2,
	(window_size[2] - window_frame_height * 2) / 3.5
}
local console_menu_scenegraphs = UISettings.console_menu_scenegraphs
local scenegraph_definition = {
	screen = console_menu_scenegraphs.screen,
	area = console_menu_scenegraphs.area,
	area_left = console_menu_scenegraphs.area_left,
	area_right = console_menu_scenegraphs.area_right,
	area_divider = console_menu_scenegraphs.area_divider,
	panel = {
		vertical_alignment = "top",
		scale = "fit_width",
		size = {
			1920,
			70
		},
		position = {
			0,
			0,
			UILayer.default + 1
		}
	},
	panel_input_area_1 = {
		vertical_alignment = "center",
		parent = "panel",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			50,
			0,
			1
		}
	},
	panel_entry_area = {
		vertical_alignment = "center",
		parent = "panel",
		horizontal_alignment = "left",
		size = {
			1200,
			70
		},
		position = {
			75,
			0,
			1
		}
	},
	panel_input_area_2 = {
		vertical_alignment = "center",
		parent = "panel_entry_area",
		horizontal_alignment = "right",
		size = {
			0,
			0
		},
		position = {
			50,
			0,
			1
		}
	},
	portrait_root = {
		vertical_alignment = "center",
		parent = "panel",
		horizontal_alignment = "right",
		size = {
			0,
			0
		},
		position = {
			-100,
			-30,
			5
		}
	},
	career_name = {
		vertical_alignment = "top",
		parent = "panel",
		horizontal_alignment = "right",
		size = {
			window_size[1] - 190,
			0
		},
		position = {
			-200,
			-30,
			1
		}
	},
	hero_name = {
		vertical_alignment = "top",
		parent = "career_name",
		horizontal_alignment = "right",
		size = {
			window_size[1] - 190,
			0
		},
		position = {
			0,
			-30,
			1
		}
	},
	power_text_bg = {
		vertical_alignment = "bottom",
		parent = "hero_name",
		horizontal_alignment = "right",
		size = {
			115,
			63
		},
		position = {
			0,
			-80,
			1
		}
	},
	power_text = {
		vertical_alignment = "center",
		parent = "power_text_bg",
		horizontal_alignment = "center",
		size = {
			window_size[1],
			0
		},
		position = {
			-4,
			-3,
			1
		}
	},
	power_title = {
		vertical_alignment = "bottom",
		parent = "power_text_bg",
		horizontal_alignment = "center",
		size = {
			window_size[1],
			0
		},
		position = {
			0,
			-30,
			1
		}
	},
	experience_bar_fg = {
		vertical_alignment = "top",
		parent = "portrait_root",
		horizontal_alignment = "right",
		size = {
			window_size[1] - 10,
			40
		},
		position = {
			70,
			-70,
			7
		}
	},
	experience_bar_glass = {
		vertical_alignment = "top",
		parent = "experience_bar_fg",
		horizontal_alignment = "center",
		size = {
			438,
			5
		},
		position = {
			0,
			-5,
			-1
		}
	},
	experience_divider = {
		vertical_alignment = "bottom",
		parent = "experience_bar_fg",
		horizontal_alignment = "left",
		size = {
			window_size[1],
			0
		},
		position = {
			-5,
			-5,
			10
		}
	},
	experience_bar_bg = {
		vertical_alignment = "center",
		parent = "experience_bar_fg",
		horizontal_alignment = "center",
		size = {
			438,
			40
		},
		position = {
			0,
			0,
			-6
		}
	},
	experience_bar = {
		vertical_alignment = "bottom",
		parent = "experience_bar_bg",
		horizontal_alignment = "left",
		size = {
			438,
			40
		},
		position = {
			0,
			0,
			2
		}
	},
	experience_bar_edge = {
		vertical_alignment = "center",
		parent = "experience_bar",
		horizontal_alignment = "right",
		size = {
			40,
			40
		},
		position = {
			40,
			0,
			3
		}
	},
	level_text = {
		vertical_alignment = "center",
		parent = "experience_bar_fg",
		horizontal_alignment = "left",
		size = {
			window_size[1],
			0
		},
		position = {
			0,
			-3,
			5
		}
	},
	menu_root = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	window = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = window_size,
		position = {
			0,
			0,
			1
		}
	},
	title_text_glow = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			544,
			16
		},
		position = {
			0,
			15,
			-1
		}
	},
	title_text = {
		vertical_alignment = "center",
		parent = "title_text_glow",
		horizontal_alignment = "center",
		size = {
			window_size[1],
			50
		},
		position = {
			0,
			15,
			1
		}
	},
	hero_info_bg = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			window_size[1],
			220
		},
		position = {
			0,
			0,
			1
		}
	},
	hero_info_divider = {
		vertical_alignment = "bottom",
		parent = "hero_info_bg",
		horizontal_alignment = "center",
		size = {
			window_size[1],
			0
		},
		position = {
			0,
			0,
			10
		}
	},
	hero_info_detail = {
		vertical_alignment = "center",
		parent = "hero_info_divider",
		horizontal_alignment = "center",
		size = {
			264,
			32
		},
		position = {
			0,
			0,
			11
		}
	},
	prestige_button = {
		vertical_alignment = "top",
		parent = "hero_info_bg",
		horizontal_alignment = "right",
		size = {
			window_size[1] / 2,
			35
		},
		position = {
			0,
			-5,
			1
		}
	},
	prestige_divider = {
		vertical_alignment = "center",
		parent = "prestige_button",
		horizontal_alignment = "left",
		size = {
			window_size[1] / 2,
			35
		},
		position = {
			-5,
			0,
			1
		}
	},
	game_option_pivot = {
		vertical_alignment = "center",
		parent = "panel_entry_area",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			20,
			0,
			3
		}
	},
	game_option_1 = {
		vertical_alignment = "center",
		parent = "game_option_pivot",
		horizontal_alignment = "left",
		size = {
			220,
			30
		},
		position = {
			0,
			0,
			1
		}
	},
	game_option_2 = {
		vertical_alignment = "center",
		parent = "game_option_pivot",
		horizontal_alignment = "left",
		size = {
			220,
			30
		},
		position = {
			0,
			0,
			1
		}
	},
	game_option_3 = {
		vertical_alignment = "center",
		parent = "game_option_pivot",
		horizontal_alignment = "left",
		size = {
			220,
			30
		},
		position = {
			0,
			0,
			1
		}
	},
	game_option_4 = {
		vertical_alignment = "center",
		parent = "game_option_pivot",
		horizontal_alignment = "left",
		size = {
			220,
			30
		},
		position = {
			0,
			0,
			1
		}
	},
	game_option_5 = {
		vertical_alignment = "center",
		parent = "game_option_pivot",
		horizontal_alignment = "left",
		size = {
			220,
			30
		},
		position = {
			0,
			0,
			1
		}
	},
	game_options_right_chain = {
		vertical_alignment = "top",
		parent = "hero_info_divider",
		horizontal_alignment = "center",
		size = {
			16,
			600
		},
		position = {
			195,
			0,
			-10
		}
	},
	game_options_left_chain = {
		vertical_alignment = "top",
		parent = "hero_info_divider",
		horizontal_alignment = "center",
		size = {
			16,
			600
		},
		position = {
			-195,
			0,
			-10
		}
	},
	game_options_right_chain_end = {
		vertical_alignment = "bottom",
		parent = "game_options_right_chain",
		horizontal_alignment = "center",
		size = {
			19,
			20
		},
		position = {
			-1,
			-20,
			1
		}
	},
	game_options_left_chain_end = {
		vertical_alignment = "bottom",
		parent = "game_options_left_chain",
		horizontal_alignment = "center",
		size = {
			19,
			20
		},
		position = {
			-1,
			-20,
			1
		}
	}
}
local career_name_style = {
	use_shadow = true,
	upper_case = true,
	localize = true,
	font_size = 28,
	horizontal_alignment = "right",
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local hero_name_style = {
	font_size = 20,
	use_shadow = true,
	localize = true,
	horizontal_alignment = "right",
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local power_title_style = {
	use_shadow = true,
	vertical_alignment = "bottom",
	localize = true,
	horizontal_alignment = "center",
	font_size = 20,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local level_text_style = {
	use_shadow = true,
	vertical_alignment = "center",
	localize = false,
	horizontal_alignment = "center",
	font_size = 24,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		0,
		0,
		2
	}
}
local power_text_style = {
	use_shadow = true,
	vertical_alignment = "center",
	localize = false,
	horizontal_alignment = "center",
	font_size = 42,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		0,
		0,
		2
	}
}

local function create_window_divider(scenegraph_id, size)
	local widget = {
		element = {
			passes = {
				{
					texture_id = "bottom_edge",
					style_id = "bottom_edge",
					pass_type = "tiled_texture"
				},
				{
					texture_id = "edge_holder_left",
					style_id = "edge_holder_left",
					pass_type = "texture"
				},
				{
					texture_id = "edge_holder_right",
					style_id = "edge_holder_right",
					pass_type = "texture"
				}
			}
		},
		content = {
			edge_holder_right = "menu_frame_09_divider_right",
			edge_holder_left = "menu_frame_09_divider_left",
			bottom_edge = "menu_frame_09_divider"
		},
		style = {
			bottom_edge = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					5,
					0,
					6
				},
				size = {
					size[1] - 10,
					5
				},
				texture_tiling_size = {
					size[1] - 10,
					5
				}
			},
			edge_holder_left = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					3,
					-6,
					10
				},
				size = {
					9,
					17
				}
			},
			edge_holder_right = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					size[1] - 12,
					-6,
					10
				},
				size = {
					9,
					17
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0
		}
	}

	return widget
end

local function create_vertical_window_divider(scenegraph_id, size)
	local widget = {
		element = {
			passes = {
				{
					texture_id = "edge",
					style_id = "edge",
					pass_type = "tiled_texture"
				},
				{
					texture_id = "edge_holder_top",
					style_id = "edge_holder_top",
					pass_type = "texture"
				},
				{
					texture_id = "edge_holder_bottom",
					style_id = "edge_holder_bottom",
					pass_type = "texture"
				}
			}
		},
		content = {
			edge = "menu_frame_09_divider_vertical",
			edge_holder_top = "menu_frame_09_divider_top",
			edge_holder_bottom = "menu_frame_09_divider_bottom"
		},
		style = {
			edge = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					6,
					6
				},
				size = {
					5,
					size[2] - 9
				},
				texture_tiling_size = {
					5,
					size[2] - 9
				}
			},
			edge_holder_top = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-6,
					size[2] - 7,
					10
				},
				size = {
					17,
					9
				}
			},
			edge_holder_bottom = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-6,
					3,
					10
				},
				size = {
					17,
					9
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0
		}
	}

	return widget
end

local function create_button(scenegraph_id, size, button_text, font_size, use_bottom_edge, optional_color_name)
	local button_color_name = nil

	if optional_color_name then
		button_color_name = "button_" .. optional_color_name
	else
		button_color_name = "button_normal"
	end

	local background_color = Colors.get_color_table_with_alpha(button_color_name, 255)
	local button_background_texture = "button_bg_01"
	local button_background_texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(button_background_texture)
	local widget = {
		element = {
			passes = {
				{
					style_id = "button_background",
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					style_id = "button_background",
					pass_type = "texture_uv",
					content_id = "button_background"
				},
				{
					texture_id = "bottom_edge",
					style_id = "button_edge",
					pass_type = "tiled_texture"
				},
				{
					texture_id = "glass_top",
					style_id = "glass_top",
					pass_type = "texture"
				},
				{
					texture_id = "glow",
					style_id = "glow",
					pass_type = "texture"
				},
				{
					texture_id = "hover_glow",
					style_id = "hover_glow",
					pass_type = "texture",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button and (button_hotspot.is_selected or button_hotspot.is_hover)
					end
				},
				{
					style_id = "button_text",
					pass_type = "text",
					text_id = "button_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button
					end
				},
				{
					style_id = "button_text_disabled",
					pass_type = "text",
					text_id = "button_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return button_hotspot.disable_button
					end
				},
				{
					style_id = "button_text_shadow",
					pass_type = "text",
					text_id = "button_text"
				},
				{
					style_id = "button_clicked_rect",
					pass_type = "rect",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot
						local is_clicked = button_hotspot.is_clicked

						return not is_clicked or is_clicked == 0
					end
				},
				{
					style_id = "button_disabled_rect",
					pass_type = "rect",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return button_hotspot.disable_button
					end
				},
				{
					texture_id = "bottom_edge",
					style_id = "bottom_edge",
					pass_type = "tiled_texture",
					content_check_function = function (content)
						return content.use_bottom_edge
					end
				},
				{
					texture_id = "edge_holder_left",
					style_id = "edge_holder_left",
					pass_type = "texture",
					content_check_function = function (content)
						return content.use_bottom_edge
					end
				},
				{
					texture_id = "edge_holder_right",
					style_id = "edge_holder_right",
					pass_type = "texture",
					content_check_function = function (content)
						return content.use_bottom_edge
					end
				}
			}
		},
		content = {
			edge_holder_left = "menu_frame_09_divider_left",
			edge_holder_right = "menu_frame_09_divider_right",
			glass_top = "button_glass_01",
			bottom_edge = "menu_frame_09_divider",
			use_bottom_edge = use_bottom_edge,
			button_hotspot = {},
			button_text = button_text or "n/a",
			hover_glow = (optional_color_name and "button_state_hover_" .. optional_color_name) or "button_state_hover",
			glow = (optional_color_name and "button_state_normal_" .. optional_color_name) or "button_state_normal",
			button_background = {
				uvs = {
					{
						0,
						1 - math.min(size[2] / button_background_texture_settings.size[2], 1)
					},
					{
						math.min(size[1] / button_background_texture_settings.size[1], 1),
						1
					}
				},
				texture_id = button_background_texture
			}
		},
		style = {
			button_background = {
				color = background_color,
				offset = {
					0,
					0,
					2
				},
				size = size
			},
			button_edge = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					size[2],
					3
				},
				size = {
					size[1],
					5
				},
				texture_tiling_size = {
					size[1],
					5
				}
			},
			glass_top = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					size[2] - 4,
					3
				},
				size = {
					size[1],
					5
				}
			},
			glow = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					5,
					3
				},
				size = {
					size[1],
					size[2] - 5
				}
			},
			hover_glow = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					5,
					2
				},
				size = {
					size[1],
					size[2] - 5
				}
			},
			bottom_edge = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					5,
					0,
					6
				},
				size = {
					size[1] - 10,
					5
				},
				texture_tiling_size = {
					size[1] - 10,
					5
				}
			},
			edge_holder_left = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					3,
					-6,
					10
				},
				size = {
					9,
					17
				}
			},
			edge_holder_right = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					size[1] - 12,
					-6,
					10
				},
				size = {
					9,
					17
				}
			},
			button_text = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				offset = {
					0,
					3,
					4
				},
				size = size
			},
			button_text_disabled = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("gray", 255),
				offset = {
					0,
					3,
					4
				},
				size = size
			},
			button_text_shadow = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("black", 255),
				offset = {
					2,
					1,
					3
				},
				size = size
			},
			button_clicked_rect = {
				color = {
					100,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					5
				},
				size = size
			},
			button_disabled_rect = {
				color = {
					150,
					5,
					5,
					5
				},
				offset = {
					0,
					0,
					5
				},
				size = size
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0
		}
	}

	return widget
end

local function create_panel_buttons(scenegraph_id, size)
	local amount = 5
	local spacing = 0
	local texture_colors = {}
	local slot_frame_texture_colors = {}
	local slot_frame_color = {
		255,
		238,
		122,
		20
	}

	for i = 1, amount, 1 do
		texture_colors[i] = {
			255,
			255,
			255,
			255
		}
		slot_frame_texture_colors[i] = {
			slot_frame_color[1],
			slot_frame_color[2],
			slot_frame_color[3],
			slot_frame_color[4]
		}
	end

	return {
		element = {
			passes = {
				{
					pass_type = "centered_texture_amount",
					style_id = "slot",
					texture_id = "slot"
				},
				{
					pass_type = "centered_texture_amount",
					style_id = "slot_frame",
					texture_id = "slot_frame"
				},
				{
					pass_type = "centered_texture_amount",
					style_id = "icon_available",
					texture_id = "icon_available"
				},
				{
					pass_type = "centered_texture_amount",
					style_id = "icon_cooldown",
					texture_id = "icon_cooldown"
				},
				{
					pass_type = "centered_texture_amount",
					style_id = "icon_loot",
					texture_id = "icon_loot"
				},
				{
					pass_type = "centered_texture_amount",
					style_id = "icon_locked",
					texture_id = "icon_locked"
				},
				{
					style_id = "side_detail_right",
					pass_type = "texture_uv",
					content_id = "side_detail"
				},
				{
					texture_id = "refresh_icon",
					style_id = "refresh_icon",
					pass_type = "texture"
				},
				{
					texture_id = "refresh_icon_bg",
					style_id = "refresh_icon_bg",
					pass_type = "texture"
				},
				{
					texture_id = "texture_id",
					style_id = "side_detail_left",
					pass_type = "texture",
					content_id = "side_detail"
				},
				{
					pass_type = "tiled_texture",
					style_id = "background",
					texture_id = "background"
				}
			}
		},
		content = {
			slot = "achievement_symbol_book",
			refresh_icon_bg = "achievement_refresh_off",
			slot_frame = "achievement_symbol_book_glow_1",
			icon_available = "achievement_symbol_skull",
			icon_cooldown = "achievement_symbol_hourglass",
			icon_loot = "achievement_symbol_loot",
			background = "chain_middle",
			slot_flames = "achievement_small_book_glow",
			refresh_icon = "achievement_refresh_on",
			icon_locked = "achievement_symbol_lock",
			side_detail = {
				uvs = {
					{
						1,
						0
					},
					{
						0,
						1
					}
				},
				texture_id = side_detail_texture
			}
		},
		style = {
			background = {
				offset = {
					0,
					0,
					0
				},
				texture_tiling_size = {
					19,
					16
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			slot = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					63,
					58
				},
				texture_amount = amount,
				texture_colors = texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 29,
					2
				},
				size = multi_texture_size
			},
			slot_frame = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					63,
					58
				},
				texture_amount = amount,
				texture_colors = slot_frame_texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 29,
					0
				},
				size = multi_texture_size
			},
			slot_flames = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					71,
					102
				},
				texture_amount = amount,
				texture_colors = slot_frame_texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 40,
					1
				},
				size = multi_texture_size
			},
			icon_cooldown = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					56,
					40
				},
				texture_amount = amount,
				texture_colors = texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 20,
					3
				},
				size = multi_texture_size
			},
			icon_available = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					34,
					34
				},
				texture_amount = amount,
				texture_colors = texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 17,
					3
				},
				size = multi_texture_size
			},
			icon_locked = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					56,
					40
				},
				texture_amount = amount,
				texture_colors = texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 20,
					3
				},
				size = multi_texture_size
			},
			icon_loot = {
				texture_axis = 1,
				spacing = spacing,
				texture_size = {
					42,
					29
				},
				texture_amount = amount,
				texture_colors = texture_colors,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-multi_texture_extra_width * 0.5,
					size[2] / 2 - 14.5,
					3
				},
				size = multi_texture_size
			},
			side_detail_left = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-side_detail_texture_size[1],
					size[2] / 2 - side_detail_texture_size[2] / 2,
					5
				},
				size = {
					side_detail_texture_size[1],
					side_detail_texture_size[2]
				}
			},
			side_detail_right = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					size[1],
					size[2] / 2 - side_detail_texture_size[2] / 2,
					5
				},
				size = {
					side_detail_texture_size[1],
					side_detail_texture_size[2]
				}
			},
			refresh_icon_bg = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					size[1] - 10,
					size[2] / 2 - 12.5,
					6
				},
				size = {
					25,
					25
				}
			},
			refresh_icon = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					size[1] - 10,
					size[2] / 2 - 12.5,
					7
				},
				size = {
					25,
					25
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0
		}
	}
end

local title_button_definitions = {
	[#title_button_definitions + 1] = UIWidgets.create_console_panel_button("game_option_1", "hero_window_equipment", 32),
	[#title_button_definitions + 1] = UIWidgets.create_console_panel_button("game_option_2", "hero_window_talents", 32),
	[#title_button_definitions + 1] = UIWidgets.create_console_panel_button("game_option_3", "hero_window_crafting", 32),
	[#title_button_definitions + 1] = UIWidgets.create_console_panel_button("game_option_4", "hero_window_cosmetics", 32),
	[#title_button_definitions + 1] = UIWidgets.create_console_panel_button("game_option_5", "hero_window_loot_crates", 32)
}
local widgets = {
	hero_power_tooltip = {
		scenegraph_id = "power_text_bg",
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					pass_type = "texture",
					style_id = "background",
					texture_id = "background"
				},
				{
					pass_type = "texture",
					style_id = "hover",
					texture_id = "hover",
					content_check_function = function (content)
						return content.button_hotspot.is_hover
					end
				},
				{
					pass_type = "hero_power_tooltip",
					content_check_function = function (content)
						return content.button_hotspot.is_hover
					end
				},
				{
					pass_type = "rotated_texture",
					style_id = "effect",
					texture_id = "effect"
				}
			}
		},
		content = {
			effect = "sparkle_effect",
			background = "hero_power_bg",
			hover = "hero_power_bg_hover",
			button_hotspot = {}
		},
		style = {
			background = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					0
				}
			},
			hover = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					140,
					89
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					1
				}
			},
			effect = {
				vertical_alignment = "top",
				angle = 0,
				horizontal_alignment = "right",
				offset = {
					110,
					120,
					4
				},
				pivot = {
					128,
					128
				},
				texture_size = {
					256,
					256
				},
				color = Colors.get_color_table_with_alpha("white", 0)
			}
		}
	},
	experience_bar_fg = UIWidgets.create_simple_texture("crafting_button_fg", "experience_bar_fg"),
	experience_bar_glass = UIWidgets.create_simple_texture("button_glass_01", "experience_bar_glass"),
	experience_bar_bg = UIWidgets.create_simple_rect("experience_bar_bg", {
		255,
		0,
		0,
		0
	}),
	experience_bar_edge = UIWidgets.create_simple_texture("experience_bar_edge_glow", "experience_bar_edge"),
	experience_bar = UIWidgets.create_simple_uv_texture("experience_bar_fill", {
		{
			0,
			0
		},
		{
			1,
			1
		}
	}, "experience_bar"),
	experience_divider = create_window_divider("experience_divider", scenegraph_definition.experience_divider.size),
	career_name = UIWidgets.create_simple_text("n/a", "career_name", 22, nil, career_name_style),
	hero_name = UIWidgets.create_simple_text("n/a", "hero_name", 22, nil, hero_name_style),
	power_title = UIWidgets.create_simple_text("hero_power_header", "power_title", 22, nil, power_title_style),
	power_text = UIWidgets.create_simple_text("n/a", "power_text", 22, nil, power_text_style),
	level_text = UIWidgets.create_simple_text("n/a", "level_text", 22, nil, level_text_style),
	panel = UIWidgets.create_simple_rect("panel", {
		200,
		10,
		10,
		10
	}),
	panel_input_area_1 = UIWidgets.create_simple_texture("xbone_button_icon_lt", "panel_input_area_1"),
	panel_input_area_2 = UIWidgets.create_simple_texture("xbone_button_icon_rt", "panel_input_area_2")
}
local animation_definitions = {
	on_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				params.render_settings.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	on_exit = {
		{
			name = "fade_out",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				params.render_settings.alpha_multiplier = 1 - anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

return {
	widgets = widgets,
	title_button_definitions = title_button_definitions,
	scenegraph_definition = scenegraph_definition,
	animation_definitions = animation_definitions
}
