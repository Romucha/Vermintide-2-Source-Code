PlayerUnitFirstPerson = class(PlayerUnitFirstPerson)
script_data.disable_aim_lead_rig_motion = script_data.disable_aim_lead_rig_motion or Development.parameter("disable_aim_lead_rig_motion") or true
local unit_alive = Unit.alive

PlayerUnitFirstPerson.init = function (self, extension_init_context, unit, extension_init_data)
	self.world = extension_init_context.world
	self.unit = unit
	self._nav_world = Managers.state.entity:system("ai_system"):nav_world()
	local profile = extension_init_data.profile
	local skin_name = extension_init_data.skin_name
	local hero_attributes = Managers.backend:get_interface("hero_attributes")
	local career_index = hero_attributes:get(profile.display_name, "career") or 1
	local first_person_attachment = Cosmetics[skin_name].first_person_attachment or profile.first_person_attachment
	local unit_name = Cosmetics[skin_name].first_person or profile.base_units.first_person
	local attachment_unit_name = first_person_attachment.unit
	local attachment_node_linking = first_person_attachment.attachment_node_linking
	local unit_spawner = Managers.state.unit_spawner
	local fp_unit = unit_spawner:spawn_local_unit(unit_name)
	local career = profile.careers[career_index]
	self.profile = profile
	self.first_person_unit = fp_unit

	Unit.set_flow_variable(fp_unit, "character_vo", profile.character_vo)
	Unit.set_flow_variable(fp_unit, "sound_character", career.sound_character)
	Unit.flow_event(fp_unit, "character_vo_set")

	self.first_person_attachment_unit = unit_spawner:spawn_local_unit(attachment_unit_name)

	Unit.set_flow_variable(fp_unit, "lua_first_person_mesh_unit", self.first_person_attachment_unit)
	AttachmentUtils.link(extension_init_context.world, self.first_person_unit, self.first_person_attachment_unit, attachment_node_linking)
	Unit.set_unit_visibility(self.unit, false)
	Unit.flow_event(self.unit, "lua_spawn_attachments")

	self.flow_unit_attachments = Unit.get_data(self.unit, "flow_unit_attachments") or {}

	for k, v in pairs(self.flow_unit_attachments) do
		Unit.set_unit_visibility(v, false)
	end

	self.first_person_mode = true
	self._show_first_person_units = true
	self.look_position = Vector3Box(Unit.local_position(unit, 0))
	self.look_rotation = QuaternionBox(Unit.local_rotation(unit, 0))
	self.forced_look_rotation = nil
	self.forced_lerp_time = nil

	Unit.set_local_position(fp_unit, 0, Unit.local_position(unit, 0))
	Unit.set_local_rotation(fp_unit, 0, Unit.local_rotation(unit, 0))

	self.look_delta = nil
	self.player_height_wanted = self:_player_height_from_name("stand")
	self.player_height_current = self.player_height_wanted
	self.player_height_previous = self.player_height_wanted
	self.player_height_time_to_change = 0.001
	self.player_height_change_start_time = 0
	self.hide_weapon_reasons = {}
	self.hide_weapon_lights_reasons = {}
	local small_delta = math.pi / 15
	self.MAX_MIN_PITCH = math.pi / 2 - small_delta
	self.drawer = Managers.state.debug:drawer({
		mode = "immediate",
		name = "PlayerUnitFirstPerson"
	})
	self._head_bob = true
	self.aim_assist_multiplier = 1
	self.aim_assist_ramp_multiplier = 0
	self.aim_assist_ramp_multiplier_timer = 0

	if Unit.animation_has_constraint_target(fp_unit, "aim_target") then
		self._aim_target_index = Unit.animation_find_constraint_target(fp_unit, "aim_target")
	end

	if script_data.disable_aim_lead_rig_motion then
		self:disable_rig_movement()
	else
		self:enable_rig_movement()
	end

	self._rig_update_timestep = 0.016666666666666666
	self._show_selected_jump = Managers.state.game_mode:setting("show_selected_jump")
end

PlayerUnitFirstPerson.reset = function (self)
	return
end

PlayerUnitFirstPerson.extensions_ready = function (self)
	local unit = self.unit
	self.locomotion_extension = ScriptUnit.extension(unit, "locomotion_system")
	self.inventory_extension = ScriptUnit.extension(unit, "inventory_system")
	self.attachment_extension = ScriptUnit.extension(unit, "attachment_system")
	self.smart_targeting_extension = ScriptUnit.extension(unit, "smart_targeting_system")
	self.input_extension = ScriptUnit.extension(unit, "input_system")
	local career_name = ScriptUnit.extension(unit, "career_system"):career_name()

	Unit.set_flow_variable(self.first_person_unit, "lua_career_name", career_name)

	if script_data.debug_third_person then
		self:set_first_person_mode(false)
	end
end

