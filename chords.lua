local M = {}

local modes = require("modes")

---@param hsMode HSMode
---@param actionChord ActionChord
---@return boolean
function M.setHSModeHotKey(hsMode, actionChord)
	local util = require("utility")
	local chord, action = actionChord.chord, actionChord.action

	if not util.isValidChord(chord) then
		return false
	end

	if not hsMode then return false end

	if actionChord.immediateAction then
		hsMode:bind(chord.mods, chord.keys[1], nil, function()
			action.fun(table.unpack(action.params or {}))
			modes.exitHSMode(hsMode)
		end)
	else
		hsMode:bind(chord.mods, chord.keys[1], nil, function()
			modes.exitHSMode(hsMode)
			action.fun(table.unpack(action.params or {}))
		end)
	end

	return true
end

return M
