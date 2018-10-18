local function debug_print(str, ...)
	if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
		printf("[BotNavTransitionManager] " .. str, ...)
	end
end

local IS_BIDIRECTIONAL = false
local EXTRA_FALL_TRANSITION_WAYPOINT_DISTANCE = 0.1
BotNavTransitionManager = class(BotNavTransitionManager)
BotNavTransitionManager.TRANSITION_LAYERS = {
	bot_damage_drops = 10,
	bot_poison_wind = 20,
	fire_grenade = 30,
	barrel_explosion = 50,
	bot_jumps = 1,
	bot_leap_of_faith = 3,
	bot_ratling_gun_fire = 30,
	doors = 0.1,
	planks = 0.1,
	bot_ladders = 5,
	bot_drops = 1
}
BotNavTransitionManager.NAV_COST_MAP_LAYERS = {
	plague_wave = 30,
	troll_bile = 30,
	lamp_oil_fire = 30,
	warpfire_thrower_warpfire = 30,
	vortex_near = 50,
	stormfiend_warpfire = 50,
	vortex_danger_zone = 75
}

BotNavTransitionManager.init = function (self, world, physics_world, nav_world, is_server, network_event_delegate, using_editor)
	self._world = world
	self._physics_world = physics_world
	self._nav_world = nav_world
	self._index_offset = 471100
	self._current_index = self._index_offset + 1
	self._max_amount = 100
	self._bot_nav_transitions = {}
	self._bot_nav_transition_lookup = {}
	local nav_cost_map_cost_table = GwNavCostMap.create_tag_cost_table()
	self._nav_cost_map_cost_table = nav_cost_map_cost_table

	AiUtils.initialize_nav_cost_map_cost_table(nav_cost_map_cost_table, BotNavTransitionManager.NAV_COST_MAP_LAYERS)

	self._navtag_layer_cost_table = GwNavTagLayerCostTable.create()
	self._layerless_traverse_logic = GwNavTraverseLogic.create(nav_world, nav_cost_map_cost_table)
	self._traverse_logic = GwNavTraverseLogic.create(nav_world, nav_cost_map_cost_table)
	local allowed_layers = table.clone(BotNavTransitionManager.TRANSITION_LAYERS)

	table.merge(allowed_layers, NAV_TAG_VOLUME_LAYER_COST_BOTS)
	AiUtils.initialize_cost_table(self._navtag_layer_cost_table, allowed_layers)
	GwNavTraverseLogic.set_navtag_layer_cost_table(self._traverse_logic, self._navtag_layer_cost_table)

	self._ladder_smart_object_index = self._index_offset + self._max_amount
	self._ladder_transitions = {}
	self._debug_ladder_smart_objects_created = 0
	self._is_server = is_server

	if not using_editor then
		self._network_event_delegate = network_event_delegate

		network_event_delegate:register(self, "rpc_create_bot_nav_transition")
	end
end

BotNavTransitionManager.traverse_logic = function (self)
	return self._traverse_logic
end

BotNavTransitionManager.update = function (self, dt, t)
	if not script_data.ai_bots_debug and not script_data.ai_bot_transition_debug then
		return
	end

	local drawer = Managers.state.debug:drawer({
		mode = "immediate",
		name = "BotNavTransitionManager"
	})

	for _, transition in pairs(self._bot_nav_transitions) do
		local from = transition.from:unbox()
		local to = transition.to:unbox()
		local waypoint = transition.waypoint:unbox()
		local g = 50 + math.cos(math.pi * 0.5 * (t % 2 - 1)) * 200
		local color = Color(50, g, 50)

		drawer:line(from, waypoint, color)
		drawer:line(waypoint, to, color)
		drawer:sphere(from, 0.3, color)
		drawer:cone(to - Vector3.normalize(from - to) * 0.25, to, 0.3, color, 9, 9)
	end

	for _, transition in pairs(self._ladder_transitions) do
		local from = transition.from:unbox()
		local to = transition.to:unbox()
		local color = (transition.failed and Color(0, 0, 0)) or Color(255, 125, 0)

		drawer:line(from, to, color)
		drawer:sphere(from, 0.3, color)
		drawer:cone(to - Vector3.normalize(from - to) * 0.25, to, 0.3, color, 9, 9)
	end

	if Keyboard.pressed(Keyboard.button_index("l")) and Keyboard.button(Keyboard.button_index("left ctrl")) > 0 then
		self:debug_refresh_ladders()
	end
