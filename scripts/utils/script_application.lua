ScriptApplication = ScriptApplication or {}
local string_format = string.format
ScriptApplication.num_crashify_prints = ScriptApplication.num_crashify_prints or {}

ScriptApplication.send_to_crashify = function (system, message, ...)
	local print_key = system .. message
	local print_count = ScriptApplication.num_crashify_prints[print_key] or 0
	print_count = print_count + 1

	Application.warning("Following data will be uploaded to Crashify:\n<<CrashifyData>>")

	local message_formatted = string_format(message, ...)
	local body = string_format("\"[%s] %s\", Num ocurrencies: %s", system, message_formatted, print_count)

	if rawget(_G, "Steam") then
		body = string_format("%s, User: %s %q", body, Steam.user_id(), Steam.user_name())
	end

	if print_count == 1 then
		Application.warning("%s\n%s<</CrashifyData>>\n", body, Script.callstack())
		Application.set_exit_code(57005)
	else
		Application.warning("%s\n<</CrashifyData>>\n", body)
	end

	ScriptApplication.num_crashify_prints[print_key] = print_count
end

ScriptApplication.set_crashify_tag = function (tag, data)
	printf("[CrashifyCustomTag] %s, %s", tag, data)
end

return
