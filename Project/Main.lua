local Unit = require("unit")
local BattleManager = require("battlemanager")
local UnitsManager = require("unitsmanager")

local unitsManager = UnitsManager:New()

local warrior = Unit:NewUnit("Warrior", 120, 25, 0.15, 2.0)
local mage = Unit:NewUnit("Mage", 80, 35, 0.3, 2.5)
local archer = Unit:NewUnit("Archer", 90, 30, 0.25, 2.2)
local tank = Unit:NewUnit("Tank", 200, 15, 0.1, 1.5)

unitsManager:AddUnit(warrior)
unitsManager:AddUnit(mage)
unitsManager:AddUnit(archer)
unitsManager:AddUnit(tank)

BattleManager:StartBattle(unitsManager:GetUnits())
