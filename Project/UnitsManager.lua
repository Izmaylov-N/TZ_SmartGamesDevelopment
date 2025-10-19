UnitsManager = {}

function UnitsManager:New()
    local obj = {
        units = {}  
    }
    setmetatable(obj, { __index = UnitsManager })
    return obj
end

function UnitsManager:AddUnit(unit)
    local position = #self.units + 1
    self.units[position] = unit
end

function UnitsManager.GetUnitInfo(unit)
    print("+--------------------------+")
    print("|        UNIT INFO         |")
    print("+--------------------------+")
    print("| Name: " .. string.format("%-18s", unit.Name) .. " |")
    print("| HP: " .. string.format("%-20d", unit.HP) .. " |")
    print("| Damage: " .. string.format("%-16d", unit.Damage) .. " |")
    print("| Crit Chance: " .. string.format("%-11.2f", unit.Crit_chance) .. " |")
    print("| Crit Mult: " .. string.format("%-13.1f", unit.Crit_mult) .. " |")
    print("| Is Dead: " .. string.format("%-15s", tostring(unit.IsDead)) .. " |")
    print("+--------------------------+")
end

return UnitsManager