local RPC = RPC
local ignored_rpc_logs = table.mirror_array(GameSettingsDevelopment.ignored_rpc_logs)

local function rpc_local_print(rpc_name, ...)
	if ignored_rpc_logs[rpc_name] == nil then
		print("[LOCAL RPC] ", rpc_name, ...)
	end
end

NetworkTransmit = class(NetworkTransmit)

NetworkTransmit.init = function (self, is_server, connection_handler)
	self.is_server = is_server
	self.peer_id = Network.peer_id()
	self.server_peer_id = connection_handler.server_peer_id
	self.connection_handler = connection_handler
	self.local_rpc_queue = {
		{},
		{}
	}
	self.local_rpc_queue_n = {
		0,
		0
	}
	self.local_rpc_buffer_index = 1
	self.peer_ignore_list = {}
	self.game_session = nil
end

NetworkTransmit.set_game_session = function (self, session)
	self.game_session = session
end

NetworkTransmit.add_peer_ignore = function (self, peer_id)
	self.peer_ignore_list[peer_id] = true
end

NetworkTransmit.remove_peer_ignore = function (self, peer_id)
	self.peer_ignore_list[peer_id] = nil
end

NetworkTransmit.destroy = function (self)
	GarbageLeakDetector.register_object(self, "NetworkTransmit")
end

NetworkTransmit.queue_local_rpc = function (self, rpc_name, ...)
	local local_rpc_buffer_index = self.local_rpc_buffer_index
	local local_rpc_queue = self.local_rpc_queue[local_rpc_buffer_index]
	local local_rpc_queue_n = self.local_rpc_queue_n[local_rpc_buffer_index]
	local num_varargs = select("#", ...)

	fassert(pack_index[num_varargs + 2], "Could not pack local rpc %q due to too many varargs. Only 20 is currently supported.", rpc_name)
	pack_index[num_varargs + 2](local_rpc_queue, local_rpc_queue_n, rpc_name, num_varargs, ...)

	self.local_rpc_queue_n[local_rpc_buffer_index] = local_rpc_queue_n + num_varargs + 2
end

NetworkTransmit.transmit_local_rpcs = function (self)
	local local_rpc_buffer_index = self.local_rpc_buffer_index
	local local_rpc_queue_n = self.local_rpc_queue_n[local_rpc_buffer_index]
	local local_rpc_queue = self.local_rpc_queue[local_rpc_buffer_index]
	self.local_rpc_buffer_index = 3 - local_rpc_buffer_index
	local event_table = self.network_event_delegate.event_table
	local my_peer_id = self.peer_id
	local do_print_local_rpcs = Development.parameter("network_log_messages")
	local i = 0

	while local_rpc_queue_n > i do
		local rpc_name = local_rpc_queue[i]
		local rpc_num_args = local_rpc_queue[i + 1]

		if do_print_local_rpcs then
			rpc_local_print(rpc_name, unpack_index[rpc_num_args](local_rpc_queue, i + 2))
		end

		event_table[rpc_name](nil, my_peer_id, unpack_index[rpc_num_args](local_rpc_queue, i + 2))

		i = i + rpc_num_args + 2
	end

	fassert(i == local_rpc_queue_n, "Couldn't process all local rpcs!")

	self.local_rpc_queue_n[local_rpc_buffer_index] = 0
end

NetworkTransmit.set_network_event_delegate = function (self, network_event_delegate)
	self.network_event_delegate = network_event_delegate
end

NetworkTransmit.send_rpc = function (self, rpc_name, peer_id, ...)
	local rpc = RPC[rpc_name]
	local my_peer_id = self.peer_id

	fassert(rpc, "[NetworkTransmit:send_rpc()] rpc does not exist %q", rpc_name)
	self:_validate_rpc(rpc_name, ...)

	if peer_id == my_peer_id then
		self:queue_local_rpc(rpc_name, ...)
	else
		rpc(peer_id, ...)
	end
end

NetworkTransmit.send_rpc_server = function (self, rpc_name, ...)
	local rpc = RPC[rpc_name]

	fassert(rpc, "[NetworkTransmit:send_rpc_server()] rpc does not exist %q", rpc_name)
	self:_validate_rpc(rpc_name, ...)

	if self.is_server then
		self:queue_local_rpc(rpc_name, ...)
	else
		fassert(self.server_peer_id, "We don't have any server connection when trying to send RPC %q", rpc_name)
		rpc(self.server_peer_id, ...)
	end
end

