--[[ Dragon Training GUI Script by ChatGPT for Sam Altman ]]--

-- Load UI Library (Simple)
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/Lf7FvY8K"))()
local Window = Library:CreateWindow("🐉 DRAGON TRAINING")

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Player = Players.LocalPlayer

-- Infinite Wins
Window:Toggle("🏆 Inf Wins", {default = false}, function(state)
    getgenv().infWins = state
    while getgenv().infWins do
        pcall(function()
            -- Replace 'WinEvent' with actual remote event
            ReplicatedStorage:WaitForChild("WinEvent"):FireServer(9999999)
        end)
        wait(0.5)
    end
end)

-- Auto Train
Window:Toggle("💪 Auto Train", {default = false}, function(state)
    getgenv().autoTrain = state
    while getgenv().autoTrain do
        pcall(function()
            -- Replace 'TrainRemote' with actual training remote
            ReplicatedStorage:WaitForChild("TrainRemote"):FireServer()
        end)
        wait(0.2)
    end
end)

-- Auto Rebirth
Window:Toggle("🔁 Auto Rebirth", {default = false}, function(state)
    getgenv().autoRebirth = state
    while getgenv().autoRebirth do
        pcall(function()
            -- Replace 'RebirthRemote' with actual rebirth remote
            ReplicatedStorage:WaitForChild("RebirthRemote"):FireServer()
        end)
        wait(1)
    end
end)

-- Credits
Window:Section("Youtube: Tora IsMe (UI Style Inspired)")
