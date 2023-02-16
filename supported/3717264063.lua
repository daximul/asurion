--[[
    @ nico's nextbots - https://www.roblox.com/games/10118559731
]]

return function(Container, Section, esp)
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
    Section:AddItem("Toggle", {Text = "Nextbots", Function = function(callback) esp.Nextbots = callback end})
end
