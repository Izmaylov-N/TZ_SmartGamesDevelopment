UnitsManager = {}

function UnitsManager:NewUnitsManager()
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

function UnitsManager:GetUnits()
    return self.units
    
end

return UnitsManager