DEFAULT_INPUT_GROUP = "GLOBAL"
InputStackSettings = {
	{
		group_name = "chat",
		services = {
			"chat_input"
		}
	},
	{
		group_name = "main_popups",
		services = {
			"popup"
		}
	},
	{
		group_name = "game_popups",
		services = {
			"upsell_popup",
			"weave_tutorial"
		}
	},
	{
		group_name = "network_popups",
		services = {
			"mission_voting",
			"popup_join_lobby_handler"
		}
	},
	{
		group_name = "ui",
		services = {
			"Text",
			"motd"
		}
	}
}
InputServiceToGroupMap = {}

for group_id = 1, #InputStackSettings, 1 do
	local group_services = InputStackSettings[group_id].services

	for service_id = 1, #group_services, 1 do
		local service_name = group_services[service_id]
		InputServiceToGroupMap[service_name] = group_id
	end
end

return