NetworkTransmit.send_rpc_party_clients = function (self, rpc_name, party, ...)
	fassert(self.is_server, "Trying to send rpc %q on client to clients which is wrong. Only servers should use this function.", rpc_name)

	local rpc = RPC[rpc_name]

	fassert(rpc, "[NetworkTransmit:send_rpc_clients()] rpc does not exist: %q", rpc_name)

	local session = self.game_session

	if not session then
		return
	end

	local occupied_slots = party.occupied_slots
	local peer_ids = {}

	for _, player_data in ipairs(occupied_slots) do
		if player_data.is_player then
			peer_ids[#peer_ids + 1] = player_data.peer_id
		end
	end

	local peer_ignore_list = self.peer_ignore_list

	for _, peer_id in ipairs(GameSession.other_peers(session)) do
		if not peer_ignore_list[peer_id] and table.contains(peer_ids, peer_id) then
			rpc(peer_id, ...)
		end
	end
end

NetworkTransmit.send_rpc_clients = function (self, rpc_name, ...)
	fassert(self.is_server, "Trying to send rpc %q on client to clients which is wrong. Only servers should use this function.", rpc_name)

	local rpc = RPC[rpc_name]

	fassert(rpc, "[NetworkTransmit:send_rpc_clients()] rpc does not exist: %q", rpc_name)
	self:_validate_rpc(rpc_name, ...)

	local session = self.game_session

	if not session then
		return
	end

	local peer_ignore_list = self.peer_ignore_list

	for _, peer_id in ipairs(GameSession.other_peers(session)) do
		if not peer_ignore_list[peer_id] then
			rpc(peer_id, ...)
		end
	end
end

NetworkTransmit.send_rpc_clients_except = function (self, rpc_name, except, ...)
	fassert(self.is_server, "Trying to send rpc %q on client to clients which is wrong. Only servers should use this function.", rpc_name)

	local rpc = RPC[rpc_name]

	fassert(rpc, "[NetworkTransmit:send_rpc_clients_except()] rpc does not exist: %q", rpc_name)

	local session = self.game_session

	if not session then
		return
	end

	local peer_ignore_list = self.peer_ignore_list

	for _, peer_id in ipairs(GameSession.other_peers(session)) do
		if peer_id ~= except and not peer_ignore_list[peer_id] then
			rpc(peer_id, ...)
		end
	end
end

NetworkTransmit.send_rpc_all = function (self, rpc_name, ...)
	fassert(self.is_server, "Trying to send rpc %q on client to clients which is wrong. Only servers should use this function.", rpc_name)

	local rpc = RPC[rpc_name]

	fassert(rpc, "[NetworkTransmit:send_rpc_all()] rpc does not exist: %q", rpc_name)
	self:queue_local_rpc(rpc_name, ...)

	local session = self.game_session

	if not session then
		return
	end

	local peer_ignore_list = self.peer_ignore_list

	for _, peer_id in ipairs(GameSession.other_peers(session)) do
		if not peer_ignore_list[peer_id] then
			rpc(peer_id, ...)
		end
	end
end

NetworkTransmit.send_rpc_all_except = function (self, rpc_name, except, ...)
	fassert(self.is_server, "Trying to send rpc %q on client to clients which is wrong. Only servers should use this function.", rpc_name)

	local rpc = RPC[rpc_name]

	fassert(rpc, "[NetworkTransmit:send_rpc_all_except()] rpc does not exist: %q", rpc_name)

	local my_peer_id = self.peer_id

	if except ~= my_peer_id then
		self:queue_local_rpc(rpc_name, ...)
	end

	local session = self.game_session

	if not session then
		return
	end

	local peer_ignore_list = self.peer_ignore_list

	for _, peer_id in ipairs(GameSession.other_peers(session)) do
		if peer_id ~= except and not peer_ignore_list[peer_id] then
			rpc(peer_id, ...)
		end
	end
end

local _rpc_params_table = {}

NetworkTransmit._validate_rpc = function (self, rpc_name, ...)
	table.clear(_rpc_params_table)

	for i = 1, select("#", ...), 1 do
		_rpc_params_table[i] = select(i, ...)
	end

	local message_info = Network.message_info(rpc_name)
	local arguments = message_info.arguments

	for i, argument in ipairs(arguments) do
		local param = _rpc_params_table[i]

		if type(param) == "table" and argument.max_size and argument.max_size < #param then
			Application.warning("[NetworkTransmit:_validate_rpc] %s above max size: %d > %d", rpc_name, #param, argument.max_size)

			for _, p in ipairs(param) do
				Application.warning(p)
			end
		end
	end
end

return
