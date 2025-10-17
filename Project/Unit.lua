Unit = {}

function Unit:new(name, hp, damage, crit_chance, 
    crit_mult)
    local unit = {
        Name = name,
        HP = hp,
        Damage = damage,
        Crit_chance = crit_chance,
        Crit_mult = crit_mult,
        IsDead = false
    }

    setmetatable(unit, {__index = Unit})
    return unit
end

function Unit.getUnitInfo(unit)
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

return Unit