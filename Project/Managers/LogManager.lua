LogManager = {}

function LogManager:NewLogManager()
    local obj = { 
        logMessages = {}
    }

    setmetatable(obj, { __index = LogManager})
    return obj
end

function LogManager:AddMessage(message)
    local position = #self.logMessages + 1
    self.logMessages[position] = message
end

function LogManager:ShowAllMessage()

    for i = 1, #self.logMessages do
        print(self.logMessages[i])
    end
    
    print(string.rep("=", 50))
end

return LogManager