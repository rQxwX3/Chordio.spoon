local M = {}

---@param modeName string
---@param actionChord ActionChord
---@return boolean
function M.setHSModeHotKey(modeName, actionChord)
	local util = require("utility")

	if not util.isValidChord(actionChord) then
		return false
	end

	local hsMode = Chordio.modeHSModeMap[modeName]

	if not hsMode then
		return false
	end

	local chord, action = actionChord.chord, actionChord.action
	hsMode:bind(chord.mods, chord.keys[1], nil, action)

	return true
end

return M
