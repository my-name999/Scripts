-- Create a ScreenGui and place it in the player's PlayerGui
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui
screenGui.Name = "FakeShopGui"

-- Create the background frame for the fake shop
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 600)
frame.Position = UDim2.new(0.5, -200, 0.5, -300)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BackgroundTransparency = 0.5
frame.Parent = screenGui

-- Title Text
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Fruit Shop"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = frame

-- Create the Dragon Fruit Button
local dragonButton = Instance.new("TextButton")
dragonButton.Size = UDim2.new(1, -40, 0, 50)
dragonButton.Position = UDim2.new(0, 20, 0, 70)
dragonButton.Text = "Dragon Fruit (In Shop)"
dragonButton.TextColor3 = Color3.fromRGB(255, 255, 255)
dragonButton.TextSize = 18
dragonButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
dragonButton.Parent = frame

-- Create the Kitsune Fruit Button
local kitsuneButton = Instance.new("TextButton")
kitsuneButton.Size = UDim2.new(1, -40, 0, 50)
kitsuneButton.Position = UDim2.new(0, 20, 0, 140)
kitsuneButton.Text = "Kitsune Fruit (In Shop)"
kitsuneButton.TextColor3 = Color3.fromRGB(255, 255, 255)
kitsuneButton.TextSize = 18
kitsuneButton.BackgroundColor3 = Color3.fromRGB(255, 150, 50)
kitsuneButton.Parent = frame

-- Define the functions when buttons are clicked (for show only, no effect on game)
dragonButton.MouseButton1Click:Connect(function()
    print("You clicked Dragon Fruit! (Fake Action)")
    -- You can add any additional actions here, like showing a fake confirmation, etc.
end)

kitsuneButton.MouseButton1Click:Connect(function()
    print("You clicked Kitsune Fruit! (Fake Action)")
    -- You can add any additional actions here, like showing a fake confirmation, etc.
end)