PlayerUnitFirstPerson.destroy = function (self)
	local unit_spawner = Managers.state.unit_spawner

	unit_spawner:mark_for_deletion(self.first_person_unit)
	unit_spawner:mark_for_deletion(self.first_person_attachment_unit)
end

PlayerUnitFirstPerson.update = function (self, unit, input, dt, context, t)
	if Managers.input:is_device_active("gamepad") then
		self:update_aim_assist_multiplier(dt)
	end

	self:update_player_height(t)
	self:update_rotation(t, dt)
	self:update_position()

	local player = Managers.player:owner(unit)
	local head_bob = Application.user_setting("head_bob")

	if not self._head_bob and head_bob then
		Unit.animation_event(self.first_person_unit, "enable_headbob")

		self._head_bob = true
	elseif self._head_bob and not head_bob then
		Unit.animation_event(self.first_person_unit, "disable_headbob")

		self._head_bob = false
	end

	if self.toggle_visibility_timer and self.toggle_visibility_timer <= t then
		self.toggle_visibility_timer = nil

		self:set_first_person_mode(not self.first_person_mode)
	end

	if self._first_person_units_visibility_timer and self._first_person_units_visibility_timer <= t then
		self:toggle_first_person_units_visibility(self._first_person_units_visibility_reason)
	end

	if self._want_to_show_first_person_ammo ~= nil then
		local can_show = self._show_first_person_units
		local want_to_show = self._want_to_show_first_person_ammo

		if can_show and want_to_show then
			self.inventory_extension:show_first_person_inventory(true)

			self._want_to_show_first_person_ammo = nil
		elseif can_show and not want_to_show then
			self.inventory_extension:show_first_person_inventory(false)

			self._want_to_show_first_person_ammo = nil
		elseif not can_show and want_to_show then
		elseif not can_show and not want_to_show then
			self.inventory_extension:show_first_person_inventory(false)

			self._want_to_show_first_person_ammo = nil
		end
	end

	if script_data.attract_mode_spectate and self.first_person_mode then
		CharacterStateHelper.change_camera_state(Managers.player:local_player(), "attract")
		self:set_first_person_mode(false, true)
	end
end

PlayerUnitFirstPerson.update_aim_assist_multiplier = function (self, dt)
	if Application.user_setting("gamepad_auto_aim_enabled") then
		local inventory_extension = self.inventory_extension
		local action_settings = nil
		local equipment = inventory_extension:equipment()
		local weapon_unit = equipment.right_hand_wielded_unit or equipment.left_hand_wielded_unit

		if Unit.alive(weapon_unit) then
			local weapon_extension = ScriptUnit.extension(weapon_unit, "weapon_system")

			if weapon_extension:has_current_action() then
				action_settings = weapon_extension:get_current_action_settings()
			end
		end

		local weapon_template = inventory_extension:get_wielded_slot_item_template()
		local aim_assist_settings = nil
		aim_assist_settings = (not action_settings or not action_settings.aim_assist_settings or action_settings.aim_assist_settings) and weapon_template and weapon_template.aim_assist_settings
		local aim_assist_multiplier = (aim_assist_settings and aim_assist_settings.base_multiplier) or 0
		local no_aim_input_multiplier = (aim_assist_settings and aim_assist_settings.no_aim_input_multiplier) or aim_assist_multiplier * 0.5
		local input_extension = self.input_extension
		local look_raw = input_extension:get("look_raw_controller")
		local move = input_extension:get("move_controller")
		local has_input = true

		if (not aim_assist_settings or not aim_assist_settings.always_auto_aim) and Vector3.length(look_raw) < 0.01 then
			aim_assist_multiplier = no_aim_input_multiplier

			if Vector3.length(move) < 0.01 then
				has_input = false
			end
		end

		local aim_assist_ramp_multiplier_timer = math.max(self.aim_assist_ramp_multiplier_timer - dt, 0)
		local aim_assist_ramp_multiplier = nil

		if aim_assist_ramp_multiplier_timer > 0 then
			aim_assist_ramp_multiplier = self.aim_assist_ramp_multiplier
		else
			aim_assist_ramp_multiplier = math.max(self.aim_assist_ramp_multiplier - dt, 0)
		end

		self.aim_assist_multiplier = (has_input and math.min(aim_assist_multiplier + aim_assist_ramp_multiplier, 1)) or 0
		self.aim_assist_ramp_multiplier = aim_assist_ramp_multiplier
		self.aim_assist_ramp_multiplier_timer = aim_assist_ramp_multiplier_timer
	else
		self.aim_assist_multiplier = 0
		self.aim_assist_ramp_multiplier = 0
		self.aim_assist_ramp_multiplier_timer = 0
	end
end

