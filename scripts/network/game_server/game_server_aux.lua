GameServerAux = {}
local platform = PLATFORM
GameServerState = {}

if platform == "win32" then
	GameServerState.CONNECTING = "connecting"
	GameServerState.CONNECTED = "connected"
	GameServerState.DISCONNECTED = "disconnected"
end

GameServerLobbyState = {}

if platform == "win32" then
	GameServerLobbyState.RESERVING = "reserving"
	GameServerLobbyState.RESERVED = "reserved"
	GameServerLobbyState.JOINING = "joining"
	GameServerLobbyState.JOINED = "joined"
	GameServerLobbyState.FAILED = "failed"
	GameServerLobbyState.SERVER_IS_FULL = "server_is_full"
	GameServerLobbyState.TIMEOUT = "timeout"
	GameServerLobbyState.INVALID = "invalid"
end

GameServerAux.create_network_hash = function (config_file_name, project_hash)
	return LobbyAux.create_network_hash(config_file_name, project_hash)
end

GameServerAux.verify_lobby_data = function (lobby)
	return true
end

return
