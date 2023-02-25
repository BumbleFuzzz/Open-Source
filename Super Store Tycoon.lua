if game.CoreGui:FindFirstChild("ui") then
    game.CoreGui["ui"]:Destroy()
end

local plr = game.Players.LocalPlayer
local char = plr.Character
local hrp = char.HumanoidRootPart

variables = {
    autoCollect = false,
    autoWake = false,
    autoBuy = false
}

function getTycoon()
    for _, v in pairs(game:GetService("Workspace").GroceryStore.Tycoons:GetDescendants()) do
        if v.Name == "Owner" and v.Value == game.Players.LocalPlayer then
            return v.Parent
        end
    end
end

function Collect()
    for _, v in next, getTycoon().CollectSector:GetDescendants() do
        if v:FindFirstChild("TouchInterest") then
            firetouchinterest(hrp, v, 0)
            firetouchinterest(hrp, v, 1)
        end
    end
end

function wakeUp()
    for _, v in next, getTycoon().PurchasedObjects:GetChildren() do
        if v.Name:find("Cashier") then
            local oldpos = hrp.CFrame
            char:PivotTo(v.Cashier.HumanoidRootPart.CFrame)
            fireproximityprompt(v.Cashier.HumanoidRootPart.WakeUp)
            task.wait(0.1)
            char:PivotTo(oldpos)
        end
    end
end

function buyButtons()
    local cash = string.gsub(plr.PlayerGui.MainUI.Buttons.CashUI.Display.Text, ",", "")
    for _, v in next, getTycoon().Buttons:GetDescendants() do
        if v:IsA("IntValue") and v.Value <= tonumber(cash) then
            firetouchinterest(hrp, v.Parent.Head, 0)
            firetouchinterest(hrp, v.Parent.Head, 1)
        end
    end
end

local lib = loadstring(game:HttpGet "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win =
    lib:Window(
    game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Color3.fromRGB(188, 79, 79),
    Enum.KeyCode.RightControl
)

local tab = win:Tab("Main")

tab:Toggle(
    "Auto Collect",
    false,
    function(t)
        variables.autoCollect = t
        while variables.autoCollect do
            task.wait()
            Collect()
        end
    end
)
tab:Toggle(
    "Auto Buy Buttons",
    false,
    function(t)
        variables.autoBuy = t
        while variables.autoBuy do
            task.wait()
            buyButtons()
        end
    end
)

tab:Toggle(
    "Auto Wake Up",
    false,
    function(t)
        variables.autoWake = t
        while variables.autoWake do
            task.wait()
            wakeUp()
        end
    end
)
