local Unit = require("units.unit")

Tank = {}
setmetatable(Tank, { __index = Unit })

function Tank:NewUnit(name, hp, damage, crit_chance, crit_mult)
    local obj = Unit:NewUnit(name, hp, damage, crit_chance, crit_mult)
    
    setmetatable(obj, { __index = Tank })
    return obj
end

return Tank