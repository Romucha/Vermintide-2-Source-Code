local PLAYER_NAME_MAX_LENGTH = 10
UnitFrameUI = class(UnitFrameUI)

UnitFrameUI.init = function (self, ingame_ui_context, definitions, data, frame_index, player_data, frame_type)
	self.definitions = definitions
	self.features_list = definitions.features_list
	self.widget_name_by_feature = definitions.widget_name_by_feature
	self.inventory_consumable_icons = definitions.inventory_consumable_icons
	self.inventory_index_by_slot = definitions.inventory_index_by_slot
	self.weapon_slot_widget_settings = definitions.weapon_slot_widget_settings
	self.render_settings = {
		alpha_multiplier = 1,
		snap_pixel_positions = true
	}
	self.ui_renderer = ingame_ui_context.ui_renderer
	self.ingame_ui = ingame_ui_context.ingame_ui
	self.input_manager = ingame_ui_context.input_manager
	self.peer_id = ingame_ui_context.peer_id
	self.player_manager = ingame_ui_context.player_manager
	self.ui_animations = {}
	self._damage_events = {}
	self._hash_order = {}
	self._hash_widget_lookup = {}
	self.world = ingame_ui_context.world_manager:world("level_world")
	self._show_respawn_ui = false
	self.data = data
	self._frame_type = frame_type

	self:_create_ui_elements(frame_index)
end

