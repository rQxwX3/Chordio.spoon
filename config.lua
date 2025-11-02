local M = {}

local actions = require("actions")

---@type Mode[]
M.modes = {
	{
		name = "appSwitching",
		enterChord = { mods = {}, keys = { "[" } },
		exitChord = { mods = {}, keys = { "]" } },
		actionChords = {
			{
				chord = { mods = {}, keys = { "a" } },
				action = { fun = actions.launchApp, params = { "Arc" } },
				immediateAction = true
			},
			{
				chord = { mods = {}, keys = { "w" } },
				action = { fun = actions.launchApp, params = { "Wezterm" } },
				immediateAction = true
			},
			{
				chord = { mods = {}, keys = { "t" } },
				action = { fun = actions.launchApp, params = { "Telegram" } },
				immediateAction = true
			},
		},
	},
}

return M