end

BotNavTransitionManager.clear_transitions = function (self)
	local transitions = self._bot_nav_transitions

	for i, _ in pairs(transitions) do
		self:_destroy_transition(transitions, i)
	end
end

BotNavTransitionManager.destroy = function (self)
	self._network_event_delegate:unregister(self)
	GwNavTagLayerCostTable.destroy(self._navtag_layer_cost_table)
	GwNavCostMap.destroy_tag_cost_table(self._nav_cost_map_cost_table)
	GwNavTraverseLogic.destroy(self._traverse_logic)
	GwNavTraverseLogic.destroy(self._layerless_traverse_logic)
end

BotNavTransitionManager._find_matching_layer = function (self, from, to, player_jumped)
	local diff = to - from
	local flat_length = Vector3.length(Vector3.flat(diff))
	local height = diff.z

	if player_jumped then
		return "bot_leap_of_faith"
	end

	local fall_settings = PlayerUnitMovementSettings.fall.heights
	local damage_multiplier = fall_settings.FALL_DAMAGE_MULTIPLIER
	local min_fall_damage_height = fall_settings.MIN_FALL_DAMAGE_HEIGHT
	local min_fall_damage_percentage = fall_settings.MIN_FALL_DAMAGE_PERCENTAGE
	local max_fall_damage_percentage = fall_settings.MAX_FALL_DAMAGE_PERCENTAGE
	local max_health = 100
	local min_fall_damage = max_health * min_fall_damage_percentage
	local max_fall_damage = max_health * max_fall_damage_percentage

	if height < -(min_fall_damage_height + (max_health * 0.5 - min_fall_damage) / damage_multiplier) then
		return nil
	elseif height < -min_fall_damage_height then
		return "bot_damage_drops"
	elseif height < -0.5 then
		return "bot_drops"
	end

	if height > 0.3 then
		return "bot_jumps"
	end
end

BotNavTransitionManager._destroy_transition = function (self, transitions, index)
	debug_print("destroying smart object %i", index)

	local transition = transitions[index]
	transitions[index] = nil
	self._bot_nav_transition_lookup[transition.unit] = nil
	local graph = transition.graph

	GwNavGraph.destroy(graph)
	World.destroy_unit(self._world, transition.unit)
end

BotNavTransitionManager.rpc_create_bot_nav_transition = function (self, sender, from, via, to, player_jumped)
	self:create_transition(from, via, to, player_jumped)
end

