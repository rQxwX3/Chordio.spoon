local M = {}

---@param mode Mode
---@return boolean
function M.setupHSMode(mode)
	local modeName, enterChord, exitChord =
		mode.name, mode.enterChord, mode.exitChord

	local hsMode = hs.hotkey.modal.new()
	Chordio.nameHSModeMap[modeName] = hsMode

	local chords = require("chords")

	hs.hotkey.bind(enterChord.mods, enterChord.keys[1], function()
		M.enterHSMode(hsMode, modeName)
	end)

	-- hs.hotkey.bind(exitChord.mods, exitChord.keys[1], function()
	-- 	M.exitHSMode(hsMode)
	-- end)

	chords.setHSModeHotKey(hsMode, {
		chord = exitChord,
		action = { fun = M.exitHSMode, params = { hsMode } },
		immediateAction = false
	})

	for _, actionChord in ipairs(mode.actionChords) do
		chords.setHSModeHotKey(hsMode, actionChord)
	end

	return true
end

---@param hsMode HSMode
---@param modeName string
---@return boolean
function M.enterHSMode(hsMode, modeName)
	hs.alert(Chordio.currentMode)

	if not hsMode then
		return false
	end

	hsMode:enter()

	Chordio.currentMode = modeName
	return true
end

---@return boolean
function M.exitHSMode(hsMode)
	hs.alert(Chordio.currentMode)

	if not hsMode then
		return false
	end

	hsMode:exit()

	Chordio.currentMode = ""
	return true
end

return M
