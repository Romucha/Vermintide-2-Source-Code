require("scripts/unit_extensions/default_player_unit/player_sound_effect_extension")

SoundEffectSystem = class(SoundEffectSystem, ExtensionSystemBase)
local RPCS = {
	"rpc_aggro_unit_changed"
}
local extensions = {
	"PlayerSoundEffectExtension"
}

SoundEffectSystem.init = function (self, entity_system_creation_context, system_name)
	SoundEffectSystem.super.init(self, entity_system_creation_context, system_name, extensions)

	local network_event_delegate = entity_system_creation_context.network_event_delegate
	self.network_event_delegate = network_event_delegate

	network_event_delegate:register(self, unpack(RPCS))
end

SoundEffectSystem.destroy = function (self)
	self.network_event_delegate:unregister(self)
end

SoundEffectSystem.aggro_unit_changed = function (self, target_unit, enemy_unit, has_aggro)
	local sound_effect_extension = ScriptUnit.has_extension(target_unit, "sound_effect_system")

	if not sound_effect_extension then
		return
	end

	sound_effect_extension:aggro_unit_changed(enemy_unit, has_aggro)

	local target_unit_id = self.unit_storage:go_id(target_unit)
	local enemy_unit_id = self.unit_storage:go_id(enemy_unit)

	if self.is_server then
		self.network_transmit:send_rpc_clients("rpc_aggro_unit_changed", target_unit_id, enemy_unit_id, has_aggro)
	else
		self.network_transmit:send_rpc_server("rpc_aggro_unit_changed", target_unit_id, enemy_unit_id, has_aggro)
	end
end

SoundEffectSystem.rpc_aggro_unit_changed = function (self, sender, target_unit_id, enemy_unit_id, has_aggro)
	local target_unit = self.unit_storage:unit(target_unit_id)
	local enemy_unit = self.unit_storage:unit(enemy_unit_id)
	local sound_effect_extension = ScriptUnit.has_extension(target_unit, "sound_effect_system")

	if not sound_effect_extension then
		return
	end

	sound_effect_extension:aggro_unit_changed(enemy_unit, has_aggro)
end

SoundEffectSystem.hot_join_sync = function (self)
	return
end

return