BotNavTransitionManager.create_transition = function (self, from, via, wanted_to, player_jumped, make_permanent, drawer)
	if not self._is_server then
		Managers.state.network.network_transmit:send_rpc_server("rpc_create_bot_nav_transition", from, via, wanted_to, player_jumped or false)

		return
	end

	local world = self._world
	local ph_world = self._physics_world
	local hits = PhysicsWorld.immediate_overlap(ph_world, "position", from, "shape", "sphere", "size", 0.1, "collision_filter", "filter_bot_nav_transition_overlap", "use_global_table")
	local hit_existing_transition = hits and #hits > 0

	if hit_existing_transition then
		debug_print("found_existing_transition")

		return false
	end

	local nav_world = self._nav_world
	local above = 0.3
	local beneath = 0.3
	local found_nav_mesh, z = GwNavQueries.triangle_from_position(nav_world, wanted_to, above, beneath, self._layerless_traverse_logic)

	if not found_nav_mesh then
		local lateral = 0.9
		local old_wanted_to = wanted_to
		wanted_to = GwNavQueries.inside_position_from_outside_position(nav_world, wanted_to, above, beneath, lateral)

		debug_print("fail no nav mesh")

		if wanted_to then
			z = wanted_to.z

			debug_print("fallback success")
		else
			if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
				local drawer = drawer or QuickDrawerStay
				local color = Color(150, 50, 50)

				drawer:line(from, old_wanted_to, color)
				drawer:sphere(from, 0.3, color)
				drawer:cone(old_wanted_to - Vector3.normalize(from - old_wanted_to) * 0.25, old_wanted_to, 0.3, color, 9, 9)
				drawer:cylinder(old_wanted_to - Vector3(0, 0, beneath), old_wanted_to + Vector3(0, 0, above), lateral, Color(100, 255, 0, 0), 20)
			end

			debug_print("fallback failed")

			return false
		end
	end

	local to = Vector3(wanted_to.x, wanted_to.y, z)

	if GwNavQueries.raycango(nav_world, from, to, self._traverse_logic) then
		if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
			local drawer = drawer or QuickDrawerStay
			local color = Color(255, 50, 0, 255)

			drawer:line(from, to, color)
			drawer:sphere(from, 0.3, color)
			drawer:sphere(to, 0.3, color)
			drawer:cone(to - Vector3.normalize(from - to) * 0.25, to, 0.3, color, 9, 9)
		end

		debug_print("area was already traversable")

		return false
	end

	local layer_name = self:_find_matching_layer(from, to, player_jumped)

	if not layer_name then
		debug_print("fail, no layer")

		return false
	end

	local index = self._current_index
	local transitions = self._bot_nav_transitions

	if transitions[index] then
		self:_destroy_transition(transitions, index)
	end

	local layer_id = LAYER_ID_MAPPING[layer_name]

	fassert(layer_id, "Layer %s is not defined.", layer_name)

	local waypoint = nil

	if player_jumped then
		waypoint = via
	else
		local from_to_via_flat_direction = Vector3.normalize(Vector3.flat(via - from))

		if Vector3.length_squared(from_to_via_flat_direction) > 0.001 then
			local test_position = via + from_to_via_flat_direction * EXTRA_FALL_TRANSITION_WAYPOINT_DISTANCE
			local hit, hit_position = PhysicsWorld.immediate_raycast(ph_world, via, from_to_via_flat_direction, EXTRA_FALL_TRANSITION_WAYPOINT_DISTANCE, "closest", "collision_filter", "filter_player_mover")

			if hit then
				waypoint = hit_position
			else
				waypoint = test_position
			end
		else
			waypoint = via
		end
	end

	local graph = GwNavGraph.create(nav_world, IS_BIDIRECTIONAL, {
		from,
		waypoint,
		to
	}, Colors.get("blue"), layer_id, index)

	GwNavGraph.add_to_database(graph)

	local unit = World.spawn_unit(world, "scripts/managers/bot_nav_transition/bot_nav_transition", from)

	Unit.set_data(unit, "bot_nav_transition_manager_index", index)

	transitions[index] = {
		graph = graph,
		from = Vector3Box(from),
		waypoint = Vector3Box(waypoint),
		to = Vector3Box(to),
		unit = unit,
		type = layer_name,
		permanent = make_permanent or false
	}
	self._bot_nav_transition_lookup[unit] = index

	debug_print("created transition from %s to %s, smart object id: %i", tostring(from), tostring(to), index)

	local next_index = index

	repeat
		next_index = (next_index - self._index_offset) % self._max_amount + 1 + self._index_offset
	until not transitions[next_index] or not transitions[next_index].permanent

	self._current_index = next_index

	return true, unit
end

BotNavTransitionManager.unregister_transition = function (self, unit)
	local index = self._bot_nav_transition_lookup[unit]

	fassert(index, "No transition index found for unit %s.", unit)
	self:_destroy_transition(self._bot_nav_transitions, index)
end

BotNavTransitionManager.transition_data = function (self, unit)
	local ladder_transition = self._ladder_transitions[unit]

	if ladder_transition then
		return "ladder", ladder_transition.from:unbox(), ladder_transition.to:unbox()
	else
		local index = self._bot_nav_transition_lookup[unit]
		local transition = self._bot_nav_transitions[index]

		return transition.type, transition.from:unbox(), transition.to:unbox(), transition.waypoint:unbox()
	end
