local M = {}

---@param mode Mode
---@return boolean
function M.setupHSMode(mode)
	local enterChord = mode.enterChord
	local exitChord = mode.exitChord
	local modeName = mode.name

	local util = require("utility")

	if not util.isValidChord(enterChord) or not util.isValidChord(exitChord) then
		Chordio.utility.printWarning("invalid combo provided for mode " .. modeName)
		return false
	end

	Chordio.modeHSModeMap[modeName] = hs.hotkey.modal.new()

	return true
end

---@param modeName string
---@return boolean
function M.enterHSMode(modeName)
	local hsMode = Chordio.modeHSModeMap[modeName]

	if not hsMode then
		return false
	end

	hsMode:enter()
	Chordio.currentMode = modeName

	return true
end

---@return boolean
function M.exitHSMode()
	local hsMode = Chordio.modeHSModeMap[Chordio.currentMode]

	if not hsMode then
		return false
	end

	hsMode:exit()
	Chordio.currentMode = ""
	return true
end

return M
