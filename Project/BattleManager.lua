BattleManager = {}

function BattleManager:StartBattle(units)
    print("========== BATTLE START ===========")
    print("Participants: " .. #units .. " units")

    for i, unit in ipairs(units) do
        print(i .. ". " .. unit.Name)
    end
    print("===================================")

    local round = 1
    local aliveCount = #units

    while aliveCount > 1 do
        print("\n------------ Round " .. round .. " -----------")

        local attackerIndex, targetIndex = self:GetRandomFighters(units)
        local attacker = units[attackerIndex]
        local target = units[targetIndex]

        if attacker and target and attacker:IsAlive() and target:IsAlive() then
            print(attacker.Name .. " attacks " .. target.Name)
            attacker:Attack(target)
        end    

        aliveCount = self:CountAliveUnits(units)
        round = round + 1
    end
    
    local winner = self:FindWinner(units)
    if winner then 
        print("\nWinner: " .. winner.Name .. "!")
    end
    print("=========== BATTLE END ==========")
end

function BattleManager:GetRandomFighters(units)
    local aliveUnits = {}

    for i = 1, #units do
        if units[i]:IsAlive() then
            table.insert(aliveUnits, i)
        end
    end

    if #aliveUnits < 2 then return nil, nil end

    local attackerIndex = math.random(1, #aliveUnits)
    local attacker = aliveUnits[attackerIndex]

    local targetIndex 
    repeat
        targetIndex = math.random(1, #aliveUnits)
    until targetIndex ~= attackerIndex

    return aliveUnits[attackerIndex], aliveUnits[targetIndex]
end

function BattleManager:CountAliveUnits(units)
    local count = 0
    for i = 1, #units do
        if units[i]:IsAlive() then
            count = count + 1
        end
    end
    
    return count
end

function BattleManager:FindWinner(units)
    for i = 1, #units do
        if units[i]:IsAlive() then
            return units[i]
        end
    end

    return nil
end

return BattleManager