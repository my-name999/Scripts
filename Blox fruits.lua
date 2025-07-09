-- Make Dragon and Kitsune appear "In Stock" in fruit shop (client-side only)

local replicatedStorage = game:GetService("ReplicatedStorage")
local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local function fakeStock()
    local shopGui = playerGui:FindFirstChild("FruitShop") -- GUI name may vary
    if not shopGui then
        warn("Fruit shop UI not found. Open the shop first.")
        return
    end

    local fruits = {
        ["Dragon"] = true,
        ["Kitsune"] = true
    }

    for _, frame in ipairs(shopGui:GetDescendants()) do
        if frame:IsA("TextLabel") and fruits[frame.Text] then
            local parent = frame.Parent
            for _, element in ipairs(parent:GetChildren()) do
                if element:IsA("TextLabel") and element.Text:find("Out of Stock") then
                    element.Text = "In Stock"
                    element.TextColor3 = Color3.fromRGB(0, 255, 0)
                    element.Font = Enum.Font.SourceSansBold
                    element.TextSize = 18
                end
            end
        end
    end
end

fakeStock()