PlayerUnitFirstPerson.increase_aim_assist_multiplier = function (self, value, max_value, delay)
	local delay = delay or 2
	self.aim_assist_ramp_multiplier = math.min(self.aim_assist_ramp_multiplier + value, max_value)
	self.aim_assist_ramp_multiplier_timer = delay
end

PlayerUnitFirstPerson.reset_aim_assist_multiplier = function (self)
	self.aim_assist_ramp_multiplier = 0
	self.aim_assist_ramp_multiplier_timer = 0
end

local function ease_out_quad(t, b, c, d)
	t = t / d
	local res = -c * t * (t - 2) + b

	return res
end

PlayerUnitFirstPerson.update_player_height = function (self, t)
	local time_changing_height = t - self.player_height_change_start_time

	if time_changing_height < self.player_height_time_to_change then
		self.player_height_current = ease_out_quad(time_changing_height, self.player_height_previous, self.player_height_wanted - self.player_height_previous, self.player_height_time_to_change)
	else
		self.player_height_current = self.player_height_wanted
	end
end

PlayerUnitFirstPerson.set_rotation = function (self, new_rotation)
	Unit.set_local_rotation(self.first_person_unit, 0, new_rotation)
	Unit.set_local_rotation(self.unit, 0, new_rotation)
	self.look_rotation:store(new_rotation)
end

PlayerUnitFirstPerson.force_look_rotation = function (self, rot, total_lerp_time)
	self.forced_look_rotation = QuaternionBox(rot)
	self.forced_lerp_timer = 0
	self.forced_total_lerp_time = total_lerp_time
end

PlayerUnitFirstPerson.stop_force_look_rotation = function (self)
	self.forced_look_rotation = nil
	self.forced_lerp_timer = 0
	self.forced_lerp_time = nil
end

PlayerUnitFirstPerson.update_rotation = function (self, t, dt)
	local first_person_unit = self.first_person_unit
	local aim_assist_data = self.smart_targeting_extension:get_targeting_data()

	if self.forced_look_rotation ~= nil then
		local total_lerp_time = self.forced_total_lerp_time or 0.3
		self.forced_lerp_timer = self.forced_lerp_timer + dt
		local p = 1 - self.forced_lerp_timer / total_lerp_time
		p = 1 - p * p
		local look_rotation = Quaternion.lerp(self.look_rotation:unbox(), self.forced_look_rotation:unbox(), p)
		local yaw = Quaternion.yaw(look_rotation)
		local pitch = math.clamp(Quaternion.pitch(look_rotation), -self.MAX_MIN_PITCH, self.MAX_MIN_PITCH)
		local roll = Quaternion.roll(look_rotation)
		local yaw_rotation = Quaternion(Vector3.up(), yaw)
		local pitch_rotation = Quaternion(Vector3.right(), pitch)
		local roll_rotation = Quaternion(Vector3.forward(), roll)
		local yaw_pitch_rotation = Quaternion.multiply(yaw_rotation, pitch_rotation)
		look_rotation = Quaternion.multiply(yaw_pitch_rotation, roll_rotation)

		self.look_rotation:store(look_rotation)

		local first_person_unit = self.first_person_unit

		Unit.set_local_rotation(first_person_unit, 0, look_rotation)

		if total_lerp_time <= self.forced_lerp_timer then
			self.look_delta = nil
			self.forced_look_rotation = nil
			self.forced_lerp_time = nil
		end
	elseif self.look_delta ~= nil then
		local aim_assist_unit = aim_assist_data.unit
		local rotation = self.look_rotation:unbox()
		local look_delta = self.look_delta:unbox()
		self.look_delta = nil
		local look_rotation = self:calculate_look_rotation(rotation, look_delta)

		if aim_assist_unit and Managers.input:is_device_active("gamepad") then
			look_rotation = self:calculate_aim_assisted_rotation(look_rotation, aim_assist_data, look_delta, dt)
		end

		if MotionControlSettings.use_motion_controls then
			local input_extension = self.input_extension
			local left_thumb = input_extension:get("reset_view")

			if left_thumb then
				local forward, _ = Quaternion.forward(look_rotation)
				local forward_flat = Vector3.normalize(Vector3.flat(forward))
				look_rotation = Quaternion.look(forward_flat, Vector3.up())
			end
		end

		self.look_rotation:store(look_rotation)

		local first_person_unit = self.first_person_unit
		local is_recoiling, recoil_offset = Managers.state.camera:is_recoiling()

		if is_recoiling and recoil_offset then
			local current_rotation = look_rotation
			local final_rotation = Quaternion.multiply(look_rotation, recoil_offset:unbox())
			look_rotation = final_rotation
		end

		Unit.set_local_rotation(first_person_unit, 0, look_rotation)
		self:update_rig_movement(look_delta)
	end
end

PlayerUnitFirstPerson.tutorial_restrict_camera_rotation = function (self, restrict, angle)
	if restrict then
		self.restrict_rotation_angle = math.degrees_to_radians(angle)
	else
		self.restrict_rotation_angle = nil
	end