end

BotNavTransitionManager.register_ladder = function (self, unit, index_offset, drawer)
	local data = {}
	local error_message = nil
	local index_offset = index_offset or 0
	local drawer = drawer or Managers.state.debug:drawer({
		mode = "retained",
		name = "BotNavTransitionManager_retained"
	})
	self._ladder_transitions[unit] = data
	local nav_world = self._nav_world
	local align_node = Unit.node(unit, "c_platform")
	local unit_rot = Unit.world_rotation(unit, index_offset)
	local back = -Quaternion.forward(unit_rot)
	local flat_back = Vector3.normalize(Vector3.flat(back))
	local down = -Quaternion.up(unit_rot)
	local align_pos = Unit.world_position(unit, align_node)
	local bottom_node_name = Unit.get_data(unit, "bottom_node")
	local bottom_node = (bottom_node_name and Unit.node(unit, bottom_node_name)) or index_offset
	local bottom_pos = Unit.world_position(unit, bottom_node)
	local length = Vector3.dot(bottom_pos - align_pos, down)
	local ph_world = self._physics_world
	local ray_from = align_pos + back * 1
	local ray_length = length + 10
	local hit, hit_position = PhysicsWorld.immediate_raycast(ph_world, ray_from, down, ray_length, "closest", "collision_filter", "filter_bot_nav_transition_ladder_ray")

	if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
		local ray_to = ray_from + down * ray_length
		local color = (hit and Color(0, 255, 0)) or Color(125, 0, 0)

		drawer:line(ray_from, ray_to, color)
		drawer:cone(ray_to - down * 0.25, ray_to, 0.3, color, 9, 9)
	end

	if not hit then
		error_message = string.format("Ladder raycast %s (%s) failed to find ground, will not be traversible by bots.", tostring(unit), tostring(ray_from))

		debug_print(error_message)
		drawer:line(ray_from, ray_from + Vector3.up() * 15, Colors.get("red"))

		data.failed = true
		data.to = Vector3Box(ray_from)
		data.from = Vector3Box(ray_from + down * ray_length)

		return error_message
	end

	local from, to, found_nav_mesh, z = nil
	local transition_to = bottom_pos - down * length
	found_nav_mesh, z = GwNavQueries.triangle_from_position(nav_world, transition_to, 0.3, 0.5, self._layerless_traverse_logic)

	if found_nav_mesh then
		to = Vector3(transition_to.x, transition_to.y, z)

		if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
			local debug_color = Color(0, 255, 0)

			drawer:sphere(to, 0.2, debug_color)
		end
	else
		local step_size = 0.2
		local max_steps = 5

		debug_print("failed finding align_pos nav mesh at %s", tostring(align_pos))

		for step_index = 1, max_steps, 1 do
			local check_pos = transition_to - flat_back * step_size * step_index
			found_nav_mesh, z = GwNavQueries.triangle_from_position(nav_world, check_pos, 0.3, 0.5, self._layerless_traverse_logic)

			if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
				local debug_color = (found_nav_mesh and Color(0, 255, 0)) or Color(255, 0, 0)

				drawer:sphere(check_pos, 0.2, debug_color)
			end

			if found_nav_mesh then
				to = check_pos
				to.z = z

				debug_print("Found align_pos nav mesh at step %i.", step_index)

				break
			end
		end

		if not found_nav_mesh then
			data.failed = true
			to = transition_to
			error_message = string.format("Failed to find align_pos nav mesh (%s). Giving up after %i steps. Ladder will NOT be traversible", tostring(align_pos), max_steps)

			debug_print(error_message)
		end
	end

	found_nav_mesh, z = GwNavQueries.triangle_from_position(nav_world, hit_position, 0.3, 0.5, self._layerless_traverse_logic)

	if found_nav_mesh then
		from = Vector3(hit_position.x, hit_position.y, z)
	else
		local step_size = 0.2
		local max_steps = 5

		debug_print("failed finding hit_position nav mesh at %s", tostring(align_pos))

		for step_index = 1, max_steps, 1 do
			local check_pos = hit_position + flat_back * step_size * step_index
			found_nav_mesh, z = GwNavQueries.triangle_from_position(nav_world, check_pos, 0.3, 0.5, self._layerless_traverse_logic)

			if script_data.ai_bots_debug or script_data.ai_bot_transition_debug then
				local debug_color = (found_nav_mesh and Color(0, 255, 0)) or Color(255, 0, 0)

				drawer:sphere(check_pos, 0.2, debug_color)
			end

			if found_nav_mesh then
				from = check_pos
				from.z = z

				debug_print("Found hit_position nav mesh at step %i.", step_index)

				break
			end
		end

		if not found_nav_mesh then
			data.failed = true
			from = hit_position
			error_message = string.format("Failed to find hit_position nav mesh (%s). Giving up after %i steps. Ladder will NOT be traversible", tostring(from), max_steps)

			debug_print(error_message)
		end
	end

	if data.failed then
		drawer:line(from, from + Vector3.up() * 15, Colors.get("red"))
	else
		local index = self._ladder_smart_object_index + 1
		local climbable_height = 1.5
		local ladder_is_bidirectional = hit_position.z > bottom_pos.z - climbable_height
		local layer_name = "bot_ladders"
		local layer_id = LAYER_ID_MAPPING[layer_name]

		fassert(layer_id, "Layer %s is not defined.", layer_name)

		local graph = GwNavGraph.create(nav_world, ladder_is_bidirectional, {
			to,
			align_pos,
			hit_position + back * 0.2,
			from
		}, Colors.get("blue"), layer_id, index)

		GwNavGraph.add_to_database(graph)

		self._ladder_smart_object_index = index
		data.index = index
		data.graph = graph
		self._debug_ladder_smart_objects_created = self._debug_ladder_smart_objects_created + 1
	end

	data.from = Vector3Box(from)
	data.to = Vector3Box(to)

	return error_message
