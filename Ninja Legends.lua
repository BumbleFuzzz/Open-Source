local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local plr = game.Players.LocalPlayer
local StarterPack = game:GetService("StarterPack")
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window =
    OrionLib:MakeWindow(
    {
        Name = GameName,
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "Ninja Legends"
    }
)
autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break
                end
            end
        end
    )
end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break
                    end
                end
            end
        end
    )
end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end
                end
                if not autosellmax then
                    break
                end
            end
        end
    )
end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyswords then
                    break
                end
            end
        end
    )
end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuybelts then
                    break
                end
            end
        end
    )
end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break
                end
            end
        end
    )
end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyskill then
                    break
                end
            end
        end
    )
end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyshurikens then
                    break
                end
            end
        end
    )
end
autocrystal = false
function buycrystal()
    spawn(
        function()
            while autocrystal == true do
                task.wait()
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(
                    "openCrystal",
                    crystal
                )
                if not autocrystal then
                    break
                end
            end
        end
    )
end

local main =
    Window:MakeTab(
    {
        Name = "Main",
        Icon = "rbxassetid://7072717697",
        PremiumOnly = false
    }
)
local buy =
    Window:MakeTab(
    {
        Name = "Auto Buy",
        Icon = "rbxassetid://7072715646",
        PremiumOnly = false
    }
)
local hatch =
    Window:MakeTab(
    {
        Name = "Auto Hatch",
        Icon = "rbxassetid://9692081121",
        PremiumOnly = false
    }
)
local sellpets =
    Window:MakeTab(
    {
        Name = "Auto Sell Pets",
        Icon = "rbxassetid://7072717318",
        PremiumOnly = false
    }
)
local petupgrades =
    Window:MakeTab(
    {
        Name = "Auto Pet Upgrade",
        Icon = "rbxassetid://7072706796",
        PremiumOnly = false
    }
)
local boss =
    Window:MakeTab(
    {
        Name = "Boss Farm",
        Icon = "rbxassetid://7072723006",
        PremiumOnly = false
    }
)
local teleports =
    Window:MakeTab(
    {
        Name = "Teleports",
        Icon = "rbxassetid://7072718266",
        PremiumOnly = false
    }
)
local misc =
    Window:MakeTab(
    {
        Name = "Misc",
        Icon = "rbxassetid://7072718840",
        PremiumOnly = false
    }
)
main:AddLabel("Auto Swing")
main:AddToggle(
    {
        Name = "Auto Swing",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)
main:AddLabel("Auto Sell")
main:AddToggle(
    {
        Name = "Auto Sell",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)
main:AddToggle(
    {
        Name = "Auto Max Sell",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)
local leveluptoggle = false
function levelup()
    spawn(
        function()
            while leveluptoggle == true do
                task.wait()
                for _, v in pairs(workspace.Hoops:GetDescendants()) do
                    if v.ClassName == "MeshPart" then
                        v.touchPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                    end
                end
                if not leveluptoggle then
                    break
                end
            end
        end
    )
end
local chitoggle = false
function chi()
    spawn(
        function()
            while chitoggle == true do
                task.wait(.033)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
                        if v.Name == "Blue Chi Crate" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(v.Position)
                            wait(.16)
                        end
                    end
                end
                if not chitoggle then
                    break
                end
            end
        end
    )
end
main:AddLabel("Other Main Stuff")
main:AddButton(
    {
        Name = "Unlock all elements",
        Callback = function()
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Frost")
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Inferno")
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Lightning")
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Electral Chaos")
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadow Charge")
        end
    }
)
main:AddToggle(
    {
        Name = "Auto Level Up Pets",
        Default = false,
        Callback = function(x)
            leveluptoggle = x
            if leveluptoggle then
                levelup()
            end
        end
    }
)
main:AddToggle(
    {
        Name = "Auto Collect Chi",
        Default = false,
        Callback = function(x)
            chitoggle = x
            if chitoggle then
                chi()
            end
        end
    }
)
main:AddButton(
    {
        Name = "Collect All Chests",
        Callback = function()
            game:GetService("Workspace").mythicalChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").goldenChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").enchantedChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").magmaChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").legendsChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").eternalChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").saharaChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").thunderChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").ancientChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace")["Daily Chest"].circleInner.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace")["wonderChest"].circleInner.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(3.5)
            game:GetService("Workspace").wonderChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame =
                game.Workspace.Part.CFrame
            game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
            game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame =
                game.Workspace.Part.CFrame
            game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Workspace.Part.CFrame
        end
    }
)
main:AddButton(
    {
        Name = "Collect Light Chest",
        Callback = function()
            game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(5)
            game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        end
    }
)
main:AddButton(
    {
        Name = "Collect Evil Chest",
        Callback = function()
            game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(5)
            game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        end
    }
)
main:AddButton(
    {
        Name = "Unlock All Islands",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    }
)
buy:AddToggle(
    {
        Name = "Auto Buy Swords",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)
buy:AddToggle(
    {
        Name = "Auto Buy Belts",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)
buy:AddToggle(
    {
        Name = "Auto Buy Ranks",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)
buy:AddToggle(
    {
        Name = "Auto Buy Skills",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)
buy:AddToggle(
    {
        Name = "Auto Buy Shurikens",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    }
)
crystals = {}
for _, v in pairs(game:GetService("Workspace").mapCrystalsFolder:GetChildren()) do
    table.insert(crystals, v.Name)
end
hatch:AddDropdown(
    {
        Name = "Select Crystal",
        Default = "",
        Options = crystals,
        Callback = function(selected)
            crystal = selected
        end
    }
)
hatch:AddToggle(
    {
        Name = "Auto Open Crystal",
        Default = false,
        Callback = function(x)
            autocrystal = x
            if autocrystal then
                buycrystal()
            end
        end
    }
)
local autosellbasic = false
function sellbasic()
    spawn(
        function()
            while autosellbasic == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Basic:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellbasic then
                    break
                end
            end
        end
    )
end
local autoselladvanced = false
function selladvanced()
    spawn(
        function()
            while autoselladvanced == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Advanced:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autoselladvanced then
                    break
                end
            end
        end
    )
end
local autosellrare = false
function sellrare()
    spawn(
        function()
            while autosellrare == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Rare:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellrare then
                    break
                end
            end
        end
    )
end
local autosellepic = false
function sellepic()
    spawn(
        function()
            while autosellepic == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Epic:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellepic then
                    break
                end
            end
        end
    )
end
local autosellunique = false
function sellunique()
    spawn(
        function()
            while autosellunique == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellunique then
                    break
                end
            end
        end
    )
end
local autosellomega = false
function sellomega()
    spawn(
        function()
            while autosellomega == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Omega:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellomega then
                    break
                end
            end
        end
    )
end
local autosellelite = false
function sellelite()
    spawn(
        function()
            while autosellelite == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Elite:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellelite then
                    break
                end
            end
        end
    )
end
local autosellinfinity = false
function sellinfinity()
    spawn(
        function()
            while autosellinfinity == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder.Infinity:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellinfinity then
                    break
                end
            end
        end
    )
end

local autosellrising = false
function sellrising()
    spawn(
        function()
            while autosellrising == true do
                task.wait(1)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game.Players.LocalPlayer.petsFolder["Rising Hero"]:GetChildren()) do
                        game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
                    end
                end
                if not autosellrising then
                    break
                end
            end
        end
    )
end



sellpets:AddToggle(
    {
        Name = "Auto Sell Basic",
        Default = false,
        Callback = function(state)
            autosellbasic = state
            if autosellbasic then
                sellbasic()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Advanced",
        Default = false,
        Callback = function(state)
            autoselladvanced = state
            if autoselladvanced then
                selladvanced()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Rare",
        Default = false,
        Callback = function(state)
            autosellrare = state
            if autosellrare then
                sellrare()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Epic",
        Default = false,
        Callback = function(state)
            autosellepic = state
            if autosellepic then
                sellepic()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Unique",
        Default = false,
        Callback = function(state)
            autosellunique = state
            if autosellunique then
                sellunique()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Omega",
        Default = false,
        Callback = function(state)
            autosellomega = state
            if autosellomega then
                sellomega()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Elite",
        Default = false,
        Callback = function(state)
            autosellelite = state
            if autosellelite then
                sellelite()
            end
        end
    }
)
sellpets:AddToggle(
    {
        Name = "Auto Sell Infinity",
        Default = false,
        Callback = function(state)
            autosellinfinity = state
            if autosellinfinity then
                sellinfinity()
            end
        end
    }
)

sellpets:AddToggle(
    {
        Name = "Auto Sell Rising Hero",
        Default = false,
        Callback = function(state)
            autosellrising = state
            if autosellrising then
                sellrising()
            end
        end
    }
)



autoevolve = false
function evolve()
    spawn(
        function()
            while autoevolve == true do
                task.wait(3)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                        for _, x in pairs(v:GetChildren()) do
                            local oh1 = "evolvePet"
                            local oh2 = x.Name
                            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(oh1, oh2)
                        end
                    end
                end
                if not autoevolve then
                    break
                end
            end
        end
    )
end
autoeternalise = false
function eternalise()
    spawn(
        function()
            while autoeternalise == true do
                task.wait(3)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                        for _, x in pairs(v:GetChildren()) do
                            local oh1 = "eternalizePet"
                            local oh2 = x.Name
                            game:GetService("ReplicatedStorage").rEvents.petEternalizeEvent:FireServer(
                                oh1,
                                oh2
                            )
                        end
                    end
                end
                if not autoeternalise then
                    break
                end
            end
        end
    )
end
autoimmortalize = false
function immortalize()
    spawn(
        function()
            while autoimmortalize == true do
                task.wait(3)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                        for _, x in pairs(v:GetChildren()) do
                            local oh1 = "immortalizePet"
                            local oh2 = x.Name
                            game:GetService("ReplicatedStorage").rEvents.petImmortalizeEvent:FireServer(
                                oh1,
                                oh2
                            )
                        end
                    end
                end
                if not autoimmortalize then
                    break
                end
            end
        end
    )
end
autolegend = false
function legend()
    spawn(
        function()
            while autolegend == true do
                task.wait(3)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                        for _, x in pairs(v:GetChildren()) do
                            local oh1 = "legendizePet"
                            local oh2 = x.Name
                            game:GetService("ReplicatedStorage").rEvents.petLegendEvent:FireServer(oh1, oh2)
                        end
                    end
                end
                if not autolegend then
                    break
                end
            end
        end
    )
end
autoelementalize = false
function elementalize()
    spawn(
        function()
            while autoelementalize == true do
                task.wait(3)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
                        for _, x in pairs(v:GetChildren()) do
                            local oh1 = "elementalizePet"
                            local oh2 = x.Name
                            game:GetService("ReplicatedStorage").rEvents.petLegendEvent:FireServer(oh1, oh2)
                        end
                    end
                end
                if not autoelementalize then
                    break
                end
            end
        end
    )
end
petupgrades:AddToggle(
    {
        Name = "Auto Evolve",
        Default = false,
        Callback = function(state)
            autoevolve = state
            if autoevolve then
                evolve()
            end
        end
    }
)
petupgrades:AddToggle(
    {
        Name = "Auto Eternalise",
        Default = false,
        Callback = function(state)
            autoeternalise = state
            if autoeternalise then
                eternalise()
            end
        end
    }
)
petupgrades:AddToggle(
    {
        Name = "Auto Immortalize",
        Default = false,
        Callback = function(state)
            autoimmortalize = state
            if autoimmortalize then
                immortalize()
            end
        end
    }
)
petupgrades:AddToggle(
    {
        Name = "Auto Legend",
        Default = false,
        Callback = function(state)
            autolegend = state
            if autolegend then
                legend()
            end
        end
    }
)
petupgrades:AddToggle(
    {
        Name = "Auto Elementalize",
        Default = false,
        Callback = function(state)
            autoelementalize = state
            if autoelementalize then
                elementalize()
            end
        end
    }
)

local bosses = {}
for i, v in next, game:GetService("Workspace").bossFolder:GetChildren() do
    table.insert(bosses, v.Name)
end

boss:AddDropdown(
    {
        Name = "Choose Boss",
        Default = SelectedBoss,
        Options = bosses,
        Callback = function(selected)
            SelectedBoss = selected
        end
    }
)

autoboss = false
function bosshit()
    spawn(
        function()
            while autoboss == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if
                        game:GetService("Workspace").bossFolder:WaitForChild(SelectedBoss):WaitForChild(
                            "HumanoidRootPart"
                        )
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Workspace.bossFolder[SelectedBoss].HumanoidRootPart.CFrame
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
                        else
                            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") and v:FindFirstChild("attackKatanaScript") then
                                    v.attackTime.Value = .2
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                    end
                end
                if not autoboss then
                    break
                end
            end
        end
    )
end

boss:AddToggle(
    {
        Name = "Farm Boss",
        Default = false,
        Callback = function(state)
            autoboss = state
            if autoboss then
                bosshit()
            end
        end
    }
)
local Islands = {}
for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
    if v then
        table.insert(Islands, v.Name)
    end
end
teleports:AddLabel("World Teleports")
teleports:AddDropdown(
    {
        Name = "Select World",
        Default = "",
        Options = Islands,
        Callback = function(selected)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Workspace.islandUnlockParts[selected].islandSignPart.CFrame
        end
    }
)
teleports:AddLabel("Light Training Areas")
teleports:AddButton(
    {
        Name = "Mystical Waters",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(347.74881, 8824.53809, 114.271019)
        end
    }
)
teleports:AddButton(
    {
        Name = "Sword of Legends",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1834.15967, 38.704483, -141.375641)
        end
    }
)
teleports:AddButton(
    {
        Name = "Elemental Tornado",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(299.758484, 30383.0957, -90.1542206)
        end
    }
)
teleports:AddLabel("Evil Training Areas")
teleports:AddButton(
    {
        Name = "Lava Pit",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-116.631485, 12952.5381, 271.14624)
        end
    }
)
teleports:AddButton(
    {
        Name = "Tornado",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(325.641174, 16872.0938, -9.9906435)
        end
    }
)
teleports:AddButton(
    {
        Name = "Swords of Ancients",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(648.365662, 38.704483, 2409.72266)
        end
    }
)
misc:AddToggle(
    {
        Name = "Fast Shuriken",
        Default = false,
        Callback = function(x)
            getgenv().fastshuriken = x
            while wait(.001) and fastshuriken do
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local plr = game.Players.LocalPlayer
                    local Mouse = plr:GetMouse()
                    local velocity = 1e3
                    for _, p in pairs(game.Workspace.shurikensFolder:GetChildren()) do
                        if p.Name == "Handle" then
                            if p:FindFirstChild("BodyVelocity") then
                                local bv = p:FindFirstChildOfClass("BodyVelocity")
                                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                bv.Velocity = Mouse.Hit.lookVector * velocity
                            end
                        end
                    end
                else
                    fastshuriken = false
                end
            end
        end
    }
)
misc:AddToggle(
    {
        Name = "Slow Shuriken",
        Default = false,
        Callback = function(x)
            getgenv().slowshuriken = x
            while wait(.001) and slowshuriken do
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local plr = game.Players.LocalPlayer
                    local Mouse = plr:GetMouse()
                    local velocity = 35
                    for _, p in pairs(game.Workspace.shurikensFolder:GetChildren()) do
                        if p.Name == "Handle" then
                            if p:FindFirstChild("BodyVelocity") then
                                local bv = p:FindFirstChildOfClass("BodyVelocity")
                                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                bv.Velocity = Mouse.Hit.lookVector * velocity
                            end
                        end
                    end
                else
                    slowshuriken = false
                end
            end
        end
    }
)
misc:AddToggle(
    {
        Name = "Invisible",
        Default = false,
        Callback = function()
            getgenv().invisible = true
            while invisible do
                task.wait(.001)
                if state then
                    task.wait(.001)
                    local A_1 = "goInvisible"
                    local Event = game.Players.LocalPlayer.ninjaEvent
                    Event:FireServer(A_1)
                else
                    getgenv().invisible = false
                end
            end
        end
    }
)
misc:AddButton(
    {
        Name = "Get Max Jumps",
        Callback = function()
            while wait(.0001) do
                game.Players.LocalPlayer.multiJumpCount.Value = "50"
            end
        end
    }
)

misc:AddButton(
    {
        Name = "Unlock Gamepasses",
        Callback = function() 
            for i,v in next, game:GetService("ReplicatedStorage").gamepassIds:GetChildren() do
                    v.Parent = game:GetService("Players").LocalPlayer.ownedGamepasses
                end
        end
    }
)



local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