end

PlayerUnitFirstPerson.calculate_look_rotation = function (self, current_rotation, look_delta)
	local yaw = Quaternion.yaw(current_rotation) - look_delta.x

	if self.restrict_rotation_angle then
		yaw = math.clamp(yaw, -self.restrict_rotation_angle, self.restrict_rotation_angle)
	end

	local pitch = math.clamp(Quaternion.pitch(current_rotation) + look_delta.y, -self.MAX_MIN_PITCH, self.MAX_MIN_PITCH)
	local yaw_rotation = Quaternion(Vector3.up(), yaw)
	local pitch_rotation = Quaternion(Vector3.right(), pitch)
	local look_rotation = Quaternion.multiply(yaw_rotation, pitch_rotation)

	return look_rotation
end

PlayerUnitFirstPerson.calculate_aim_assisted_rotation = function (self, look_rotation, aim_assist_data, look_delta, dt)
	local aim_assist_unit = aim_assist_data.unit
	local aim_assist_position = aim_assist_data.target_position
	local current_pos = self:current_position()
	local direction = aim_assist_position - current_pos
	local target_rotation = Quaternion.look(direction, Vector3.up())
	local aim_score = aim_assist_data.aim_score
	local aim_assist_multiplier = self.aim_assist_multiplier
	local horizontal_lerp = (aim_assist_data.vertical_only and look_rotation) or Quaternion.lerp(look_rotation, target_rotation, dt * 33 * aim_score * aim_assist_multiplier)
	local vertical_lerp = Quaternion.lerp(look_rotation, target_rotation, aim_assist_multiplier * 0.5 * dt * 33 * aim_score * aim_assist_multiplier)
	local yaw = Quaternion.yaw(horizontal_lerp)
	local pitch = Quaternion.pitch(vertical_lerp)
	local yaw_rotation = Quaternion(Vector3.up(), yaw)
	local pitch_rotation = Quaternion(Vector3.right(), pitch)
	local wanted_rotation = Quaternion.multiply(yaw_rotation, pitch_rotation)

	return wanted_rotation
end

PlayerUnitFirstPerson.update_position = function (self)
	local position_root = Unit.local_position(self.unit, 0)
	local offset_height = Vector3(0, 0, self.player_height_current)
	local position = position_root + offset_height

	Unit.set_local_position(self.first_person_unit, 0, position)
end

PlayerUnitFirstPerson.is_in_view = function (self, position)
	local player = Managers.player:owner(self.unit)
	local viewport_name = player.viewport_name

	Managers.state.camera:is_in_view(viewport_name, position)
end

PlayerUnitFirstPerson.is_infront = function (self, position, cos_angle_limit)
	local player = Managers.player:owner(self.unit)
	local viewport_name = player.viewport_name
	local viewport = ScriptWorld.viewport(self.world, viewport_name)
	local camera = ScriptViewport.camera(viewport)
	local camera_position = ScriptCamera.position(camera)
	local camera_rotation = ScriptCamera.rotation(camera)
	local camera_forward = Vector3.normalize(Quaternion.forward(camera_rotation))
	local to_pos_dir = Vector3.normalize(position - camera_position)
	local dot = Vector3.dot(to_pos_dir, camera_forward)
	local is_infront = dot > (cos_angle_limit or 0)

	return is_infront
end

PlayerUnitFirstPerson.is_within_custom_view = function (self, position, camera_position, camera_rotation, vertical_fov_rad, horizontal_fov_rad)
	return math.point_is_inside_view(position, camera_position, camera_rotation, vertical_fov_rad, horizontal_fov_rad)
end

PlayerUnitFirstPerson.is_within_default_view = function (self, position)
	local camera_position, camera_rotation = self:camera_position_rotation()
	local base_vertical_fov_rad = (CameraSettings.first_person._node.vertical_fov * math.pi) / 180
	local base_horizontal_fov_rad = base_vertical_fov_rad * 1.7777777777777777

	return math.point_is_inside_view(position, camera_position, camera_rotation, base_vertical_fov_rad, base_horizontal_fov_rad)
end

PlayerUnitFirstPerson.apply_recoil = function (self, factor)
	local player = Managers.player:owner(self.unit)
	local viewport_name = player.viewport_name
	local viewport = ScriptWorld.viewport(self.world, viewport_name)
	local camera = ScriptViewport.camera(viewport)
	local camera_rotation = ScriptCamera.rotation(camera)
	local current_rotation = self.look_rotation:unbox()

	if Application.user_setting("tobii_eyetracking") and ScriptUnit.has_extension(self.unit, "eyetracking_system") then
		local eyetracking_extension = ScriptUnit.extension(self.unit, "eyetracking_system")

		if eyetracking_extension:get_is_feature_enabled("tobii_extended_view") then
			camera_rotation = eyetracking_extension:get_direction_without_extended_view(camera_rotation)
		end
	end

	local recoil_rotation = Quaternion.lerp(current_rotation, camera_rotation, factor or 1)

	Unit.set_local_rotation(self.first_person_unit, 0, recoil_rotation)
	self.look_rotation:store(recoil_rotation)
