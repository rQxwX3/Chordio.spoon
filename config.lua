local M = {}

---@type Mode[]
M.modes = {
	{
		name = "nameOfTheMode",
		enterChord = { mods = {}, keys = { "escape" } },
		exitChord = { mods = {}, keys = { "escape" } },
		actionChords = {
			{
				chord = { mods = {}, keys = { "a" } },
				action = function() return true end
			},
		},
	},
}

return M
