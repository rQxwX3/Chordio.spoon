--require("types")

local M = {}

---@param state State
---@return boolean
function M.toggleMode(state)
	if not state then
		print("warning: cannot toggle mode, undefined state")
		return false
	end

	state.isNormalMode = not state.isNormalMode
	return true
end

return M
