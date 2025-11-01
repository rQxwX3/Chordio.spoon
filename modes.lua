local M = {}

---@param combo Combo
---@return boolean
function M.isValidCombo(combo)
	if not combo.keys then return false end

	for _, key in ipairs(combo.keys) do
		if not hs.keycodes.map[key] then
			return false
		end
	end

	for _, key in ipairs(combo.mods) do
		if not hs.keycodes.map[key] then
			return false
		end
	end

	return true
end

---@param mode Mode
---@return boolean
function M.addNewMode(mode)
	local enterCombo = mode.enterCombo
	local exitCombo = mode.exitCombo

	if not M.isValidCombo(enterCombo) or not M.isValidCombo(exitCombo) then
		Chordio.utility.printWarning("invalid combo provided for mode " .. mode.name)
		return false
	end

	local newMode = hs.hotkey.modal.new(enterCombo.mods, enterCombo.keys[1])
	table.insert(Chordio.modesTable, newMode)

	return true
end

return M
