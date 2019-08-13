require("scripts/ui/views/menu_world_previewer")
require("scripts/helpers/weave_utils")

local definitions = local_require("scripts/ui/views/hero_view/windows/definitions/hero_window_weave_forge_panel_definitions")
local top_widget_definitions = definitions.top_widgets
local bottom_widget_definitions = definitions.bottom_widgets
local bottom_hdr_widget_definitions = definitions.bottom_hdr_widgets
local scenegraph_definition = definitions.scenegraph_definition
local animation_definitions = definitions.animation_definitions
local DO_RELOAD = false
HeroWindowWeaveForgePanel = class(HeroWindowWeaveForgePanel)
HeroWindowWeaveForgePanel.NAME = "HeroWindowWeaveForgePanel"

HeroWindowWeaveForgePanel.on_enter = function (self, params, offset)
	print("[HeroViewWindow] Enter Substate HeroWindowWeaveForgePanel")

	self._params = params
	self._parent = params.parent
	local ingame_ui_context = params.ingame_ui_context
	self._wwise_world = ingame_ui_context.wwise_world
	self._ui_renderer = ingame_ui_context.ui_renderer
	self._ui_top_renderer = ingame_ui_context.ui_top_renderer
	self._render_settings = {
		alpha_multiplier = 1,
		snap_pixel_positions = true
	}
	self._ingame_ui_context = ingame_ui_context
	local input_manager = Managers.input
	local reward_params = {
		wwise_world = self._wwise_world,
		ui_renderer = self._ui_renderer,
		ui_top_renderer = self._ui_top_renderer,
		input_manager = input_manager
	}
	self._animations = {}
	self._ui_animations = {}

	self:create_ui_elements(params, offset)

	local hero_name = params.hero_name
	local career_index = params.career_index
	local profile_index = params.profile_index
	local profile = SPProfiles[profile_index]
	local careers = profile.careers
	local career = careers[career_index]
	local career_name = career.name
	self._career_name = career_name
	self._hero_name = hero_name
end

HeroWindowWeaveForgePanel._start_transition_animation = function (self, key, animation_name)
	local params = {
		wwise_world = self._wwise_world,
		render_settings = self._render_settings
	}
	local widgets = self._widgets_by_name
	local anim_id = self._ui_animator:start_animation(animation_name, widgets, scenegraph_definition, params)
	self._animations[key] = anim_id
end

