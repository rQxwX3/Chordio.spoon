local M = {}

---@type Mode[]
M.modes = {
	{
		name = "nameOfTheMode",
		enterCombo = { mods = {}, keys = { "a" } },
		exitCombo = { mods = {}, keys = { "a" } },
	},
}

return M