end

PlayerUnitFirstPerson.get_first_person_unit = function (self)
	return self.first_person_unit
end

PlayerUnitFirstPerson.get_first_person_mesh_unit = function (self)
	return self.first_person_attachment_unit
end

PlayerUnitFirstPerson.set_look_delta = function (self, look_delta)
	if not Vector3.is_valid(look_delta) then
		print("HON-18240; set_look_delta called after PlayerUnitFirstPerson update")
		print(Script.callstack())
	end

	self.look_delta = Vector3Box(look_delta)
end

PlayerUnitFirstPerson.play_animation_event = function (self, anim_event)
	Unit.animation_event(self.first_person_unit, anim_event)
end

PlayerUnitFirstPerson.set_aim_constraint_target = function (self, id, target)
	local aim_constraint_index = Unit.animation_find_constraint_target(self.first_person_unit, id)

	Unit.animation_set_constraint_target(self.first_person_unit, aim_constraint_index, target)
end

PlayerUnitFirstPerson.current_rotation = function (self)
	return Unit.local_rotation(self.first_person_unit, 0)
end

PlayerUnitFirstPerson.current_position = function (self)
	return Unit.local_position(self.first_person_unit, 0)
end

PlayerUnitFirstPerson.camera_position_rotation = function (self)
	local player = Managers.player:owner(self.unit)
	local viewport_name = player.viewport_name
	local viewport = ScriptWorld.viewport(self.world, viewport_name)
	local camera = ScriptViewport.camera(viewport)
	local camera_position = ScriptCamera.position(camera)
	local camera_rotation = ScriptCamera.rotation(camera)

	return camera_position, camera_rotation
end

PlayerUnitFirstPerson.get_projectile_start_position_rotation = function (self)
	local position = nil

	if self:first_person_mode_active() then
		local player = Managers.player:owner(self.unit)
		local viewport_name = player.viewport_name
		local viewport = ScriptWorld.viewport(self.world, viewport_name)
		local camera = ScriptViewport.camera(viewport)
		position = ScriptCamera.position(camera)
	else
		position = self:current_position()
	end

	local rotation = self:current_rotation()

	return position, rotation
end

PlayerUnitFirstPerson.set_wanted_player_height = function (self, state, t, time_to_change)
	local player_height_wanted = self:_player_height_from_name(state)
	local player_height_movement_speed = 3
	self.player_height_wanted = player_height_wanted
	self.player_height_previous = self.player_height_current

	if time_to_change == nil then
		time_to_change = math.abs(player_height_wanted - self.player_height_previous) / player_height_movement_speed
		time_to_change = math.clamp(time_to_change, 0.001, 1000)
	end

	self.player_height_time_to_change = time_to_change
	self.player_height_change_start_time = t
end

PlayerUnitFirstPerson._player_height_from_name = function (self, name)
	local profile = self.profile

	return profile.first_person_heights[name]
end

PlayerUnitFirstPerson.toggle_visibility = function (self, delay)
	local t = Managers.time:time("game")

	if self.toggle_visibility_timer then
		self:set_first_person_mode(not self.first_person_mode)
	end

	if delay then
		self.toggle_visibility_timer = t + delay
	else
		self:set_first_person_mode(not self.first_person_mode)
	end
end

PlayerUnitFirstPerson.set_first_person_mode = function (self, active, override)
	if not self.debug_first_person_mode and (override or not Development.parameter("third_person_mode") or not Development.parameter("attract_mode")) then
		Unit.set_unit_visibility(self.unit, not active)

		for k, v in pairs(self.flow_unit_attachments) do
			Unit.set_unit_visibility(v, not active)
		end

		if not self.tutorial_first_person then
			Unit.set_unit_visibility(self.first_person_attachment_unit, active)
		end

		if active then
			self:unhide_weapons("third_person_mode")

			if self.first_person_mode ~= active then
				Unit.flow_event(self.unit, "lua_exit_third_person_camera")
				Unit.flow_event(self.first_person_unit, "lua_exit_third_person_camera")
			end
		else
			self:hide_weapons("third_person_mode", true)

			if self.first_person_mode ~= active then
				Unit.flow_event(self.unit, "lua_enter_third_person_camera")
				Unit.flow_event(self.first_person_unit, "lua_enter_third_person_camera")
			end
		end

		self.inventory_extension:show_third_person_inventory(not active)
		self.attachment_extension:show_attachments(not active)
	end

	self:abort_toggle_visibility_timer()
	self:abort_first_person_units_visibility_timer()

	self.first_person_mode = active
	self._show_first_person_units = active