HeroWindowWeaveForgePanel.create_ui_elements = function (self, params, offset)
	self._ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)
	local widgets_by_name = {}
	local top_widgets = {}

	for name, widget_definition in pairs(top_widget_definitions) do
		local widget = UIWidget.init(widget_definition)
		top_widgets[#top_widgets + 1] = widget
		widgets_by_name[name] = widget
	end

	local bottom_widgets = {}

	for name, widget_definition in pairs(bottom_widget_definitions) do
		local widget = UIWidget.init(widget_definition)
		bottom_widgets[#bottom_widgets + 1] = widget
		widgets_by_name[name] = widget
	end

	local bottom_hdr_widgets = {}

	for name, widget_definition in pairs(bottom_hdr_widget_definitions) do
		local widget = UIWidget.init(widget_definition)
		bottom_hdr_widgets[#bottom_hdr_widgets + 1] = widget
		widgets_by_name[name] = widget
	end

	self._top_widgets = top_widgets
	self._bottom_widgets = bottom_widgets
	self._bottom_hdr_widgets = bottom_hdr_widgets
	self._widgets_by_name = widgets_by_name
	self._ui_animator = UIAnimator:new(self._ui_scenegraph, animation_definitions)

	if offset then
		local window_position = self._ui_scenegraph.window.local_position
		window_position[1] = window_position[1] + offset[1]
		window_position[2] = window_position[2] + offset[2]
		window_position[3] = window_position[3] + offset[3]
	end

	UIRenderer.clear_scenegraph_queue(self._ui_top_renderer)
end

HeroWindowWeaveForgePanel.on_exit = function (self, params)
	print("[HeroViewWindow] Exit Substate HeroWindowWeaveForgePanel")

	self._ui_animator = nil
	local world = Managers.world:world("level_world")
	local level = LevelHelper:current_level(world)

	Level.trigger_event(level, "lua_keep_vom_magic_forge_on_exit")
end

HeroWindowWeaveForgePanel._set_loadout_power = function (self, power)
	local widgets_by_name = self._widgets_by_name
	local widget_text = widgets_by_name.loadout_power_text
	widget_text.content.text = power
end

HeroWindowWeaveForgePanel._set_essence_amount = function (self, essence_amount)
	local widgets_by_name = self._widgets_by_name
	local widget_text = widgets_by_name.essence_text
	local widget_icon = widgets_by_name.essence_icon
	local value_string = WeaveUtils.comma_value(essence_amount)
	widget_text.content.text = value_string
	local ui_renderer = self._ui_top_renderer
	local text_width = UIUtils.get_text_width(ui_renderer, widget_text.style.text, value_string)
	local icon_texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(widget_icon.content.texture_id)
	local icon_size = icon_texture_settings.size
	local icon_width = icon_size[1]
	local spacing = 0
	local total_width = icon_width + text_width + spacing
	widget_icon.offset[1] = -(total_width / 2 - icon_width / 2 + 5)
	widget_text.offset[1] = widget_icon.offset[1] + icon_width / 2 + text_width / 2 + spacing

	return value_string
end

HeroWindowWeaveForgePanel._sync_backend_loadout = function (self)
	local career_name = self._career_name
	local backend_manger = Managers.backend
	local backend_interface_weaves = backend_manger:get_interface("weaves")
	local essence_amount = backend_interface_weaves:get_essence()
	self._current_essence_amount = essence_amount
	self._essence_value_string = self:_set_essence_amount(essence_amount)
	local average_power_level = backend_interface_weaves:get_average_power_level(career_name)
	average_power_level = UIUtils.presentable_hero_power_level_weaves(average_power_level)

	self:_set_loadout_power(average_power_level)
end

HeroWindowWeaveForgePanel._is_button_pressed = function (self, widget)
	local content = widget.content
	local hotspot = content.button_hotspot

	if hotspot.on_release then
		hotspot.on_release = false

		if not hotspot.is_selected then
			return true
		end
	end
end

HeroWindowWeaveForgePanel._handle_input = function (self, dt, t)
	return
end

HeroWindowWeaveForgePanel._play_sound = function (self, event)
	self._parent:play_sound(event)
end

HeroWindowWeaveForgePanel.update = function (self, dt, t)
	if DO_RELOAD then
		DO_RELOAD = false

		self:create_ui_elements()
	end

	local backend_manger = Managers.backend
	local backend_interface_weaves = backend_manger:get_interface("weaves")
	local essence_amount = backend_interface_weaves:get_essence()
	local parent = self._parent
	local selected_layout_name = parent:get_selected_layout_name()

	if selected_layout_name ~= self._selected_layout_name or essence_amount ~= self._current_essence_amount then
		self:_sync_component_visibilty_by_layout(selected_layout_name)

		self._selected_layout_name = selected_layout_name

		self:_sync_backend_loadout()
	end

	self:_handle_input(dt, t)
	self:_update_animations(dt)
	self:_draw(dt)
end

HeroWindowWeaveForgePanel._sync_component_visibilty_by_layout = function (self, layout_name)
	local ui_scenegraph = self._ui_scenegraph
	local widgets_by_name = self._widgets_by_name

	if layout_name == "weave_overview" then
		local visible = true
		widgets_by_name.loadout_power_title.content.visible = visible
		widgets_by_name.loadout_power_text.content.visible = visible
		widgets_by_name.top_corner_right.content.visible = visible
		widgets_by_name.loadout_power_tooltip.content.visible = visible
		widgets_by_name.bottom_panel_left.content.visible = visible
		widgets_by_name.bottom_panel_right.content.visible = visible
	else
		local visible = false
		widgets_by_name.loadout_power_title.content.visible = visible
		widgets_by_name.loadout_power_text.content.visible = visible
		widgets_by_name.loadout_power_tooltip.content.visible = visible
		widgets_by_name.bottom_panel_left.content.visible = visible
		widgets_by_name.bottom_panel_right.content.visible = visible
		widgets_by_name.top_corner_right.content.visible = layout_name ~= "weave_properties"
	end

	local background_wheel_visibility = layout_name ~= "weave_properties"

	self:_set_background_wheel_visibility(background_wheel_visibility)
end

HeroWindowWeaveForgePanel.post_update = function (self, dt, t)
	return
end

HeroWindowWeaveForgePanel._update_animations = function (self, dt)
	local params = self._params
	local is_upgrading = params.upgrading
	local upgrading_anim_progress = self._upgrading_anim_progress or 0
	local upgrading_speed = 3

	if is_upgrading then
		upgrading_anim_progress = math.min(upgrading_anim_progress + dt * upgrading_speed, 1)
	else
		upgrading_anim_progress = math.max(upgrading_anim_progress - dt * upgrading_speed, 0)
	end

	self._upgrading_anim_progress = upgrading_anim_progress
	local ui_animations = self._ui_animations
	local animations = self._animations
	local ui_animator = self._ui_animator

	for name, animation in pairs(self._ui_animations) do
		UIAnimation.update(animation, dt)

		if UIAnimation.completed(animation) then
			self._ui_animations[name] = nil
		end
	end

	ui_animator:update(dt)

	for animation_name, animation_id in pairs(animations) do
		if ui_animator:is_animation_completed(animation_id) then
			ui_animator:stop_animation(animation_id)

			animations[animation_name] = nil
		end
	end

	if self._draw_background_wheel then
		self:_update_background_animations(dt)
	end
end

HeroWindowWeaveForgePanel._draw = function (self, dt)
	local parent = self._parent
	local ui_renderer = self._ui_renderer
	local ui_top_renderer = self._ui_top_renderer
	local ui_scenegraph = self._ui_scenegraph
	local render_settings = self._render_settings
	local input_service = parent:window_input_service()
	local hdr_renderer = parent:hdr_renderer()

	UIRenderer.begin_pass(hdr_renderer, ui_scenegraph, input_service, dt, nil, render_settings)

	local snap_pixel_positions = render_settings.snap_pixel_positions
	local alpha_multiplier = render_settings.alpha_multiplier

	for _, widget in ipairs(self._bottom_hdr_widgets) do
		render_settings.alpha_multiplier = widget.alpha_multiplier or alpha_multiplier

		UIRenderer.draw_widget(hdr_renderer, widget)
	end

	UIRenderer.end_pass(hdr_renderer)
	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, nil, render_settings)

	local alpha_multiplier = render_settings.alpha_multiplier

	for _, widget in ipairs(self._bottom_widgets) do
		render_settings.alpha_multiplier = widget.alpha_multiplier or alpha_multiplier

		UIRenderer.draw_widget(ui_renderer, widget)
	end

	UIRenderer.end_pass(ui_renderer)
	UIRenderer.begin_pass(ui_top_renderer, ui_scenegraph, input_service, dt, nil, render_settings)

	for _, widget in ipairs(self._top_widgets) do
		render_settings.alpha_multiplier = widget.alpha_multiplier or alpha_multiplier

		UIRenderer.draw_widget(ui_top_renderer, widget)
	end

	UIRenderer.end_pass(ui_top_renderer)
end

HeroWindowWeaveForgePanel._set_background_bloom_intensity = function (self, fraction)
	local min = 1.39
	local max = 2 + 30 * self._upgrading_anim_progress
	local value = min + math.clamp(fraction, 0, 1) * max
	local parent = self._parent
	local hdr_renderer = parent:hdr_renderer()
	local gui = hdr_renderer.gui
	local widgets_by_name = self._widgets_by_name
	local hdr_background_wheel_1 = widgets_by_name.hdr_background_wheel_1
	local texture_background_wheel_1 = hdr_background_wheel_1.content.texture_id
	local gui_material_background_wheel_1 = Gui.material(gui, texture_background_wheel_1)

	Material.set_scalar(gui_material_background_wheel_1, "noise_intensity", value)

	for i = 1, 2, 1 do
		local hdr_wheel_ring_1 = widgets_by_name["hdr_wheel_ring_" .. i .. "_1"]
		local hdr_wheel_ring_2 = widgets_by_name["hdr_wheel_ring_" .. i .. "_2"]
		local hdr_wheel_ring_3 = widgets_by_name["hdr_wheel_ring_" .. i .. "_3"]
		local texture_wheel_ring_1 = hdr_wheel_ring_1.content.texture_id
		local texture_wheel_ring_2 = hdr_wheel_ring_2.content.texture_id
		local texture_wheel_ring_3 = hdr_wheel_ring_3.content.texture_id
		local gui_material_wheel_ring_1 = Gui.material(gui, texture_wheel_ring_1)
		local gui_material_wheel_ring_2 = Gui.material(gui, texture_wheel_ring_2)
		local gui_material_wheel_ring_3 = Gui.material(gui, texture_wheel_ring_3)

		Material.set_scalar(gui_material_wheel_ring_1, "noise_intensity", value)
		Material.set_scalar(gui_material_wheel_ring_2, "noise_intensity", value)
		Material.set_scalar(gui_material_wheel_ring_3, "noise_intensity", value)
	end
end

HeroWindowWeaveForgePanel._set_background_wheel_visibility = function (self, visible)
	local widgets_by_name = self._widgets_by_name
	local background_wheel_1 = widgets_by_name.background_wheel_1
	local hdr_background_wheel_1 = widgets_by_name.hdr_background_wheel_1
	background_wheel_1.content.visible = visible
	hdr_background_wheel_1.content.visible = visible

	for i = 1, 2, 1 do
		local wheel_ring_1 = widgets_by_name["wheel_ring_" .. i .. "_1"]
		local wheel_ring_2 = widgets_by_name["wheel_ring_" .. i .. "_2"]
		local wheel_ring_3 = widgets_by_name["wheel_ring_" .. i .. "_3"]
		local hdr_wheel_ring_1 = widgets_by_name["hdr_wheel_ring_" .. i .. "_1"]
		local hdr_wheel_ring_2 = widgets_by_name["hdr_wheel_ring_" .. i .. "_2"]
		local hdr_wheel_ring_3 = widgets_by_name["hdr_wheel_ring_" .. i .. "_3"]
		wheel_ring_1.content.visible = visible
		wheel_ring_2.content.visible = visible
		wheel_ring_3.content.visible = visible
		hdr_wheel_ring_1.content.visible = visible
		hdr_wheel_ring_2.content.visible = visible
		hdr_wheel_ring_3.content.visible = visible
	end

	self._draw_background_wheel = visible
end

HeroWindowWeaveForgePanel._update_background_animations = function (self, dt)
	local widgets_by_name = self._widgets_by_name

	for i = 1, 2, 1 do
		local wheel_ring_1 = widgets_by_name["wheel_ring_" .. i .. "_1"]
		local wheel_ring_2 = widgets_by_name["wheel_ring_" .. i .. "_2"]
		local wheel_ring_3 = widgets_by_name["wheel_ring_" .. i .. "_3"]
		local hdr_wheel_ring_1 = widgets_by_name["hdr_wheel_ring_" .. i .. "_1"]
		local hdr_wheel_ring_2 = widgets_by_name["hdr_wheel_ring_" .. i .. "_2"]
		local hdr_wheel_ring_3 = widgets_by_name["hdr_wheel_ring_" .. i .. "_3"]
		local degrees = 360
		local radians = math.degrees_to_radians(degrees)
		local overall_speed = 1 + 4 * self._upgrading_anim_progress
		local speed_1 = dt * 0.01 * overall_speed
		local speed_2 = dt * 0.008 * overall_speed
		local speed_3 = dt * 0.006 * overall_speed
		wheel_ring_1.style.texture_id.angle = (wheel_ring_1.style.texture_id.angle + radians * speed_1) % radians
		wheel_ring_2.style.texture_id.angle = (wheel_ring_2.style.texture_id.angle - radians * speed_2) % -radians
		wheel_ring_3.style.texture_id.angle = (wheel_ring_3.style.texture_id.angle + radians * speed_3) % radians
		hdr_wheel_ring_1.style.texture_id.angle = wheel_ring_1.style.texture_id.angle
		hdr_wheel_ring_2.style.texture_id.angle = wheel_ring_2.style.texture_id.angle
		hdr_wheel_ring_3.style.texture_id.angle = wheel_ring_3.style.texture_id.angle
	end

	local pulse_speed = 2.5
	local progress = 0.5 + math.sin(Application.time_since_launch() * pulse_speed) * 0.5

	self:_set_background_bloom_intensity(progress)
end

return