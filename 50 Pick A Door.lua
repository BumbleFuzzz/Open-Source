if game.CoreGui:FindFirstChild("ui") then
    game.CoreGui["ui"]:Destroy()
end

local autoWin = false
local autoDoors = false
local plrHead = game.Players.LocalPlayer.Character.Head

local function finishGame()
    spawn(
        function()
            while autoWin == true do
                task.wait()
                firetouchinterest(plrHead, game:GetService("Workspace").WinnersEgg.Handle, 0)
                firetouchinterest(plrHead, game:GetService("Workspace").WinnersEgg.Handle, 1)
                if not autoWin then
                    break
                end
            end
        end
    )
end

local function openDoors()
    spawn(
        function()
            while autoDoors == true do
                task.wait()
                for i, v in pairs(game:GetService("Workspace").Doors:GetDescendants()) do
                    if v:FindFirstChild("???") then
                        game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
                        task.wait(0.1)
                    end
                end
                if not autoDoors then
                    break
                end
            end
        end
    )
end

local lib = loadstring(game:HttpGet "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win =
    lib:Window(
    "OpheliaHub | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Color3.fromRGB(44, 120, 224),
    Enum.KeyCode.RightControl
)

local tab = win:Tab("Main")
tab:Toggle(
    "Win",
    false,
    function(t)
        autoWin = t
        if autoWin then
            finishGame()
        end
    end
)

tab:Toggle(
    "Unlock Doors",
    false,
    function(t)
        autoDoors = t
        if autoDoors then
            openDoors()
        end
    end
)
tab:Label("Credits to Sunken for helping me with auto doors")
