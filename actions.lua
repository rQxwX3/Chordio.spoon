local M = {}

local hsApps = hs.application

---@param appName string
---@return boolean
function M.launchApp(appName)
	local result = hsApps.launchOrFocus(appName)

	if not result then
		print("warning: application \'" .. appName .. "\' not found")
		return false
	end

	return true
end

return M
