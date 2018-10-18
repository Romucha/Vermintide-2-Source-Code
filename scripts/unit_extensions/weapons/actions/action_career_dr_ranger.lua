ActionCareerDRRanger = class(ActionCareerDRRanger, ActionCareerBase)

ActionCareerDRRanger.init = function (self, world, item_name, is_server, owner_unit, damage_unit, first_person_unit, weapon_unit, weapon_system)
	ActionCareerDRRanger.super.init(self, world, item_name, is_server, owner_unit, damage_unit, first_person_unit, weapon_unit, weapon_system)

	self.career_extension = ScriptUnit.extension(owner_unit, "career_system")
	self.input_extension = ScriptUnit.extension(owner_unit, "input_system")
	self.inventory_extension = ScriptUnit.extension(owner_unit, "inventory_system")
	self.status_extension = ScriptUnit.extension(owner_unit, "status_system")
end

ActionCareerDRRanger.client_owner_start_action = function (self, new_action, t, chain_action_data, power_level)
	self.current_action = new_action
	self.action_time_started = t
	self.thrown = nil
	local slot = new_action.slot_to_wield

	self.inventory_extension:wield(slot)

	self.power_level = power_level
end

ActionCareerDRRanger._create_smoke_screen = function (self)
	local owner_unit = self.owner_unit
	local network_manager = Managers.state.network
	local network_transmit = network_manager.network_transmit
	local status_extension = ScriptUnit.extension(owner_unit, "status_system")
	local career_extension = ScriptUnit.extension(owner_unit, "career_system")
	local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")
	local buff_name = "bardin_ranger_activated_ability"
	local talent_extension = ScriptUnit.extension(owner_unit, "talent_system")
	local has_extended_duration_talent = talent_extension:has_talent("bardin_ranger_activated_ability_duration", "dwarf_ranger", true)

	if has_extended_duration_talent then
		buff_name = "bardin_ranger_activated_ability_duration"
	end

	if talent_extension:has_talent("bardin_ranger_activated_ability_heal", "dwarf_ranger", true) then
		local unit_id = network_manager:unit_game_object_id(owner_unit)
		local heal_type_id = NetworkLookup.heal_types.career_skill

		network_transmit:send_rpc_server("rpc_request_heal", unit_id, 20, heal_type_id)
	end

	buff_extension:add_buff(buff_name, {
		attacker_unit = owner_unit
	})

	local owner_player = self.owner_player

	if owner_player.local_player then
		local first_person_extension = ScriptUnit.extension(owner_unit, "first_person_system")

		first_person_extension:play_hud_sound_event("Play_career_ability_bardin_ranger_enter", nil, true)
		first_person_extension:play_hud_sound_event("Play_career_ability_bardin_ranger_loop")

		MOOD_BLACKBOARD.skill_ranger = true
	end

	local career_extension = ScriptUnit.extension(owner_unit, "career_system")

	career_extension:set_state("bardin_activate_ranger")
	status_extension:set_invisible(true)
end

ActionCareerDRRanger._play_vo = function (self)
	local owner_unit = self.owner_unit
	local dialogue_input = ScriptUnit.extension_input(owner_unit, "dialogue_system")
	local event_data = FrameTable.alloc_table()

	dialogue_input:trigger_networked_dialogue_event("activate_ability", event_data)
end

ActionCareerDRRanger.client_owner_post_update = function (self, dt, t, world, can_damage)
	if self.thrown then
		return
	end

	local current_action = self.current_action
	local throw_time = self.action_time_started + current_action.throw_time

	if t >= throw_time then
		self:_throw()
	end
end

ActionCareerDRRanger._stagger_explosion = function (self)
	local owner_unit = self.owner_unit
	local world = self.world
	local is_server = self.is_server
	local network_manager = Managers.state.network
	local network_transmit = network_manager.network_transmit
	local owner_unit_go_id = network_manager:unit_game_object_id(owner_unit)
	local explosion_template_name = "bardin_ranger_activated_ability_stagger"
	local explosion_template = ExplosionTemplates[explosion_template_name]
	local scale = 1
	local damage_source = "career_ability"
	local is_husk = false
	local position = POSITION_LOOKUP[owner_unit]
	local rotation = Quaternion.identity()

	DamageUtils.create_explosion(world, owner_unit, position, rotation, explosion_template, scale, damage_source, is_server, is_husk, owner_unit, self.power_level, false)

	local explosion_template_id = NetworkLookup.explosion_templates[explosion_template_name]
	local damage_source_id = NetworkLookup.damage_sources[damage_source]

	if is_server then
		network_transmit:send_rpc_clients("rpc_create_explosion", owner_unit_go_id, false, position, rotation, explosion_template_id, scale, damage_source_id, 0, false)
	else
		network_transmit:send_rpc_server("rpc_create_explosion", owner_unit_go_id, false, position, rotation, explosion_template_id, scale, damage_source_id, 0, false)
	end
end

ActionCareerDRRanger._throw = function (self)
	self:_create_smoke_screen()
	self:_stagger_explosion()
	self:_play_vo()

	self.thrown = true
end

ActionCareerDRRanger.finish = function (self, reason)
	ActionCareerDRRanger.super.finish(self, reason)

	if not self.thrown then
		self:_throw()
	end

	if reason ~= "action_complete" then
		return
	end

	self.inventory_extension:wield_previous_slot()
	self.career_extension:start_activated_ability_cooldown()
end

return