end

BotNavTransitionManager.get_ladder_coordinates = function (self, unit)
	local data = self._ladder_transitions[unit]

	return data.from:unbox(), data.to:unbox(), data.failed
end

BotNavTransitionManager.debug_refresh_ladders = function (self)
	print("[BotNavTransitionManager] Refreshing ladders...")

	local temp_unit_table = {}

	for unit, data in pairs(self._ladder_transitions) do
		self:unregister_ladder(unit)

		temp_unit_table[#temp_unit_table + 1] = unit
	end

	self._ladder_smart_object_index = self._index_offset + self._max_amount

	fassert(self._debug_ladder_smart_objects_created == 0, "Failed to clean up all ladder smart objects during refresh, %i left.", self._debug_ladder_smart_objects_created)

	for _, unit in ipairs(temp_unit_table) do
		self:register_ladder(unit)
	end
end

BotNavTransitionManager.clear_ladder_transitions = function (self)
	local ladder_transitions = self._ladder_transitions

	for unit, data in pairs(ladder_transitions) do
		self:unregister_ladder(unit)
	end
end

BotNavTransitionManager.unregister_ladder = function (self, unit)
	local data = self._ladder_transitions[unit]
	local graph = data.graph

	if not data.failed then
		GwNavGraph.destroy(graph)

		self._debug_ladder_smart_objects_created = self._debug_ladder_smart_objects_created - 1
	end

	self._ladder_transitions[unit] = nil
end

BotNavTransitionManager.allow_layer = function (self, layer_name, layer_allowed)
	local layer_id = LAYER_ID_MAPPING[layer_name]

	if layer_allowed then
		GwNavTagLayerCostTable.allow_layer(self._navtag_layer_cost_table, layer_id)
	else
		GwNavTagLayerCostTable.forbid_layer(self._navtag_layer_cost_table, layer_id)
	end
end

BotNavTransitionManager.set_layer_cost = function (self, layer_name, layer_cost)
	local layer_id = LAYER_ID_MAPPING[layer_name]

	GwNavTagLayerCostTable.set_layer_cost_multiplier(self._navtag_layer_cost_table, layer_id, layer_cost)
end

return
