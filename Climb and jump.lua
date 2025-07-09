-- UNIVERSAL AUTO WIN SCRIPT with TOGGLE GUI
-- By ChatGPT

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

-- GUI Setup
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "AutoFarmWinGUI"

local button = Instance.new("TextButton", gui)
button.Size = UDim2.new(0, 140, 0, 50)
button.Position = UDim2.new(0, 20, 0, 20)
button.Text = "AutoFarm: OFF"
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 20

-- Toggle Logic
local farming = false

button.MouseButton1Click:Connect(function()
    farming = not farming
    button.Text = farming and "AutoFarm: ON" or "AutoFarm: OFF"
end)

-- AutoFarm Logic
RunService.RenderStepped:Connect(function()
    if farming and hrp then
        -- Search for anything named "Win" in workspace (case-insensitive)
        for _, part in ipairs(workspace:GetDescendants()) do
            if part:IsA("BasePart") and string.lower(part.Name):find("win") then
                -- Teleport player near the win part
                hrp.CFrame = part.CFrame + Vector3.new(0, 5, 0)
                break
            end
        end
    end
end)