UnitFrameUI._create_ui_elements = function (self, frame_index)
	local definitions = self.definitions
	local scenegraph_definition = self.definitions.scenegraph_definition
	self.ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)
	local widgets = {}

	for name, definition in pairs(definitions.widget_definitions) do
		widgets[name] = UIWidget.init(definition)
	end

	self._widgets = widgets
	self._default_widgets = {
		default_dynamic = widgets.default_dynamic,
		default_static = widgets.default_static
	}
	self._damage_widgets = {}

	for _, widget in pairs(definitions.damage_widget_definitions) do
		self._damage_widgets[#self._damage_widgets + 1] = UIWidget.init(widget)
	end

	self._portrait_widgets = {
		portrait_static = widgets.portrait_static
	}
	self._equipment_widgets = {
		loadout_dynamic = widgets.loadout_dynamic,
		loadout_static = widgets.loadout_static
	}
	self._health_widgets = {
		health_dynamic = widgets.health_dynamic
	}
	self._ability_widgets = {
		ability_dynamic = widgets.ability_dynamic
	}
	self._respawn_widgets = {
		respawn_dynamic = widgets.respawn_dynamic
	}

	UIRenderer.clear_scenegraph_queue(self.ui_renderer)

	self.slot_equip_animations = {}
	self.bar_animations = {}

	self:reset()

	if frame_index then
		self:_widget_by_name("health_dynamic").content.hp_bar.texture_id = "teammate_hp_bar_color_tint_" .. frame_index
		self:_widget_by_name("health_dynamic").content.total_health_bar.texture_id = "teammate_hp_bar_" .. frame_index
	end

	self:set_visible(false)
	self:set_dirty()
end

UnitFrameUI._widget_by_name = function (self, name)
	return self._widgets[name]
end

UnitFrameUI._widget_by_feature = function (self, feature_name, list_name)
	local widget_name = self.widget_name_by_feature[list_name][feature_name]

	return self:_widget_by_name(widget_name)
end

UnitFrameUI.set_position = function (self, x, y)
	local position = self.ui_scenegraph.pivot.local_position
	position[1] = x
	position[2] = y

	for _, widget in pairs(self._widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.destroy = function (self)
	self:set_visible(false)
end

UnitFrameUI.is_visible = function (self)
	return self._is_visible
end

UnitFrameUI.set_visible = function (self, visible)
	self._is_visible = visible
	local ui_renderer = self.ui_renderer

	for _, widget in pairs(self._widgets) do
		UIRenderer.set_element_visible(ui_renderer, widget.element, visible)
	end

	self:set_dirty()
end

UnitFrameUI.set_alpha = function (self, alpha)
	self.render_settings.alpha_multiplier = alpha

	for _, widget in pairs(self._widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_default_alpha = function (self, alpha)
	self._default_alpha_multiplier = alpha

	for _, widget in pairs(self._default_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_portrait_alpha = function (self, alpha)
	self._portrait_alpha_multiplier = alpha

	for _, widget in pairs(self._portrait_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_damage_alpha = function (self, alpha)
	self._damage_alpha_multiplier = alpha

	for _, widget in pairs(self._damage_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_equipment_alpha = function (self, alpha)
	self._equipment_alpha_multiplier = alpha

	for _, widget in pairs(self._equipment_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_health_alpha = function (self, alpha)
	self._health_alpha_multiplier = alpha

	for _, widget in pairs(self._health_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_ability_alpha = function (self, alpha)
	self._ability_alpha_multiplier = alpha

	for _, widget in pairs(self._ability_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.set_respawn_alpha = function (self, alpha)
	self._respawn_alpha_multiplier = alpha

	for _, widget in pairs(self._respawn_widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.update = function (self, dt, t)
	local features_list = self.features_list
	local update_equipment = features_list.equipment
	local update_weapons = features_list.weapons
	local update_damage = features_list.damage
	local dirty = false
	local data = self.data
	local is_dead = data.is_dead
	local is_talking = data.is_talking
	local is_knocked_down = data.is_knocked_down
	local assisted_respawn = data.assisted_respawn
	local needs_help = data.needs_help
	self.overlay_time = (self.overlay_time or 0) + dt * 1.4

	if self:_update_portrait_opacity(is_dead, is_knocked_down, needs_help, assisted_respawn) then
		dirty = true
	end

	if self:_update_voice_animation(dt, t, is_talking) then
		dirty = true
	end

	if self:_update_bar_animations(dt, t) then
		dirty = true
	end

	if self:_update_health_bar_animation(dt, t) then
		dirty = true
	end

	if self:_update_total_health_bar_animation(dt, t) then
		dirty = true
	end

	if update_weapons and self:_update_overcharge_animation(dt, t) then
		dirty = true
	end

	if update_equipment and self:_update_slot_equip_animations(dt, t) then
		dirty = true
	end

	if self:_update_connection_animation(dt, t) then
		dirty = true
	end

	if update_damage and self:_update_damage_feedback(dt, t) then
		dirty = true
	end

	if dirty then
		self:set_dirty()
	end
end

UnitFrameUI.on_resolution_modified = function (self)
	self:set_player_name(self._player_name or "")

	for _, widget in pairs(self._widgets) do
		self:_set_widget_dirty(widget)
	end

	self:set_dirty()
end

UnitFrameUI.draw = function (self, dt)
	if not self._is_visible then
		return
	end

	if not self._dirty then
		return
	end

	local ui_renderer = self.ui_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.input_manager:get_service("ingame_menu")
	local render_settings = self.render_settings
	local alpha_multiplier = render_settings.alpha_multiplier

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, nil, self.render_settings)

	render_settings.alpha_multiplier = self._default_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._default_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self._damage_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._damage_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self._portrait_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._portrait_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self._equipment_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._equipment_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self._health_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._health_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self._ability_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._ability_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self._respawn_alpha_multiplier or alpha_multiplier

	for _, widget in pairs(self._respawn_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	UIRenderer.end_pass(ui_renderer)

	self._dirty = false
end

UnitFrameUI.set_dirty = function (self)
	self._dirty = true
end

UnitFrameUI._set_widget_dirty = function (self, widget)
	widget.element.dirty = true
end

UnitFrameUI.reset = function (self)
	self:set_player_name("")
	self:set_talking(false)
	self:set_icon_visibility(false)
	self:set_connecting_status(true)
	self:_reset_voice_animation()

	local show_health_bar = true
	local is_knocked_down = false
	local is_wounded = false

	self:set_health_bar_status(show_health_bar, is_knocked_down, is_wounded)

	if self.features_list.equipment then
		for slot_name, _ in pairs(self.inventory_index_by_slot) do
			self:set_inventory_slot_data(slot_name, false)
		end
	end

	self:set_dirty()
end

UnitFrameUI.set_portrait_frame = function (self, frame_settings_name, level_text)
	local widgets = self._widgets
	local portrait_widgets = self._portrait_widgets
	local previous_widget = widgets.portrait_static

	if previous_widget.content.frame_settings_name == frame_settings_name and previous_widget.content.level_text == level_text then
		return
	end

	local scale = previous_widget.content.scale or 1

	UIWidget.destroy(self.ui_renderer, previous_widget)

	local retained_mode = true
	local widget_definition = UIWidgets.create_portrait_frame("portrait_pivot", frame_settings_name, level_text, scale, retained_mode)
	local widget = UIWidget.init(widget_definition)
	widgets.portrait_static = widget
	portrait_widgets.portrait_static = widgets.portrait_static
	local widget_content = widget.content
	widget_content.frame_settings_name = frame_settings_name
	widget_content.level_text = level_text

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_portrait = function (self, portrait_texture)
	local widget = self:_widget_by_feature("default", "static")
	local widget_content = widget.content
	widget_content.character_portrait = portrait_texture

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_host_status = function (self, is_host)
	local widget = self:_widget_by_feature("default", "static")
	local widget_content = widget.content
	widget_content.is_host = is_host

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_talking = function (self, is_talking)
	local widget = self:_widget_by_feature("default", "dynamic")
	local widget_content = widget.content
	widget_content.is_talking = is_talking

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_status_icon = function (self, icon_texture, alpha)
	local widget = self:_widget_by_feature("status_icon", "dynamic")
	local widget_content = widget.content
	local widget_style = widget.style
	widget_content.portrait_icon = icon_texture
	widget_style.portrait_icon.color[1] = alpha or 255

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_connecting_status = function (self, is_connecting)
	local widget = self:_widget_by_feature("default", "dynamic")
	local widget_content = widget.content
	widget_content.connecting = is_connecting

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_icon_visibility = function (self, show_icon)
	local widget = self:_widget_by_feature("status_icon", "dynamic")
	local widget_content = widget.content
	widget_content.display_portrait_icon = show_icon

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_portrait_status = function (self, is_knocked_down, needs_help, is_dead, assisted_respawn)
	local widget = self:_widget_by_feature("default", "static")
	local portrait_texture = widget.content.character_portrait
	local gui = self.ui_renderer.gui_retained
	local gui_material = Gui.material(gui, portrait_texture)

	if is_knocked_down or needs_help or is_dead then
		Material.set_vector2(gui_material, "saturate_params", Vector2(0.7, 1))
	else
		Material.set_vector2(gui_material, "saturate_params", Vector2(0, 1))
	end

	if needs_help then
		self:set_status_icon("status_icon_needs_assist", 150)
	elseif assisted_respawn then
		self:set_status_icon("status_icon_respawn", 150)
	elseif is_dead then
		self:set_status_icon("status_icon_dead", 255)
	end

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_player_name = function (self, name_text)
	local widget = self:_widget_by_feature("player_name", "static")

	if widget then
		local widget_content = widget.content
		local display_name = name_text
		local max_width = 170 * RESOLUTION_LOOKUP.scale

		if PLATFORM == "ps4" then
			local player_name_style = widget.style.player_name
			local player_name_shadow_style = widget.style.player_name_shadow
			player_name_style.font_size = 18
			player_name_shadow_style.font_size = 18
			local player_name_font_size = UIRenderer.scaled_font_size_by_width(self.ui_renderer, display_name, max_width, player_name_style)
			widget.style.player_name.font_size = player_name_font_size
			local player_name_shadow_font_size = UIRenderer.scaled_font_size_by_width(self.ui_renderer, display_name, max_width, player_name_shadow_style)
			player_name_shadow_style.font_size = player_name_shadow_font_size
		else
			display_name = (widget.style.player_name and PLAYER_NAME_MAX_LENGTH < UTF8Utils.string_length(name_text) and UIRenderer.crop_text_width(self.ui_renderer, name_text, max_width, widget.style.player_name)) or name_text
		end

		widget_content.player_name = display_name

		self:_set_widget_dirty(widget)
	end

	self._player_name = name_text
end

UnitFrameUI.set_inventory_slot_data = function (self, slot_name, slot_visible, item_data)
	local item_name = slot_visible and item_data.name
	local hud_icon = slot_visible and item_data.hud_icon
	local widget = self:_widget_by_feature("equipment", "dynamic")
	local widget_content = widget.content
	local widget_style = widget.style
	local inventory_consumable_slot_colors = UISettings.inventory_consumable_slot_colors
	local slot_index = self.inventory_index_by_slot[slot_name]

	if slot_index then
		local widget_slot_name = "item_slot_" .. slot_index
		local widget_slot_bg_name = "item_slot_bg_" .. slot_index
		local widget_slot_frame_name = "item_slot_frame_" .. slot_index
		local icon_texture = (slot_visible and hud_icon) or "icons_placeholder"
		widget_content[widget_slot_name] = icon_texture
		widget_style[widget_slot_name].color[1] = (slot_visible and 255) or 0
		widget_style[widget_slot_bg_name].color[1] = (slot_visible and 255) or 100
		widget_style[widget_slot_frame_name].color[1] = (slot_visible and 255) or 100

		if inventory_consumable_slot_colors then
			local default_slot_background_color = inventory_consumable_slot_colors.default
			local slot_background_color = (slot_visible and (inventory_consumable_slot_colors[item_name] or default_slot_background_color)) or default_slot_background_color
			local slot_bg_style = widget_style[widget_slot_bg_name]
			local slot_bg_color = slot_bg_style.color
			slot_bg_color[2] = slot_background_color[2]
			slot_bg_color[3] = slot_background_color[3]
			slot_bg_color[4] = slot_background_color[4]
		end

		if slot_visible then
			self:_add_slot_equip_animation(slot_name .. "_equip_anim", widget, widget_style["item_slot_highlight_" .. slot_index])
		end
	end

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_equipped_weapon_info = function (self, slot_name, wielded, item_name, hud_icon)
	local widget = self:_widget_by_feature("weapons", "dynamic")
	local widget_content = widget.content
	local widget_style = widget.style

	if wielded then
		widget_content.equipped_weapon = hud_icon
		widget_content.equipped_weapon_slot = slot_name
	elseif widget_content.equipped_weapon_slot == slot_name then
	elseif not widget_content.equipped_weapon then
		widget_content.equipped_weapon = hud_icon
	end

	for name, field_name in pairs(self.weapon_slot_widget_settings.ammo_fields) do
		if slot_name == name then
			local alpha = (wielded and 255) or 100
			widget_style[field_name].text_color[1] = alpha
			widget_style[field_name .. "_2"].text_color[1] = alpha
			widget_style[field_name .. "_3"].text_color[1] = alpha
		end
	end

	self:_set_widget_dirty(widget)
end

local ammo_prefix = " "

UnitFrameUI.set_ammo_for_slot = function (self, slot_name, ammo_count, remaining_ammo, using_single_clip)
	local widget = self:_widget_by_feature("weapons", "dynamic")
	local widget_content = widget.content
	local text_field_name = self.weapon_slot_widget_settings.ammo_fields[slot_name]

	if not ammo_count or not remaining_ammo then
		widget_content[text_field_name] = " "
		widget_content[text_field_name .. "_2"] = " "
		widget_content[text_field_name .. "_3"] = " "
	else
		widget_content[text_field_name] = ammo_prefix .. tostring(ammo_count)
		widget_content[text_field_name .. "_2"] = (using_single_clip and ammo_prefix) or "|"
		widget_content[text_field_name .. "_3"] = (using_single_clip and ammo_prefix) or tostring(remaining_ammo)
	end

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_ammo_percentage = function (self, ammo_percent)
	local widget = self:_widget_by_feature("ammo", "dynamic")
	local widget_content = widget.content
	widget_content.ammo_percent = ammo_percent

	self:_set_widget_dirty(widget)
	self:set_dirty()
end

UnitFrameUI.set_ability_percentage = function (self, ability_percent)
	local widget = self:_widget_by_feature("ability", "dynamic")
	local widget_content = widget.content
	widget_content.actual_ability_percent = ability_percent

	self:_on_player_ability_changed("ability", widget, ability_percent)
	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_overcharge_percentage = function (self, has_overcharge, overcharge_percent)
	local widget = self:_widget_by_feature("weapons", "dynamic")
	local widget_content = widget.content
	widget_content.has_overcharge = has_overcharge
	widget_content.overcharge_fill.has_overcharge = has_overcharge
	widget_content.overcharge_fill.overcharge_percent = overcharge_percent or 0

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_active_percentage = function (self, active_percentage)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_content = widget.content
	widget_content.actual_active_percentage = active_percentage

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_health_percentage = function (self, health_percentage, health_multiplier)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_content = widget.content
	widget_content.actual_health_percent = health_percentage

	self:_on_player_health_changed("health", widget, health_percentage * health_multiplier)
	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_total_health_percentage = function (self, total_health_percentage, health_multiplier)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_content = widget.content
	widget_content.actual_total_health_percent = total_health_percentage

	self:_on_player_total_health_changed("total_health", widget, total_health_percentage * health_multiplier)
	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_health_bar_status = function (self, show_health_bar, is_knocked_down, is_wounded)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_style = widget.style
	local widget_content = widget.content
	local total_health_bar_content = widget_content.total_health_bar
	local total_health_bar_style = widget_style.total_health_bar
	total_health_bar_content.draw_health_bar = show_health_bar
	total_health_bar_content.is_knocked_down = is_knocked_down
	total_health_bar_content.is_wounded = is_wounded
	local features_list = self.features_list
	local update_equipment = features_list.equipment

	if update_equipment then
		local equipment_widget = self:_widget_by_feature("equipment", "dynamic")
		equipment_widget.content.draw_health_bar = show_health_bar
	end

	local color = total_health_bar_style.color

	if is_knocked_down then
		color[2] = 255
		color[3] = 0
		color[4] = 0
	else
		color[2] = 255
		color[3] = 255
		color[4] = 255
	end

	self:_set_widget_dirty(widget)
end

UnitFrameUI.set_health_bar_divider_amount = function (self, health_bar_divider_count)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_style = widget.style
	widget_style.hp_bar_divider.texture_amount = health_bar_divider_count

	self:_set_widget_dirty(widget)
end

UnitFrameUI._update_portrait_opacity = function (self, is_dead, is_knocked_down, needs_help, assisted_respawn)
	local alpha = nil
	local widget = self:_widget_by_feature("default", "static")
	local color = widget.style.character_portrait.color

	if is_knocked_down or needs_help or assisted_respawn then
		local i = math.sirp(0.6, 1, self.overlay_time)
		alpha = 255 * i
	elseif is_dead then
		alpha = 0
	elseif color[1] ~= 255 then
		alpha = 255
	end

	if alpha then
		color[1] = alpha

		self:_set_widget_dirty(widget)

		return true
	end
end

UnitFrameUI._reset_voice_animation = function (self)
	local widget = self:_widget_by_feature("default", "dynamic")
	local style = widget.style
	local talk_indicator_color = style.talk_indicator.color
	local talk_indicator_glow_color = style.talk_indicator_glow.color
	local talk_indicator_highlight_color = style.talk_indicator_highlight.color
	local talk_indicator_highlight_glow_color = style.talk_indicator_highlight_glow.color
	talk_indicator_color[1] = 0
	talk_indicator_glow_color[1] = 0
	talk_indicator_highlight_color[1] = 0
	talk_indicator_highlight_glow_color[1] = 0

	self:_set_widget_dirty(widget)
end

UnitFrameUI._update_voice_animation = function (self, dt, t, is_talking)
	local widget = self:_widget_by_feature("default", "dynamic")
	local style = widget.style
	local talk_indicator_color = style.talk_indicator.color
	local talk_indicator_glow_color = style.talk_indicator_glow.color
	local highlight_style = widget.style.talk_indicator_highlight
	local color = highlight_style.color
	local old_talk_indicator_alpha = talk_indicator_color[1]
	local new_talk_indicator_alpha = old_talk_indicator_alpha + ((is_talking and 1) or -1) * 255 * dt
	local old_alpha = color[1]
	old_alpha = old_alpha + ((is_talking and 1) or -1) * 255 * dt

	if is_talking then
		old_alpha = old_alpha + math.sin(t * 3) * 20
		old_alpha = old_alpha + math.cos((t + 1) * 13) * 20
	end

	old_alpha = math.clamp(old_alpha, 0, 255)
	new_talk_indicator_alpha = math.clamp(new_talk_indicator_alpha, 0, 255)

	if old_alpha ~= color[1] or old_talk_indicator_alpha ~= new_talk_indicator_alpha then
		talk_indicator_color[1] = new_talk_indicator_alpha
		talk_indicator_glow_color[1] = new_talk_indicator_alpha
		color[1] = old_alpha
		style.talk_indicator_highlight_glow.color[1] = old_alpha

		self:_set_widget_dirty(widget)

		return true
	end
end

UnitFrameUI._update_health_bar_animation = function (self, dt, t)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_content = widget.content
	local content = widget_content.hp_bar
	local bar_value = content.bar_value

	if bar_value ~= content.internal_bar_value then
		content.internal_bar_value = bar_value

		return true
	end
end

UnitFrameUI._update_total_health_bar_animation = function (self, dt, t)
	local widget = self:_widget_by_feature("health", "dynamic")
	local widget_content = widget.content
	local content = widget_content.total_health_bar
	local bar_value = content.bar_value

	if bar_value ~= content.internal_bar_value then
		content.internal_bar_value = bar_value

		return true
	end
end

UnitFrameUI.show_respawn_ui = function (self)
	return self._show_respawn_ui
end

UnitFrameUI.show_respawn_countdown = function (self, player, is_local_player, respawn_time)
	self._show_respawn_ui = true
	local widget = (self._frame_type == "player" and self:_widget_by_name("respawn_dynamic")) or self:_widget_by_name("default_dynamic")
	local widget_content = widget.content
	widget_content.respawn_timer = respawn_time
	widget_content.total_countdown_time = respawn_time
	widget_content.state = "countdown"
	widget_content.respawn_info_text = "Respawn in"
end

local event_colors = {
	fade_to = Colors.get_table("white"),
	default = Colors.get_table("cheeseburger"),
	kill = Colors.get_table("red"),
	personal = Colors.get_table("dodger_blue")
}
local MAX_NUMBER_OF_DAMAGE_MESSAGES = 4

UnitFrameUI.add_damage_feedback = function (self, hash, is_local_player, event_type, attacker_player, target_player, damage_amount)
	local events = self._damage_events
	local full_hash = hash .. event_type
	local hash_order = self._hash_order
	local t = Managers.time:time("game")
	local increment_duration = UISettings.damage_feedback.increment_duration
	local existing_event = events[full_hash]
	local target_name = target_player:cached_name()
	target_name = target_name or ((not target_player:is_player_controlled() or target_player:name()) and target_player.character_name)

	if not existing_event then
		existing_event = {
			current_index = 0,
			text = "",
			shown_amount = 0,
			event_type = event_type,
			amount = {},
			live_amounts = {},
			next_increment = t - increment_duration,
			remove_time = math.huge,
			local_player = is_local_player,
			target_name = target_name
		}
		events[full_hash] = existing_event
	else
		local index = table.find(hash_order, full_hash)

		table.remove(hash_order, index)
		table.remove(self._hash_widget_lookup, index)
	end

	hash_order[#hash_order + 1] = full_hash
	local amount = existing_event.amount
	amount[#amount + 1] = damage_amount
	existing_event.remove_time = math.huge

	if MAX_NUMBER_OF_DAMAGE_MESSAGES < #hash_order then
		local first_hash = hash_order[1]
		events[first_hash] = nil

		table.remove(hash_order, 1)
		table.remove(self._hash_widget_lookup, 1)
	end

	local widget_index = 0

	table.clear(self._hash_widget_lookup)

	for i = #hash_order, 1, -1 do
		widget_index = widget_index + 1
		local hash = hash_order[i]
		self._hash_widget_lookup[hash] = self._damage_widgets[widget_index]
	end

	local widget_text_style = self._hash_widget_lookup[full_hash].style.text
	widget_text_style.text_color[1] = 255
end

local damage_templates = {
	dealing_damage = {
		text_function = function (total_amount, target_name, last_amount)
			return string.format("hit %s for ", target_name), total_amount, last_amount
		end,
		sound_function = function ()
			return "hud_achievement_unlock_02"
		end
	},
	other_dealing_damage = {
		text_function = function (total_amount, target_name, last_amount)
			return string.format("hit %s for ", target_name), total_amount, last_amount
		end,
		sound_function = function ()
			return "Play_hud_socialwheel_hover"
		end
	}
}
local pop_dmg_time = 0.7
local pop_dmg_fade_time = 0.9

UnitFrameUI._update_damage_feedback = function (self, dt, t)
	local ui_renderer = self.ui_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.input_manager:get_service("Player")
	local hash_order = self._hash_order

	for i = #hash_order, 1, -1 do
		local full_hash = hash_order[i]
		local widget = self._hash_widget_lookup[full_hash]
		local widget_content = widget.content
		local widget_style = widget.style
		local event = self._damage_events[full_hash]
		local template = damage_templates[event.event_type]

		if event.remove_time < t then
			self._damage_events[full_hash] = nil

			table.remove(hash_order, i)
		elseif event.next_increment < t and event.current_index < #event.amount then
			event.current_index = event.current_index + 1
			event.last_damage_shown = event.amount[event.current_index]
			event.old_shown_amount = event.shown_amount
			event.shown_amount = event.shown_amount + event.last_damage_shown
			event.next_increment = t + UISettings.damage_feedback.increment_duration
			event.scale_timer = t + pop_dmg_time
			local wwise_world = Managers.world:wwise_world(self.world)
			local sound_event = template.sound_function()

			if sound_event then
				WwiseWorld.trigger_event(wwise_world, sound_event)
			end

			event.text, event.text_total_sum, event.text_last_dmg = template.text_function(event.shown_amount, event.target_name, event.last_damage_shown)
			event.remove_time = t + UISettings.damage_feedback.show_duration
			local font, scaled_font_size = UIFontByResolution(widget_style.text)
			event.text_width = UIRenderer.text_size(ui_renderer, event.text, font[1], scaled_font_size)
		end

		local time_left = event.remove_time - t
		local fade_duration = UISettings.damage_feedback.fade_duration
		local alpha = 255 * math.clamp(time_left / fade_duration, 0, 1)
		widget_content.text = event.text
		widget_content.icon_texture = event.icon_texture
		widget_style.text.text_color[1] = alpha
		local v = 0
		local v2 = 0
		local scale = 0

		if event.scale_timer then
			if t <= event.scale_timer then
				v = math.clamp((event.scale_timer - t) / pop_dmg_time, 0, 1)

				if v > 0.5 then
					v2 = 0.7
				else
					v2 = 0
				end

				scale = math.ease_pulse(v)
			else
				event.scale_timer = nil
			end
		end

		event.text_total_sum = (v > 0.5 and event.old_shown_amount) or event.shown_amount
		local font, scaled_font_size = UIFontByResolution(widget.style.text_total_sum)
		event.text_width_total_sum = UIRenderer.text_size(ui_renderer, event.text_total_sum, font[1], scaled_font_size)
		local tcol = (v > 0.5 and v < 0.7 and Colors.get_table("gold")) or Colors.get_table("dark_orange")
		local DAMAGE_FONT_SIZE = 24
		widget_style.text_total_sum.font_size = DAMAGE_FONT_SIZE + 10 * scale
		widget.content.text_total_sum = event.text_total_sum
		widget_style.text_total_sum.offset[1] = widget_style.text.offset[1] + event.text_width + event.text_width_total_sum * 0.6
		widget_style.text_total_sum.text_color = tcol
		widget_style.text_total_sum.text_color[1] = alpha
		widget.content.text_last_dmg = event.text_last_dmg
		widget_style.text_last_dmg.offset[1] = widget_style.text_total_sum.offset[1] + event.text_width_total_sum + math.easeOutCubic(1 - v) * 100
		widget_style.text_last_dmg.text_color[1] = 255 * v2
	end

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt)

	for _, widget in pairs(self._hash_widget_lookup) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	UIRenderer.end_pass(ui_renderer)
end

UnitFrameUI.update_respawn_countdown = function (self, dt, t)
	local ui_renderer = self.ui_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.input_manager:get_service("Player")
	local player_frame = self._frame_type == "player"
	local widget = (player_frame and self:_widget_by_name("respawn_dynamic")) or self:_widget_by_name("default_dynamic")
	local widget_content = widget.content
	local state = widget_content.state
	t, dt = Managers.time:time_and_delta("game")
	local respawn_countdown_text = nil

	if state == "countdown" then
		local respawn_timer = widget_content.respawn_timer
		respawn_timer = math.clamp(respawn_timer - dt, 0, 9999)
		respawn_countdown_text = string.format("%.0f", respawn_timer)

		if player_frame then
			local ftime = math.floor(respawn_timer + 0.5)

			if ftime <= 3 and widget_content.last_counts ~= ftime then
				local wwise_world = Managers.world:wwise_world(self.world)
				local sound_name = (ftime == 0 and "hud_compleation_ver2") or "hud_difficulty_increased_end"

				WwiseWorld.trigger_event(wwise_world, sound_name)

				widget_content.last_counts = ftime
			end
		end

		if respawn_timer <= 0 then
			widget_content.fadeout_time = widget_content.total_fadeout_time
			state = "fadeout"
		end

		widget_content.respawn_timer = respawn_timer
		widget_content.respawn_countdown_text = respawn_countdown_text
	elseif state == "fadeout" then
		local widget_style = widget.style
		local fadeout_time = widget_content.fadeout_time - dt
		local normalized_alpha = (fadeout_time - dt) / widget_content.total_fadeout_time
		local alpha = normalized_alpha * 255
		local style_n = widget_style.respawn_countdown_text
		style_n.text_color[1] = alpha

		if player_frame then
			local style_t = widget_style.respawn_info_text
			style_t.text_color[1] = alpha
		end

		widget_content.fadeout_time = fadeout_time

		if fadeout_time <= 0 then
			state = "hidden"
			self._show_respawn_ui = false
			widget_content.respawn_countdown_text = ""

			if player_frame then
				widget_content.respawn_info_text = ""
			end
		end
	end

	widget_content.state = state

	Debug.text("RESPAWN GUI UPDATED")
	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt)
	UIRenderer.draw_widget(ui_renderer, widget)
	UIRenderer.end_pass(ui_renderer)
	self:set_dirty()

	return true
end

UnitFrameUI._update_overcharge_animation = function (self, dt, t)
	local widget = self:_widget_by_feature("weapons", "dynamic")
	local widget_content = widget.content
	local widget_style = widget.style

	if not widget_content.has_overcharge then
		return
	end

	local style = widget_style.overcharge_fill
	local content = widget_content.overcharge_fill
	local overcharge_percent = content.overcharge_percent
	local overcharge_changed = content.internal_overcharge_percent ~= overcharge_percent

	if overcharge_changed then
		local bar_start_side = widget_content.bar_start_side
		local uv_start_pixels = style.uv_start_pixels
		local uv_scale_pixels = style.uv_scale_pixels
		local uv_scale_axis = style.scale_axis
		local offset = style.offset
		local size = style.size
		local uvs = content.uvs
		local overcharge_offset = uv_scale_pixels
		local uv_pixels = uv_start_pixels + uv_scale_pixels
		local bar_size = uv_start_pixels + uv_scale_pixels * overcharge_percent
		size[uv_scale_axis] = bar_size

		if bar_start_side == "left" then
			uvs[2][uv_scale_axis] = uv_pixels / (uv_start_pixels + uv_scale_pixels)
			local start_offset = style.start_offset
			local position_x = math.max(start_offset + overcharge_offset, (start_offset + uv_scale_pixels) - bar_size)
			offset[uv_scale_axis] = position_x
		else
			uvs[2][uv_scale_axis] = uv_pixels / (uv_start_pixels + uv_scale_pixels)
			local start_offset = style.start_offset
			local position_x = (start_offset + overcharge_offset) - bar_size
			offset[uv_scale_axis] = position_x
		end

		content.internal_overcharge_percent = overcharge_percent

		return true
	end
end

UnitFrameUI._on_num_grimoires_changed = function (self, name, widget, health_debuff_percent)
	if not self.bar_animations then
		self.bar_animations = {}
	end

	local bar_animation = self.bar_animations[name] or {}

	if health_debuff_percent ~= bar_animation.current_health_debuff then
		local current_bar_health_debuff = widget.content.grimoire_debuff.bar_value
		local current_bar_health_debuff_style = widget.style.grimoire_debuff
		local current_bar_health_style = widget.style.hp_bar
		local lerp_time = UISettings.unit_frames.health_bar_lerp_time
		local anim_time = nil

		if current_bar_health_debuff < health_debuff_percent then
			anim_time = (health_debuff_percent - current_bar_health_debuff) * lerp_time
		else
			anim_time = (current_bar_health_debuff - health_debuff_percent) * lerp_time
		end

		local length_difference = current_bar_health_debuff_style.uv_scale_pixels - current_bar_health_style.uv_scale_pixels
		local hp_bar_percentage_length = current_bar_health_style.uv_scale_pixels * health_debuff_percent
		local actual_debuff_length = hp_bar_percentage_length + length_difference * 0.5
		local actual_debuff_percent = actual_debuff_length / current_bar_health_debuff_style.uv_scale_pixels
		health_debuff_percent = actual_debuff_percent
		bar_animation.animate = true
		bar_animation.new_value = actual_debuff_percent
		bar_animation.previous_value = current_bar_health_debuff
		bar_animation.time = 0
		bar_animation.total_time = anim_time
		bar_animation.widget = widget
		bar_animation.bar = widget.content.grimoire_debuff
	end

	bar_animation.current_health_debuff = health_debuff_percent
	self.bar_animations[name] = bar_animation
end

UnitFrameUI._on_overcharge_changed = function (self, name, widget, overcharge_percent)
	if not self.bar_animations then
		self.bar_animations = {}
	end

	local bar_animation = self.bar_animations[name] or {}

	if overcharge_percent ~= bar_animation.current_overcharge_percent then
		local current_overcharge_percent = widget.content.overcharge_fill.bar_value
		local lerp_time = UISettings.unit_frames.health_bar_lerp_time
		local anim_time = nil

		if current_overcharge_percent < overcharge_percent then
			anim_time = (overcharge_percent - current_overcharge_percent) * lerp_time
		else
			anim_time = (current_overcharge_percent - overcharge_percent) * lerp_time
		end

		bar_animation.animate = true
		bar_animation.new_value = overcharge_percent
		bar_animation.previous_value = current_overcharge_percent
		bar_animation.time = 0
		bar_animation.total_time = anim_time
		bar_animation.widget = widget
		bar_animation.bar = widget.content.overcharge_fill
	end

	bar_animation.current_overcharge_percent = overcharge_percent
	self.bar_animations[name] = bar_animation
end

UnitFrameUI._on_player_ammo_changed = function (self, name, widget, ammo_percent)
	local bar_animation = self.bar_animations[name] or {}
	self.bar_animations[name] = bar_animation
	local ammo_percent_current = bar_animation.current_health
	bar_animation.current_health = ammo_percent

	if ammo_percent <= 1 and ammo_percent ~= ammo_percent_current then
		local current_bar_ammo = widget.content.ammo_bar.bar_value
		local lerp_time = UISettings.unit_frames.health_bar_lerp_time
		local anim_time = nil

		if current_bar_ammo < ammo_percent then
			anim_time = (ammo_percent - current_bar_ammo) * lerp_time
		else
			anim_time = (current_bar_ammo - ammo_percent) * lerp_time
		end

		bar_animation.animate = true
		bar_animation.new_value = ammo_percent
		bar_animation.previous_value = current_bar_ammo
		bar_animation.time = 0
		bar_animation.total_time = anim_time
		bar_animation.widget = widget
		bar_animation.content = widget.content.ammo_bar
		bar_animation.style = widget.style.ammo_bar

		return true
	end
end

UnitFrameUI._on_player_ability_changed = function (self, name, widget, ability_percent)
	local bar_animation = self.bar_animations[name] or {}
	self.bar_animations[name] = bar_animation
	local ability_percent_current = bar_animation.current_health
	bar_animation.current_health = ability_percent

	if ability_percent <= 1 and ability_percent ~= ability_percent_current then
		local current_bar_ability = widget.content.ability_bar.bar_value
		local lerp_time = UISettings.unit_frames.health_bar_lerp_time
		local anim_time = nil

		if current_bar_ability < ability_percent then
			anim_time = (ability_percent - current_bar_ability) * lerp_time
		else
			anim_time = (current_bar_ability - ability_percent) * lerp_time
		end

		bar_animation.animate = true
		bar_animation.new_value = ability_percent
		bar_animation.previous_value = current_bar_ability
		bar_animation.time = 0
		bar_animation.total_time = anim_time
		bar_animation.widget = widget
		bar_animation.content = widget.content.ability_bar
		bar_animation.style = widget.style.ability_bar

		return true
	end
end

UnitFrameUI._on_player_health_changed = function (self, name, widget, health_percent)
	local bar_animation = self.bar_animations[name] or {}
	self.bar_animations[name] = bar_animation
	local health_percent_current = bar_animation.current_health
	bar_animation.current_health = health_percent

	if health_percent <= 1 and health_percent ~= health_percent_current then
		local is_knocked_down = widget.content.hp_bar.is_knocked_down
		local current_bar_health = widget.content.hp_bar.bar_value
		local lerp_time = UISettings.unit_frames.health_bar_lerp_time
		local anim_time = nil

		if current_bar_health < health_percent then
			anim_time = (health_percent - current_bar_health) * lerp_time
		else
			anim_time = (current_bar_health - health_percent) * lerp_time
		end

		local animate_damage_highlight = (not is_knocked_down and health_percent < (health_percent_current or 1)) or false
		bar_animation.animate_damage_highlight = (animate_damage_highlight and 0) or bar_animation.animate_damage_highlight
		bar_animation.animate = true
		bar_animation.new_value = health_percent
		bar_animation.previous_value = current_bar_health
		bar_animation.time = 0
		bar_animation.total_time = anim_time
		bar_animation.widget = widget
		bar_animation.content = widget.content.hp_bar
		bar_animation.style = widget.style.hp_bar

		return true
	end
end

UnitFrameUI._on_player_total_health_changed = function (self, name, widget, total_health_percent)
	local bar_animation = self.bar_animations[name] or {}
	self.bar_animations[name] = bar_animation
	local total_health_percent_current = bar_animation.current_health
	bar_animation.current_health = total_health_percent

	if total_health_percent <= 1 and total_health_percent ~= total_health_percent_current then
		local is_knocked_down = widget.content.hp_bar.is_knocked_down
		local current_bar_total_health = widget.content.total_health_bar.bar_value
		local lerp_time = UISettings.unit_frames.health_bar_lerp_time
		local anim_time = nil

		if current_bar_total_health < total_health_percent then
			anim_time = (total_health_percent - current_bar_total_health) * lerp_time
		else
			anim_time = (current_bar_total_health - total_health_percent) * lerp_time
		end

		local animate_bar_flash = (not is_knocked_down and total_health_percent < (total_health_percent_current or 1)) or false
		bar_animation.animate_bar_flash = (animate_bar_flash and 0) or bar_animation.animate_bar_flash
		bar_animation.animate = true
		bar_animation.new_value = total_health_percent
		bar_animation.previous_value = current_bar_total_health
		bar_animation.time = 0
		bar_animation.total_time = anim_time
		bar_animation.widget = widget
		bar_animation.content = widget.content.total_health_bar
		bar_animation.style = widget.style.total_health_bar

		return true
	end
end

UnitFrameUI._update_bar_animations = function (self, dt)
	local dirty = false
	local bar_animations = self.bar_animations

	if bar_animations then
		for _, animation_data in pairs(bar_animations) do
			local widget_dirty = false
			local widget = animation_data.widget
			local content = animation_data.content
			local style = animation_data.style

			if content and content.low_health then
				UIAnimation.update(animation_data.low_health_animation, dt)

				dirty = true
				widget_dirty = true
			end

			if animation_data.animate_damage_highlight then
				animation_data.animate_damage_highlight = self:_update_damage_highlight(widget, animation_data.animate_damage_highlight, dt)
				dirty = true
				widget_dirty = true
			end

			if animation_data.animate_bar_flash then
				animation_data.animate_bar_flash = self:_update_bar_flash(widget, style, animation_data.animate_bar_flash, dt)
				dirty = true
				widget_dirty = true
			end

			if animation_data.animate then
				local time = animation_data.time
				local total_time = animation_data.total_time
				local new_value = animation_data.new_value
				local previous_value = animation_data.previous_value
				local time_left = self:_update_player_bar_animation(content, style, time, total_time, previous_value, new_value, dt)
				widget_dirty = true

				if time_left then
					animation_data.time = time_left
				else
					animation_data.animate = nil
				end

				dirty = true
			end

			if widget_dirty then
				self:_set_widget_dirty(widget)
			end
		end
	end

	return dirty
end

UnitFrameUI._update_bar_flash = function (self, widget, style, time, dt)
	local total_time = 0.3
	time = time + dt

	if total_time > 0 then
		local progress = math.min(time / total_time, 1)
		local anim_progress = math.max(1 - math.ease_pulse(progress), 0)
		local highlight_alpha = 155 + 100 * anim_progress
		style.color[1] = highlight_alpha

		self:_set_widget_dirty(widget)

		return (progress < 1 and time) or nil
	end

	return nil
end

UnitFrameUI._update_damage_highlight = function (self, widget, time, dt)
	local total_time = 0.2
	time = time + dt

	if total_time > 0 then
		local style = widget.style
		local progress = math.min(time / total_time, 1)
		local catmullrom_value = math.catmullrom(progress, -8, 0, 0, -8)
		local highlight_alpha = 255 * catmullrom_value
		style.hp_bar_highlight.color[1] = highlight_alpha

		self:_set_widget_dirty(widget)

		return (progress < 1 and time) or nil
	end

	return nil
end

UnitFrameUI._update_player_bar_animation = function (self, content, style, time, total_time, anim_start_value, anim_end_value, dt)
	time = time + dt

	if total_time > 0 then
		local progress = math.min(time / total_time, 1)
		local weight = 7
		local weighted_average = (progress * (weight - 1) + 1) / weight
		local bar_fraction = nil

		if anim_start_value < anim_end_value then
			bar_fraction = anim_start_value + (anim_end_value - anim_start_value) * weighted_average
		else
			bar_fraction = anim_start_value - (anim_start_value - anim_end_value) * weighted_average
		end

		content.bar_value = bar_fraction

		if style.gradient_threshold then
			style.gradient_threshold = bar_fraction
		end

		return (progress < 1 and time) or nil
	end

	content.bar_value = anim_end_value

	return nil
end

UnitFrameUI._add_slot_equip_animation = function (self, name, widget, style)
	local animations = self.slot_equip_animations
	local inventory_hud_settings = UISettings.inventory_hud
	local total_time = inventory_hud_settings.equip_animation_duration
	local animation = animations[name]

	if animation then
		animation.total_time = total_time
		animation.time = 0
	else
		animations[name] = {
			time = 0,
			total_time = total_time,
			style = style,
			widget = widget
		}
	end
end

UnitFrameUI._animate_slot_equip = function (self, animation_data, dt)
	local style = animation_data.style
	local total_time = animation_data.total_time
	local time = animation_data.time
	time = time + dt
	local progress = math.min(time / total_time, 1)
	local catmullrom_value = math.catmullrom(progress, -10, 0, 0, -4)
	style.color[1] = 255 * catmullrom_value
	animation_data.time = time

	return (progress < 1 and animation_data) or nil
end

UnitFrameUI._update_slot_equip_animations = function (self, dt)
	local animations = self.slot_equip_animations
	local dirty = false

	for name, animation_data in pairs(animations) do
		animations[name] = self:_animate_slot_equip(animation_data, dt)
		local widget = animation_data.widget

		self:_set_widget_dirty(widget)

		dirty = true
	end

	return dirty
end

UnitFrameUI._update_connection_animation = function (self, dt)
	if not self._is_visible then
		return false
	end

	local widget = self:_widget_by_feature("default", "dynamic")
	local widget_content = widget.content

	if widget_content.connecting then
		local connecting_icon_style = widget.style.connecting_icon
		local connecting_rotation_speed = 400
		local connecting_rotation_angle = (dt * connecting_rotation_speed) % 360
		local connecting_radians = math.degrees_to_radians(connecting_rotation_angle)
		connecting_icon_style.angle = connecting_icon_style.angle + connecting_radians

		self:_set_widget_dirty(widget)

		return true
	end
end

return
