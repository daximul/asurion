--[[
    @ 096 - https://www.roblox.com/games/12017032683
]]

return function(Container, Section, esp)
    esp:AddObjectListener(workspace, {
        Type = "Model",
        PrimaryPart = "HumanoidRootPart",
        CustomName = function(obj) return gsub(tostring(obj.Name), "SCP-", "") end,
        Color = esp.Presets.Red,
        Validator = function(obj) return obj:FindFirstChild("AI Chase") end,
        IsEnabled = "SCPs"
    })
    Section:AddItem("Toggle", {Text = "SCPs", Function = function(callback) esp.SCPs = callback end})
end
