---@class Chord
---@field mods string[]
---@field keys string[]
---
---@class ActionChord
---@field chord Chord
---@field action Action
---@field immediateAction boolean

---@class Mode
---@field name string
---@field enterChord Chord
---@field exitChord Chord
---@field actionChords ActionChord[]
---
---@class HSMode
---@field enter fun(self)
---@field exit fun(self)
---@field bind fun(
---self,
---mods:string[],
---key:string,
---message:string|nil,
---pressedfn:fun()|nil,
---releasedfn:fun()|nil,
---repeatfn:fun()|nil,
---)

---@class Action
---@field fun(...): boolean
---@field params table

return {}
