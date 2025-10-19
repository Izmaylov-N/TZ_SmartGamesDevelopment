Unit = {}

function Unit:NewUnit(name, hp, damage, crit_chance, 
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

function Unit:Attack(target)
    local damage = self.Damage
        if math.random() < self.Crit_chance then
        damage = math.floor(damage * self.Crit_mult)
        print(self.Name .. " Critickal damage: " .. damage .. " damage!")
    else
        print(self.Name .. " attack " .. target.Name .. " on " .. damage .. " damage")
    end

    target:TakeDamage(damage)
end

function Unit:TakeDamage(damage)
    self.HP = self.HP - damage

    if self.HP <= 0 then
        self.HP = 0
        self.IsDead = true
        print(self.Name .. " DEAD!")
    else
        print(self.Name .. " take " .. damage .. " damage.HP: " .. self.HP)
    end
end

function Unit:IsAlive()
    return self.HP > 0
end

return Unit