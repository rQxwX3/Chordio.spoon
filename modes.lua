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
function M.createHSMode(mode)
	local enterCombo = mode.enterCombo
	local exitCombo = mode.exitCombo
	local modeName = mode.name

	if not M.isValidCombo(enterCombo) or not M.isValidCombo(exitCombo) then
		Chordio.utility.printWarning("invalid combo provided for mode " .. modeName)
		return false
	end

	local hsMode = hs.hotkey.modal.new(enterCombo.mods, enterCombo.keys[1])
	Chordio.modeHSModeMap[modeName] = hsMode

	return true
end

---@param modeName string
---@return boolean
function M.enterHSMode(modeName)
	local hsMode = Chordio.modeHSModeMap[modeName]

	if not hsMode then
		return false
	end

	Chordio.currentMode = modeName

	return true
end

return M
