--[[
    @ survive the night - https://www.roblox.com/games/990364410
]]

return function(Container, Section, esp)
    esp:AddObjectListener(workspace, {
        Name = "Weapon",
        Recursive = true,
        CustomName = "Killer",
        Color = esp.Presets.Red,
        PrimaryPart = function(obj) return obj.Parent.HumanoidRootPart end,
        IsEnabled = "Killers"
    })
    Section:AddItem("Toggle", {Text = "Killers", Function = function(callback) esp.Killers = callback end})
end
