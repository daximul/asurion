--[[
    @ murder mystery 2 - https://www.roblox.com/games/142823291
]]

return function(Container, Section, esp)
    local roles, murderer, sheriff, hero = nil, nil, nil, nil
    cons.add(RunService.RenderStepped, function()
        roles = ReplicatedStorage:FindFirstChild("GetPlayerData", true):InvokeServer()
        murderer = filter(roles, function(name, player) return player.Role == "Murderer" and name end)[1]
        sheriff = filter(roles, function(name, player) return player.Role == "Sheriff" and name end)[1]
        hero = filter(roles, function(name, player) return player.Role == "Hero" and name end)[1]
    end)
    local isAlive = function(target)
        return filter(roles, function(name, player)
            return target.Name == name and (not player.Killed and not player.Dead)
        end)[1]
    end
    local getRole = function(player)
        return (player.Name == murderer and "Murderer") or (player.Name == sheriff and "Sheriff") or (player.Name == hero and "Hero")
    end
    esp.Overrides.GetColor = function(character)
        local player = esp:GetPlrFromChar(character)
        if player and esp.Roles and isAlive(player) then
            if getRole(player) == "Murderer" then
                return esp.Presets.Red
            elseif getRole(player) == "Sheriff" then
                return esp.Presets.Blue
            elseif getRole(player) == "Hero" and not isAlive(Players:FindFirstChild(sheriff)) then
                return esp.Presets.Yellow
            end
        end
        return esp.Presets.White
    end
    Section:AddItem("Toggle", {Text = "Roles", Function = function(callback) esp.Roles = callback end})
end
