--[[
    @ murder - https://www.roblox.com/games/4572253581
]]

return function(Container, Section, esp)
    esp.Overrides.GetColor = function(character)
        local player = esp:GetPlrFromChar(character)
        if player and esp.Roles then
            if player.Status.Role.Value == "Murderer" then
                return esp.Presets.Red
            elseif player.Status.HasRevolver.Value == true then
                return esp.Presets.Blue
            end
        end
        return esp.Presets.White
    end
    esp.Overrides.GetName = function(character)
        local player = esp:GetPlrFromChar(character)
        return player and player.Status.FakeName.Value or "Invalid Name"
    end
    Section:AddItem("Toggle", {Text = "Roles", Function = function(callback) esp.Roles = callback end})
end
