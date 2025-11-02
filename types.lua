---@class Chord
---@field mods string[]
---@field keys string[]
---
---@class ActionChord
---@field chord Chord
---@field action Action

---@class Mode
---@field name string
---@field enterChord Chord
---@field exitChord Chord
---@field actionChords ActionChord[]
---
---@class HSMode
---@field enter fun(self)
---@field exit fun(self)
---@field bind fun(self, mods:string[], key:string, pressed:fun(), released:fun())
---@field unbind fun(self, mods:string[], key:string)
---@field delete fun(self)
---@field entered fun(self):boolean
---@field exited fun(self):boolean
---@field setTitle fun(self, title:string)

---@alias Action fun(...): boolean

return {}
