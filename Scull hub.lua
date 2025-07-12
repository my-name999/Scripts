getgenv().BloxFruits = {

    ["Team"] = "Marines", -- Pirates/Marines

    ["TweenSpeed"] = 350, -- Studs per second 380 no flag but kick

    ["Fruit"] = {

        ["FruitNotifier"] = false, -- Fruit notifier

        ["AutoRandom"] = true, -- Auto random/store fruit

        ["FruitSniper"] = {

            ["Enabled"] = false, -- Auto buy fruit in normal shop

            ["TargetFruits"] = {"Yeti-Yeti", "Dragon-Dragon", "Dough-Dough"},

        },

    },

    ["Farm"] = {

        ["Enabled"] = true, -- Farm chest & fruit

        ["FastMethod"] = false, -- Faster but more risky

        ["AutoHop"] = true, -- Auto hop after collect all

        ["ItemHop"] = true, -- God's Chalice/Fist of Darkness

    },

    ["Webhook"] = {

        ["Enabled"] = false,

        ["URL"] = "Your Webhook Url",

        ["UserId"] = "Id Discord",

    },

    ["BlackScreen"] = false, -- Black screen

    ["FpsBoost"] = false, -- Boost FPS

    ["AntiIdle"] = true, -- Anti AFK

}

loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
