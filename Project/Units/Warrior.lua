local Unit = require("units.unit")

Warrior = {}
setmetatable(Warrior, { __index = Unit })

function Warrior:NewUnit(name, hp, damage, crit_chance, crit_mult)
    local obj = Unit:NewUnit(name, hp, damage, crit_chance, crit_mult)
    
    setmetatable(obj, { __index = Warrior })
    return obj
end

return Warrior