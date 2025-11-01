---@class Combo
---@field mods string[]
---@field keys string[]

---@class Mode
---@field name string
---@field enterCombo Combo
---@field exitCombo Combo
---
--- @class HSMode
--- @field enter fun(self)
--- @field exit fun(self)
--- @field bind fun(self, mods:string[], key:string, pressed:fun(), released:fun())
--- @field unbind fun(self, mods:string[], key:string)
--- @field delete fun(self)
--- @field entered fun(self):boolean
--- @field exited fun(self):boolean
--- @field setTitle fun(self, title:string)

---@alias Action fun(...): boolean

return {}
