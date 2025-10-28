local M = {}

---@param string warning
function M.printWarning(warning)
	print("Chordio.spoon: Warning: " .. warning)
end

---@return boolean
function M.toggleMode()
	local state = Chordio.state

	if not state then
		Chordio.utility.printWarning("cannot toggle mode, state is not undefined")
		return false
	end

	state.isNormalMode = not state.isNormalMode
	return true
end

return M