end

PlayerUnitFirstPerson.show_third_person_units = function (self, show)
	Unit.set_unit_visibility(self.unit, show)
	self.inventory_extension:show_third_person_inventory(show)
	self.attachment_extension:show_attachments(show)

	for k, v in pairs(self.flow_unit_attachments) do
		Unit.set_unit_visibility(v, show)
	end
end

PlayerUnitFirstPerson.first_person_mode_active = function (self)
	return self.first_person_mode
end

PlayerUnitFirstPerson.abort_toggle_visibility_timer = function (self)
	self.toggle_visibility_timer = nil
end

PlayerUnitFirstPerson.first_person_units_visible = function (self)
	return self._show_first_person_units
end

PlayerUnitFirstPerson.abort_first_person_units_visibility_timer = function (self)
	self._first_person_units_visibility_timer = nil
	self._first_person_units_visibility_reason = nil
end

PlayerUnitFirstPerson.toggle_first_person_units_visibility = function (self, reason, delay)
	if delay then
		local t = Managers.time:time("game")
		self._first_person_units_visibility_timer = t + delay
		self._first_person_units_visibility_reason = reason
	else
		local show = not self._show_first_person_units
		self._first_person_units_visibility_timer = nil
		self._first_person_units_visibility_reason = nil
		self._show_first_person_units = show

		Unit.set_unit_visibility(self.first_person_attachment_unit, show)

		if show then
			self:unhide_weapons(reason)
		else
			self:hide_weapons(reason, show)
		end
	end
end

PlayerUnitFirstPerson.tutorial_show_first_person_units = function (self, show)
	Unit.set_unit_visibility(self.first_person_attachment_unit, show)

	self.tutorial_first_person = not show

	if show then
		self:unhide_weapons("tutorial")
	else
		self:hide_weapons("tutorial", show)
	end
end

PlayerUnitFirstPerson.debug_set_first_person_mode = function (self, active, override)
	local first_person_mode = self.first_person_mode

	if active then
		self.debug_first_person_mode = false

		self:set_first_person_mode(override)

		self.first_person_mode = first_person_mode
		self.debug_first_person_mode = true
	else
		self.debug_first_person_mode = false

		self:set_first_person_mode(first_person_mode)
	end
end

PlayerUnitFirstPerson.hide_weapons = function (self, reason, hide_lights)
	self.hide_weapon_reasons[reason] = true

	if not table.is_empty(self.hide_weapon_reasons) then
		self.inventory_extension:show_first_person_inventory(false)
	end

	if hide_lights then
		self.hide_weapon_lights_reasons[reason] = true

		if not table.is_empty(self.hide_weapon_lights_reasons) then
			self.inventory_extension:show_first_person_inventory_lights(false)
		end
	end
end

PlayerUnitFirstPerson.unhide_weapons = function (self, reason)
	self.hide_weapon_reasons[reason] = nil
	self.hide_weapon_lights_reasons[reason] = nil

	if table.is_empty(self.hide_weapon_reasons) then
		self.inventory_extension:show_first_person_inventory(true)
	end

	if table.is_empty(self.hide_weapon_lights_reasons) then
		self.inventory_extension:show_first_person_inventory_lights(true)
	end
end

PlayerUnitFirstPerson.show_first_person_ammo = function (self, show)
	if self._show_first_person_units then
		self.inventory_extension:show_first_person_ammo(show)
	else
		self._want_to_show_first_person_ammo = show
	end
end

PlayerUnitFirstPerson.animation_set_variable = function (self, variable_name, value)
	local variable = Unit.animation_find_variable(self.first_person_unit, variable_name)

	Unit.animation_set_variable(self.first_person_unit, variable, value)
end

PlayerUnitFirstPerson.animation_event = function (self, event)
	Unit.animation_event(self.first_person_unit, event)
end

PlayerUnitFirstPerson.create_screen_particles = function (self, name, pos, ...)
	if Development.parameter("screen_space_player_camera_reactions") == false then
		return
	end

	return World.create_particles(self.world, name, pos or Vector3.zero(), ...)
end

PlayerUnitFirstPerson.stop_spawning_screen_particles = function (self, id)
	if Development.parameter("screen_space_player_camera_reactions") == false then
		return
	end

	World.stop_spawning_particles(self.world, id)
end

PlayerUnitFirstPerson.destroy_screen_particles = function (self, id)
	World.destroy_particles(self.world, id)
end

PlayerUnitFirstPerson.play_hud_sound_event = function (self, event, wwise_source_id, play_on_husk)
	if play_on_husk then
		self:play_remote_hud_sound_event(event)
	end

	local wwise_world = Managers.world:wwise_world(self.world)

	if wwise_source_id then
		local wwise_playing_id, new_wwise_source_id = WwiseWorld.trigger_event(wwise_world, event, wwise_source_id)

		return wwise_playing_id, new_wwise_source_id
	else
		local wwise_playing_id, new_wwise_source_id = WwiseWorld.trigger_event(wwise_world, event)

		return wwise_playing_id, new_wwise_source_id
	end
