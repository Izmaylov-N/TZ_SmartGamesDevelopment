BattleManager = {}

function BattleManager:Fight(firstUnit, secondUnit)
    print("========== BATTLE START ==========")
    print(firstUnit.Name .. " vs " .. secondUnit.Name)
    print("==================================")

    local round = 1
    local currentAttacker = firstUnit
    local currentTarget = secondUnit

    while currentAttacker:IsAlive() and currentTarget:IsAlive() do
        print("\n---------- Round " .. round .. " ----------")

        currentAttacker:Attack(currentTarget)
        
        if currentTarget:IsAlive() then
            local temp = currentAttacker
            currentAttacker = currentTarget
            currentTarget = temp
        end
        
        round = round + 1
    end
    
    local winner = currentAttacker:IsAlive() and currentAttacker or currentTarget
    print("\nWinner: " .. winner.Name .. "!")
    print("========== BATTLE END ==========")
end

return BattleManager