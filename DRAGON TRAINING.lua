local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
	Name = "🐉 Dragon Training GUI",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DragonTrainer"
})

local AutoTab = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

AutoTab:AddToggle({
	Name = "Auto Train",
	Default = false,
	Callback = function(Value)
		getgenv().autoTrain = Value
		while getgenv().autoTrain do
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.Train:FireServer()
			end)
			task.wait(0.1)
		end
	end
})

AutoTab:AddToggle({
	Name = "Auto Race",
	Default = false,
	Callback = function(Value)
		getgenv().autoRace = Value
		while getgenv().autoRace do
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.StartRace:FireServer()
			end)
			task.wait(1)
		end
	end
})

local RebirthTab = Window:MakeTab({
	Name = "Rebirth",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

RebirthTab:AddButton({
	Name = "Instant Rebirth",
	Callback = function()
		pcall(function()
			game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
		end)
	end
})

local FuseTab = Window:MakeTab({
	Name = "Fuse",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

getgenv().selectedPetID = nil

FuseTab:AddTextbox({
	Name = "Enter Pet ID",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		getgenv().selectedPetID = Value
	end
})

FuseTab:AddButton({
	Name = "Fuse Selected Pet Once",
	Callback = function()
		pcall(function()
			if getgenv().selectedPetID then
				game:GetService("ReplicatedStorage").Remotes.Fuse:InvokeServer(getgenv().selectedPetID)
			end
		end)
	end
})

FuseTab:AddToggle({
	Name = "Auto Fuse Selected Pet",
	Default = false,
	Callback = function(Value)
		getgenv().autoFuse = Value
		while getgenv().autoFuse do
			pcall(function()
				if getgenv().selectedPetID then
					game:GetService("ReplicatedStorage").Remotes.Fuse:InvokeServer(getgenv().selectedPetID)
				end
			end)
			task.wait(1.5)
		end
	end
})

OrionLib:MakeNotification({
	Name = "Dragon Training",
	Content = "GUI Loaded Successfully!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:Init()
