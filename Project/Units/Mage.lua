local Unit = require("units.unit")

Mage = {}
setmetatable(Mage, { __index = Unit })

function Mage:NewUnit(name, hp, damage, crit_chance, crit_mult)
    local obj = Unit:NewUnit(name, hp, damage, crit_chance, crit_mult)
    
    setmetatable(obj, { __index = Mage })
    return obj
end

return Mage