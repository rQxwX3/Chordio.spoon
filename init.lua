Chordio = {}

-- Spoon metadata
Chordio.name = "Chordio"
Chordio.version = "0.1"
Chordio.author = "rQxwX3 <github@scrt.simplelogin.com>"
Chordio.homepage = "https://github.com/rQxwX3/Chordio.spoon"

-- Set the dynamic path to Spoon
Chordio.path = package.searchpath("Chordio", package.path):match("(.*/)")
package.path = package.path .. ';' .. Chordio.path .. '?.lua'

Chordio.actions = require("actions")
Chordio.utility = require("utility")
Chordio.config = require("config")
Chordio.modes = require("modes")

---@type string
Chordio.currentMode = ""

---@type table<string, HSMode>
Chordio.modeHSModeMap = {}

function Chordio:init()
	self:loadConfig()
end

function Chordio:loadConfig()
	local config = self.config

	if not config then
		self.utility.printWarning("config not found")
		self:exit()
	end

	for _, mode in ipairs(config.modes) do
		self.modes.createHSMode(mode)
	end
end

function Chordio:exit()
	print("Chordio: exited")
end

return Chordio
