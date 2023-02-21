--[[
    @ nico's nextbots - https://www.roblox.com/games/10118559731
]]

return function(Container, Section, esp)
    print(filter)
    esp:AddObjectListener(workspace.bots, {
        Type = "Model",
        Recursive = true,
        PrimaryPart = "HumanoidRootPart",
        CustomName = function(obj)
            return tostring(obj.Name)
        end,
        Color = esp.Presets.Red,
        Validator = function(obj)
            return obj.Parent.Parent == workspace.bots and obj:FindFirstChild("bot")
        end,
        IsEnabled = "Nextbots"
    })
    for _, v in next, workspace:GetDescendants() do
        if v.Parent.Name == ".powerboxes" and v.Name == "PowerBox" then
            esp:Add(v, {
                Name = "Powerbox",
                Color = esp.Presets.Blue,
                IsEnabled = "Powerboxes"
            })
        end
    end
    Section:AddItem("Toggle", {Text = "Nextbots", Function = function(callback) esp.Nextbots = callback end})
    Section:AddItem("Toggle", {Text = "Powerboxes", Function = function(callback) esp.Powerboxes = callback end})
end
