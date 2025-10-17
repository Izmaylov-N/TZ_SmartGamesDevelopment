local Unit = require("unit")

local warrior = Unit:new("Warrior", 120, 25, 0.15, 2.0)
local mage = Unit:new("Mage", 80, 35, 0.3, 2.5)

print("Created unit:")
Unit.getUnitInfo(warrior)
Unit.getUnitInfo(mage)