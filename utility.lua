local M = {}

---@param string warning
function M.printWarning(warning)
	print("Chordio: Warning: " .. warning)
end

---@param state State
---@return boolean
function M.toggleMode(state)
	if not state then
		Chordio.utility.printWarning("cannot toggle mode, undefined state")
		return false
	end

	state.isNormalMode = not state.isNormalMode
	return true
end

return M
