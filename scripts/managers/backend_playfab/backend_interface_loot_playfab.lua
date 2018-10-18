local PlayFabClientApi = require("PlayFab.PlayFabClientApi")
BackendInterfaceLootPlayfab = class(BackendInterfaceLootPlayfab)

BackendInterfaceLootPlayfab.init = function (self, backend_mirror)
	self._backend_mirror = backend_mirror
	self._last_id = 0
	self._loot_requests = {}
end

BackendInterfaceLootPlayfab.ready = function (self)
	return true
end

BackendInterfaceLootPlayfab.update = function (self, dt)
	return
end

BackendInterfaceLootPlayfab._new_id = function (self)
	self._last_id = self._last_id + 1

	return self._last_id
end

BackendInterfaceLootPlayfab.open_loot_chest = function (self, hero_name, backend_id)
	local id = self:_new_id()
	local data = {
		hero_name = hero_name,
		playfab_id = backend_id,
		id = id
	}
	local generate_loot_chest_rewards_request = {
		FunctionName = "generateLootChestRewards",
		FunctionParameter = data
	}
	local success_callback = callback(self, "loot_chest_rewards_request_cb", data)
	local request_queue = self._backend_mirror:request_queue()

	request_queue:enqueue(generate_loot_chest_rewards_request, success_callback, true)

	return id
end

BackendInterfaceLootPlayfab.loot_chest_rewards_request_cb = function (self, data, result)
	local function_result = result.FunctionResult
	local items = function_result.items
	local unlocked_weapon_skins = function_result.unlocked_weapon_skins
	local consume_data = function_result.consumed_chest
	local chest_backend_id = consume_data.ItemInstanceId
	local remaining_uses = consume_data.RemainingUses
	local num_items = #items
	local loot = {}
	local backend_mirror = self._backend_mirror

	for i = 1, num_items, 1 do
		local item = items[i]
		local backend_id = item.ItemInstanceId
		local item_data = rawget(ItemMasterList, item.ItemId)

		backend_mirror:add_item(backend_id, item)

		loot[#loot + 1] = backend_id
	end

	if remaining_uses > 0 then
		backend_mirror:update_item_field(chest_backend_id, "RemainingUses", remaining_uses)
	else
		backend_mirror:remove_item(chest_backend_id)
	end

	if unlocked_weapon_skins then
		for i = 1, #unlocked_weapon_skins, 1 do
			backend_mirror:add_unlocked_weapon_skin(unlocked_weapon_skins[i])
		end
	end

	local id = data.id
	self._loot_requests[id] = loot
end

BackendInterfaceLootPlayfab.generate_end_of_level_loot = function (self, game_won, quick_play_bonus, difficulty, level_key, num_tomes, num_grims, num_loot_dice, hero_name, start_experience, end_experience, deed_item_name, deed_backend_id)
	local id = self:_new_id()
	local data = {
		won = game_won,
		quick_play_bonus = quick_play_bonus,
		difficulty = difficulty,
		level_name = level_key,
		num_tomes = num_tomes,
		num_grims = num_grims,
		num_dice = num_loot_dice,
		start_experience = start_experience,
		end_experience = end_experience,
		hero_name = hero_name,
		deed_item_name = deed_item_name,
		deed_backend_id = deed_backend_id,
		id = id
	}
	local generate_end_of_level_loot_request = {
		FunctionName = "generateEndOfLevelLoot",
		FunctionParameter = data
	}
	local success_callback = callback(self, "end_of_level_loot_request_cb", data)
	local request_queue = self._backend_mirror:request_queue()

	request_queue:enqueue(generate_end_of_level_loot_request, success_callback, true)

	return id
end

BackendInterfaceLootPlayfab.end_of_level_loot_request_cb = function (self, data, result)
	local function_result = result.FunctionResult
	local id = data.id
	local rewards = function_result.Rewards
	local items = function_result.Result
	local random_value = function_result.RandomValue
	local consumed_deed_result = function_result.ConsumedDeedResult
	local experience = function_result.Experience
	local num_items = #items
	local loot_request = {}

	for item_type, item_data in pairs(rewards) do
		local backend_id, item = nil

		for i = 1, num_items, 1 do
			item = items[i]

			if item_data.ItemId == item.ItemId then
				backend_id = item.ItemInstanceId

				break
			end
		end

		loot_request[item_type] = {
			backend_id = backend_id
		}

		if item_type == "chest" then
			loot_request[item_type].random_value = random_value
		end

		self._backend_mirror:add_item(backend_id, item)
	end

	if consumed_deed_result then
		local deed_backend_id = consumed_deed_result.ItemInstanceId

		self._backend_mirror:remove_item(deed_backend_id)
	end

	local hero_name = data.hero_name
	local key = hero_name .. "_experience"

	self._backend_mirror:set_read_only_data(key, experience, true)
	Managers.backend:dirtify_interfaces()

	self._loot_requests[id] = loot_request
end

BackendInterfaceLootPlayfab.achievement_rewards_claimed = function (self, achievement_id)
	local mirror = self._backend_mirror
	local claimed_achievements = mirror:get_claimed_achievements()

	return claimed_achievements[achievement_id]
end

BackendInterfaceLootPlayfab.can_claim_achievement_rewards = function (self, achievement_id)
	local mirror = self._backend_mirror
	local claimed_achievements = mirror:get_claimed_achievements()

	if not claimed_achievements[achievement_id] then
		return true
	end

	return false
end

BackendInterfaceLootPlayfab.claim_achievement_rewards = function (self, achievement_id)
	local id = self:_new_id()
	local data = {
		achievement_id = achievement_id,
		id = id
	}
	local generate_achievement_rewards_request = {
		FunctionName = "generateAchievementRewards",
		FunctionParameter = data
	}
	local success_callback = callback(self, "achievement_rewards_request_cb", data)
	local request_queue = self._backend_mirror:request_queue()

	request_queue:enqueue(generate_achievement_rewards_request, success_callback, true)

	return id
end

BackendInterfaceLootPlayfab.achievement_rewards_request_cb = function (self, data, result)
	local function_result = result.FunctionResult
	local id = data.id

	if not function_result then
		Managers.backend:playfab_api_error(result)

		return
	elseif function_result == "reward_claimed" then
		Managers.backend:playfab_error(BACKEND_PLAYFAB_ERRORS.ERR_PLAYFAB_ACHIEVEMENT_REWARD_CLAIMED)

		self._loot_requests[id] = {}

		return
	end

	local items = function_result.items
	local achievement_id = function_result.achievement_id
	local backend_mirror = self._backend_mirror
	local loot = {}

	if items then
		for i = 1, #items, 1 do
			local item = items[i]
			local backend_id = item.ItemInstanceId
			local amount = item.UsesIncrementedBy or 1

			backend_mirror:add_item(backend_id, item)

			loot[i] = {
				backend_id,
				amount
			}
		end
	end

	backend_mirror:set_achievement_claimed(achievement_id)

	self._loot_requests[id] = loot
end

BackendInterfaceLootPlayfab.is_loot_generated = function (self, id)
	local loot_request = self._loot_requests[id]

	if loot_request then
		return true
	end

	return false
end

BackendInterfaceLootPlayfab.get_loot = function (self, id)
	return self._loot_requests[id]
end

return
