local Chordio = {}

-- Spoon metadata
Chordio.name = "Chordio"
Chordio.version = "0.1"
Chordio.author = "rQxwX3 <github@scrt.simplelogin.com>"
Chordio.homepage = "https://github.com/rQxwX3/Chordio.spoon"

-- Set the dynamic path to Spoon
Chordio.path = package.searchpath("Chordio", package.path):match("(.*/)")
package.path = package.path .. ';' .. Chordio.path .. '?.lua'

---@type State
Chordio.state = {
	isNormalMode = false
}

Chordio.actions = require("actions")
Chordio.utility = require("utility")
Chordio.chords = require("chords")
Chordio.config = require("config")

function Chordio:init()
	print("hello from the chordio world")
end

return Chordio
