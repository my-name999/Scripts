-- LocalScript inside StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create Screen GUI
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "TradeGUI"

-- Frame
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0

-- Title
local title = Instance.new("TextLabel", frame)
title.Text = "Treasure Trade"
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24

-- Accept Button
local acceptBtn = Instance.new("TextButton", frame)
acceptBtn.Text = "ACCEPT"
acceptBtn.Size = UDim2.new(0, 100, 0, 40)
acceptBtn.Position = UDim2.new(0.7, 0, 0.85, 0)
acceptBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
acceptBtn.TextColor3 = Color3.new(1, 1, 1)
acceptBtn.Font = Enum.Font.SourceSansBold
acceptBtn.TextSize = 20

-- Kick Button
local kickBtn = Instance.new("TextButton", frame)
kickBtn.Text = "KICK PLAYER"
kickBtn.Size = UDim2.new(0, 120, 0, 40)
kickBtn.Position = UDim2.new(0.05, 0, 0.85, 0)
kickBtn.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
kickBtn.TextColor3 = Color3.new(1, 1, 1)
kickBtn.Font = Enum.Font.SourceSansBold
kickBtn.TextSize = 20

-- Info Label
local info = Instance.new("TextLabel", frame)
info.Text = "Value difference: 31% (Max 40%)"
info.Size = UDim2.new(1, 0, 0, 30)
info.Position = UDim2.new(0, 0, 0.75, 0)
info.BackgroundTransparency = 1
info.TextColor3 = Color3.new(1, 1, 0.5)
info.Font = Enum.Font.SourceSans
info.TextSize = 16

-- Functionality (example placeholder)
acceptBtn.MouseButton1Click:Connect(function()
    print("Trade Accepted")
end)

kickBtn.MouseButton1Click:Connect(function()
    print("Player Kicked")
end)
