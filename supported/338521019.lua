--[[
    @ identity fraud - https://www.roblox.com/games/338521019
]]

return function(Container, Section, esp)
    esp:AddObjectListener(workspace.NPCs, {
        Type = "Model",
        PrimaryPart = "HumanoidRootPart",
        CustomName = function(obj)
            return "[Monster] " .. tostring(obj.Name)
        end,
        Color = esp.Presets.Red,
        Validator = function(obj)
            return obj:FindFirstChild("Ai")
        end,
        IsEnabled = "Monsters"
    })
    if workspace:FindFirstChild("Doors") and workspace.Doors:FindFirstChild("Door1") then
        esp:Add(workspace.Doors.Door1, {Name = "Door 1", IsEnabled = "Doors", Color = Color3.fromRGB(129, 118, 228)})
    end
    if workspace:FindFirstChild("Second Door") and workspace["Second Door"]:FindFirstChild("Door1") then
        esp:Add(workspace["Second Door"].Door1, {Name = "Door 2", IsEnabled = "Doors", Color = Color3.fromRGB(129, 118, 228)})
    end
    if workspace:FindFirstChild("Third Door") and workspace["Third Door"]:FindFirstChild("Door1") then
        esp:Add(workspace["Third Door"].Door1, {Name = "Door 3", IsEnabled = "Doors", Color = Color3.fromRGB(129, 118, 228)})
    end
    if workspace:FindFirstChild("Finale Door") and workspace["Finale Door"]:FindFirstChild("Door1") then
        esp:Add(workspace["Finale Door"].Door1, {Name = "Finale Door", IsEnabled = "Doors", Color = Color3.fromRGB(129, 118, 228)})
    end
    Section:AddItem("Toggle", {Text = "Monsters", Function = function(callback) esp.Monsters = callback end})
    Section:AddItem("Toggle", {Text = "Doors", Function = function(callback) esp.Doors = callback end})
end
