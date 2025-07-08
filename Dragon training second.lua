--[[ Dragon Training GUI Script by ChatGPT for Sam Altman ]]--

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "🐉 Dragon Training GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "DragonTrainer"})

-- Auto Farm Tab
local AutoTab = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

AutoTab:AddToggle({
	Name = "Auto Fast Train",
	Default = false,
	Callback = function(Value)
		getgenv().autoTrain = Value
		while getgenv().autoTrain do
			game:GetService("ReplicatedStorage").Remotes.Train:FireServer()
			task.wait(0.2)
		end
	end
})

AutoTab:AddToggle({
	Name = "Auto Fast Race",
	Default = false,
	Callback = function(Value)
		getgenv().autoRace = Value
		while getgenv().autoRace do
			game:GetService("ReplicatedStorage").Remotes.StartRace:FireServer()
			task.wait(1)
		end
	end
})

-- Egg Tab
local EggTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

EggTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic Egg",
	Options = {"Basic Egg", "Fire Egg", "Dragon Egg"},
	Callback = function(Value)
		getgenv().selectedEgg = Value
	end
})

EggTab:AddToggle({
	Name = "Auto Open Egg",
	Default = false,
	Callback = function(Value)
		getgenv().autoOpen = Value
		while getgenv().autoOpen do
			game:GetService("ReplicatedStorage").Remotes.HatchEgg:InvokeServer(getgenv().selectedEgg, 1)
			task.wait(0.5)
		end
	end
})

EggTab:AddButton({
	Name = "Free Rainbow Fuse",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.FuseRainbow:InvokeServer()
	end
})

EggTab:AddButton({
	Name = "Free Gold Fuse",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.FuseGold:InvokeServer()
	end
})

EggTab:AddToggle({
	Name = "Disable Egg Animation",
	Default = false,
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Settings.SkipAnimation.Value = Value
	end
})

OrionLib:Init()
