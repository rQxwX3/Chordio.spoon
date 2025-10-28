local M = {}

local hsApps = hs.application

---@param appName string
---@return boolean
function M.launchApp(appName)
	local result = hsApps.launchOrFocus(appName)

	if not result then
		Chordio.utility.printWarning("application \'" .. appName .. "\' not found")
		return false
	end

	return true
end

return M
