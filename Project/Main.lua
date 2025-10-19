local Unit = require("unit")
local BattleManager = require("battlemanager")
local UnitsManager = require("unitsmanager")

local unitsManager = UnitsManager:New()

local warrior = Unit:NewUnit("Warrior", 120, 25, 0.15, 2.0)
local mage = Unit:NewUnit("Mage", 80, 35, 0.3, 2.5)

unitsManager:AddUnit(warrior)
unitsManager:AddUnit(mage)

BattleManager:Fight(warrior, mage)
