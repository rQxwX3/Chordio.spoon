local M = {}

---@param chord Chord
---@return boolean
function M.isValidChord(chord)
	if not chord.keys then return false end

	for _, key in ipairs(chord.keys) do
		if not hs.keycodes.map[key] then
			return false
		end
	end

	for _, mod in ipairs(chord.mods) do
		if not hs.keycodes.map[mod] then
			return false
		end
	end

	return true
end

---@param warning string
function M.printWarning(warning)
	print("Chordio.spoon: Warning: " .. warning)
end

return M
