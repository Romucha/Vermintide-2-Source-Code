HuskTalentExtension = class(HuskTalentExtension)

HuskTalentExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self._unit = unit
	self.world = extension_init_context.world
	self.is_server = Managers.player.is_server
	self.player = extension_init_data.player
	self._profile_index = extension_init_data.profile_index
	self._talent_buff_ids = {}
	self._talent_ids = {
		0,
		0,
		0,
		0,
		0,
		0
	}
end

HuskTalentExtension.extensions_ready = function (self, world, unit)
	local career_extension = ScriptUnit.extension(unit, "career_system")
	self.buff_extension = ScriptUnit.extension(unit, "buff_system")
	self.career_extension = career_extension
	local current_hero_index = self._profile_index
	local current_hero = SPProfiles[current_hero_index]
	local hero_name = current_hero.display_name
	local career_name = career_extension:career_name()
	self._hero_name = hero_name
	self._career_name = career_name
end

HuskTalentExtension.set_talent_ids = function (self, talent_ids)
	self._talent_ids = talent_ids
end

local params = {}

HuskTalentExtension.apply_buffs_from_talents = function (self)
	local talent_ids = self._talent_ids
	local hero_name = self._hero_name
	local buff_extension = self.buff_extension
	local player = self.player

	self:_clear_buffs_from_talents()

	local talent_buff_ids = self._talent_buff_ids

	for i = 1, #talent_ids, 1 do
		local talent_id = talent_ids[i]
		local talent_data = Talents[hero_name][talent_id]

		if talent_data then
			local buffs = talent_data.buffs
			local buffer = talent_data.buffer

			if (player.local_player and (not buffer or buffer == "client")) or (self.is_server and buffer == "server") or ((self.is_server or player.local_player) and buffer == "both") then
				local num_buffs = (buffs and #buffs) or 0

				if num_buffs > 0 then
					for j = 1, num_buffs, 1 do
						local buff_template = buffs[j]
						local id = buff_extension:add_buff(buff_template)
						talent_buff_ids[#talent_buff_ids + 1] = id
					end
				end
			end
		end
	end
end

HuskTalentExtension._clear_buffs_from_talents = function (self)
	local buff_extension = self.buff_extension
	local talent_buff_ids = self._talent_buff_ids
	local num_talent_buff_ids = #talent_buff_ids

	for i = 1, num_talent_buff_ids, 1 do
		local id = talent_buff_ids[i]

		buff_extension:remove_buff(id)
	end

	table.clear(self._talent_buff_ids)
end

HuskTalentExtension.has_talent = function (self, talent_name)
	local talent_ids = self._talent_ids
	local wanted_talent_lookup = TalentIDLookup[talent_name]

	if not wanted_talent_lookup then
		return false
	end

	if wanted_talent_lookup.hero_name ~= self._hero_name then
		return false
	end

	local wanted_talent_id = wanted_talent_lookup.talent_id

	for i = 1, #talent_ids, 1 do
		local talent_id = talent_ids[i]

		if wanted_talent_id == talent_id then
			return true
		end
	end

	return false
end

HuskTalentExtension.get_talent_names = function (self)
	local talent_ids = self._talent_ids
	local talent_names = {}
	local talent_interface = Managers.backend:get_talents_interface()
	local career_name = self._career_name
	local talent_tree = talent_interface:get_talent_tree(career_name)

	for row, column in pairs(talent_ids) do
		if column == 0 then
			talent_names[#talent_names + 1] = "none"
		else
			talent_names[#talent_names + 1] = talent_tree[row][column]
		end
	end

	return talent_names
end

HuskTalentExtension.destroy = function (self)
	return
end

return