end

PlayerUnitFirstPerson.play_remote_hud_sound_event = function (self, event)
	if not LEVEL_EDITOR_TEST then
		local network_manager = Managers.state.network
		local network_transmit = network_manager.network_transmit
		local is_server = Managers.player.is_server
		local unit_id = network_manager:unit_game_object_id(self.unit)
		local event_id = NetworkLookup.sound_events[event]

		if is_server then
			network_transmit:send_rpc_clients("rpc_play_husk_sound_event", unit_id, event_id)
		else
			network_transmit:send_rpc_server("rpc_play_husk_sound_event", unit_id, event_id)
		end
	end
end

PlayerUnitFirstPerson.play_sound_event = function (self, event, position)
	local sound_position = position or self:current_position()
	local wwise_source_id, wwise_world = WwiseUtils.make_position_auto_source(self.world, sound_position)

	WwiseWorld.set_switch(wwise_world, "husk", "false", wwise_source_id)
	WwiseWorld.trigger_event(wwise_world, event, wwise_source_id)
end

PlayerUnitFirstPerson.play_unit_sound_event = function (self, event, unit, node_id, play_on_husk)
	if play_on_husk then
		self:play_remote_unit_sound_event(event, unit, node_id)
	end

	local wwise_source_id, wwise_world = WwiseUtils.make_unit_auto_source(self.world, unit, node_id)

	WwiseWorld.set_switch(wwise_world, "husk", "false", wwise_source_id)
	WwiseWorld.trigger_event(wwise_world, event, wwise_source_id)
end

PlayerUnitFirstPerson.play_remote_unit_sound_event = function (self, event, unit, node_id)
	local event_id = NetworkLookup.sound_events[event]
	local network_manager = Managers.state.network
	local game = network_manager:game()

	if game and not LEVEL_EDITOR_TEST then
		local network_transmit = network_manager.network_transmit
		local is_server = Managers.player.is_server
		local unit_id = network_manager:unit_game_object_id(unit)

		if is_server then
			network_transmit:send_rpc_clients("rpc_play_husk_unit_sound_event", unit_id, node_id, event_id)
		else
			network_transmit:send_rpc_server("rpc_play_husk_unit_sound_event", unit_id, node_id, event_id)
		end
	end
end

PlayerUnitFirstPerson.play_camera_effect_sequence = function (self, event, t)
	Managers.state.camera:camera_effect_sequence_event(event, t)
end

PlayerUnitFirstPerson.set_aim_assist = function (self, assist_type)
	if assist_type == "" then
		self.aim_assist_type = assist_type
	end
end

PlayerUnitFirstPerson.enable_rig_movement = function (self)
	if script_data.disable_aim_lead_rig_motion then
		self:disable_rig_movement()

		return
	end

	if not self._rig_movement_enabled then
		self._rig_movement_enabled = true

		Unit.animation_event(self.first_person_unit, "activate_aim")
	end
end

PlayerUnitFirstPerson.disable_rig_movement = function (self)
	if self._rig_movement_enabled then
		self._rig_movement_enabled = false

		Unit.animation_event(self.first_person_unit, "deactivate_aim")
	end
end

PlayerUnitFirstPerson.enable_rig_offset = function (self)
	if script_data.disable_aim_lead_rig_motion then
		self:disable_rig_offset()

		return
	end

	if not self._rig_offset_enabled then
		self._rig_offset_enabled = true
	end
end

PlayerUnitFirstPerson.disable_rig_offset = function (self)
	if self._rig_offset_enabled then
		self._rig_offset_enabled = false
	end
end

