--[[
    @ survive the night - https://www.roblox.com/games/990364410
]]

return function(Container, Section, esp)
    esp.Overrides.GetColor = function(character)
        local player = esp:GetPlrFromChar(character)
        if player and esp.Killers then
            if player.Character:FindFirstChild("Weapon") then
                return esp.Presets.Red
            end
        end
        return esp.Presets.White
    end
    Section:AddItem("Toggle", {Text = "Killers", Function = function(callback) esp.Killers = callback end})
end
