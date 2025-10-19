local Unit = require("units.unit")

Archer = {}
setmetatable(Archer, { __index = Unit })

function Archer:NewUnit(name, hp, damage, crit_chance, crit_mult)
    local obj = Unit:NewUnit(name, hp, damage, crit_chance, crit_mult)
    
    setmetatable(obj, { __index = Archer })
    return obj
end

return Archer