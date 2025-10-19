local Mage = require("Units.mage")
local Archer = require("Units.Archer")
local Warrior = require("Units.Warrior")
local Tank = require("Units.Tank")

local BattleManager = require("Managers.BattleManager")
local UnitsManager = require("Managers.UnitsManager")
local LogManager = require("Managers.LogManager")

local unitsManager = UnitsManager:NewUnitsManager()
local logManager = LogManager:NewLogManager()

BattleManager.logManager = logManager
Unit.logManager = logManager

local warrior = Warrior:NewUnit("Warrior", 120, 25, 0.15, 2.0)
local mage = Mage:NewUnit("Mage", 80, 35, 0.3, 2.5)
local archer = Archer:NewUnit("Archer", 90, 30, 0.25, 2.2)
local tank = Tank:NewUnit("Tank", 200, 15, 0.1, 1.5)

unitsManager:AddUnit(warrior)
unitsManager:AddUnit(mage)
unitsManager:AddUnit(archer)
unitsManager:AddUnit(tank)

BattleManager:StartBattle(unitsManager:GetUnits())
logManager:ShowAllMessage()