--[[
    @ 096 - https://www.roblox.com/games/12017032683
]]

return function(Container, Section, esp)
    esp:AddObjectListener(workspace, {
        Type = "Model",
        PrimaryPart = "HumanoidRootPart",
        CustomName = "096",
        Color = esp.Presets.Red,
        Validator = function(obj) return obj:FindFirstChild("AI Chase") and obj.Name == "SCP-096" end,
        IsEnabled = "ZeroNineSix"
    })
    Section:AddItem("Toggle", {Text = "096", Function = function(callback) esp.ZeroNineSix = callback end})
end
