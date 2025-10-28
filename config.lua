local M = {}

---@type Mode[]
M.modes = {
	{
		name = "nameOfTheMode",
		enterCombo = { mods = {}, keys = { "escape" } },
		exitCombo = { mods = {}, keys = { "escape" } }
	},
}

return M