PlayerUnitFirstPerson.update_rig_movement = function (self, look_delta)
	if script_data.disable_aim_lead_rig_motion then
		return
	end

	if not self._aim_target_index then
		return
	end

	local dt = self._rig_update_timestep
	local item_slot_name = self.inventory_extension:get_wielded_slot_name()
	local is_ranged = item_slot_name == "slot_ranged"
	local is_melee = not is_ranged
	local item_data = self.inventory_extension:get_item_data(item_slot_name)
	local weapon_template_name = item_data and item_data.template
	local weapon_template = nil

	if weapon_template_name then
		weapon_template = Weapons[weapon_template_name]
	end

	local position = Unit.local_position(self.first_person_unit, 0)
	local orientation = Unit.local_rotation(self.first_person_unit, 0)
	local forward = Quaternion.forward(orientation)
	local right = Quaternion.right(orientation)
	local up = Quaternion.up(orientation)
	local rig_settings = PlayerUnitMovementSettings.rig_movement
	local mass = rig_settings.mass
	local tension = rig_settings.tension
	local damping = rig_settings.damping
	local motion_offset = rig_settings.motion_offset
	local horizontal_motion_damping = rig_settings.horizontal_motion_damping
	local vertical_motion_damping = rig_settings.vertical_motion_damping
	local vertical_look_multiplier = (is_ranged and rig_settings.vertical_look_multiplier_ranged) or rig_settings.vertical_look_multiplier_melee
	local lead_multiplier = Vector3(10, 10, 0)
	local lead_decay = 10
	local lead_max = Vector2(0.1, 0.1)

	if is_ranged then
		lead_multiplier = Vector3(5, 5, 0)
		lead_decay = 4
		lead_max = Vector2(0.5, 0.5)
	end

	lead_multiplier = lead_multiplier * ((weapon_template and weapon_template.rig_motion_multiplier) or 1)
	lead_decay = lead_decay * ((weapon_template and weapon_template.rig_motion_multiplier) or 1)
	lead_max = lead_max * ((weapon_template and weapon_template.rig_motion_multiplier) or 1)
	local inv_mass = 1 / mass
	self.spring_velocity = self.spring_velocity or Vector3Box(0, 0, 0)
	self.spring_position = self.spring_position or Vector3Box(position)
	self.lead_offset = self.lead_offset or Vector3Box(0, 0, 0)
	local spring_velocity = self.spring_velocity:unbox()
	local spring_position = self.spring_position:unbox()
	local lead_offset = self.lead_offset:unbox()

	if look_delta then
		lead_offset = Vector3.lerp(lead_offset, Vector3.multiply_elements(look_delta, lead_multiplier), dt)
	end

	lead_offset = Vector3.max(Vector3.min(lead_max, lead_offset), -lead_max)
	lead_offset = Vector3.lerp(lead_offset, Vector3.zero(), math.min(dt * lead_decay, 1))
	spring_position = spring_position + spring_velocity * dt
	local delta = spring_position - position
	spring_velocity = spring_velocity - inv_mass * tension * delta * dt

	if Vector3.length(delta) >= 0.5 and self._state == "falling" then
		damping = damping / 10
	end

	local energy = 0.5 * mass * Vector3.length_squared(spring_velocity)
	energy = energy * damping
	local vv = math.sqrt(energy / (0.5 * mass))
	spring_velocity = spring_velocity - Vector3.normalize(spring_velocity) * vv * dt

	if is_melee then
		spring_position = spring_position - right * lead_offset.x + up * lead_offset.y
	end

	local final_position = spring_position
	local t = Vector3.dot(right, final_position - position)
	final_position = final_position - right * t * horizontal_motion_damping
	local t = Vector3.dot(up, final_position - position)
	final_position = final_position - up * t * vertical_motion_damping
	local v_dot = Vector3.dot(forward, Vector3.up())
	final_position = (final_position + forward * motion_offset) - up * v_dot * vertical_look_multiplier

	if not is_melee then
		final_position = final_position + right * lead_offset.x + up * lead_offset.y
	end

	self.spring_position:store(spring_position)
	self.spring_velocity:store(spring_velocity)
	self.lead_offset:store(lead_offset)

	if script_data.debug_rig_motion then
		local aim_target_pos = Unit.world_position(self.first_person_unit, Unit.node(self.first_person_unit, "j_aim_target"))

		QuickDrawer:sphere(aim_target_pos - forward * 3, 0.1, Color(255, 255, 255))
		QuickDrawer:sphere(spring_position + forward * Vector3.length(spring_position - (aim_target_pos - forward * 3)), 0.1, Color(255, 0, 0))
		QuickDrawer:sphere(final_position + forward * Vector3.length(final_position - (aim_target_pos - forward * 3)), 0.1, Color(0, 255, 0))
	end

	if self._rig_offset_enabled then
		Managers.state.camera:set_offset(lead_offset.x, 0, 0)
	end

	Unit.animation_set_constraint_target(self.first_person_unit, self._aim_target_index, final_position)
end

PlayerUnitFirstPerson.change_state = function (self, state)
	self._state = state
end

PlayerUnitFirstPerson.play_camera_recoil = function (self, settings, t)
	if self._current_recoil_data then
		Managers.state.camera:stop_weapon_recoil(self._current_recoil_data)

		self._current_recoil_data = nil
	end

	local recoil_settings = {
		vertical_climb = settings.vertical_climb,
		horizontal_climb = settings.horizontal_climb,
		climb_start_time = t,
		climb_end_time = t + settings.climb_duration,
		restore_start_time = t + settings.climb_duration,
		restore_end_time = t + settings.climb_duration + settings.restore_duration,
		climb_function = settings.climb_function,
		restore_function = settings.restore_function
	}
	self._current_recoil_data = Managers.state.camera:weapon_recoil(recoil_settings)
end

return
