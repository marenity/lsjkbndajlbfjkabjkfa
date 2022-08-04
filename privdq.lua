--Variable niggers
local RStor = game:GetService("ReplicatedStorage")
local works = game:GetService("Workspace")
local userinput = game:GetService("UserInputService")
local localplayer = game.Players.LocalPlayer
local maxMag = 0
getgenv().kAll = false
getgenv().kAll2 = false
--Variable niggers
--https://github.com/violin-suzutsuki/LinoriaLib
--https://developer.roblox.com/en-us/api-reference
--https://x.synapse.to/docs/
--GUI shit
--githubs

local function createWall(cf, sz)
      local part = Instance.new("Part")
      game:GetService("CollectionService"):AddTag(part, "RayWhitelist")
      part.Size = sz
      part.CFrame = cf
      part.Name = "Part"
      part.Anchored = true
      part.Transparency = 0
      part.CanCollide = true
      part.Parent = workspace
      return part
end

function removearenawalls()
    createWall(CFrame.new(700.780151, 1.08747101, -505.499756, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(346, 1, 351))
    createWall(CFrame.new(531.63446, 23.4773884, -555.873901, 0.965907097, -0, -0.25888893, 0, 1, -0, 0.25888893, 0, 0.965907097),Vector3.new(3, 61, 56))
    createWall(CFrame.new(526.166138, 25.7228622, -509.606781, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 61, 56))
    createWall(CFrame.new(548.037903, 22.4773922, -433.967896, 0.866051912, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, 0.866051912),Vector3.new(3, 61, 56))
    createWall(CFrame.new(570.982849, 21.4181786, -401.563354, 0.707068086, 0, 0.707145572, 0, 1, 0, -0.707145572, 0, 0.707068086),Vector3.new(3, 61, 56))
    createWall(CFrame.new(615.836792, 22.8858471, -368.295319, 0.500045776, 0, 0.865998983, 0, 1, 0, -0.865998983, 0, 0.500045776),Vector3.new(3, 61, 56))
    createWall(CFrame.new(655.470581, 23.4773884, -351.075867, 0.25875926, 0, 0.965941846, 0, 1, 0, -0.965941846, 0, 0.25875926),Vector3.new(3, 61, 56))
    createWall(CFrame.new(550.30542, 23.7891712, -598.976196, 0.866051912, -0, -0.499954134, 0, 1, -0, 0.499954134, 0, 0.866051912),Vector3.new(3, 61, 56))
    createWall(CFrame.new(579.393799, 23.692522, -636.764038, 0.707068086, -0, -0.707145572, 0, 1, -0, 0.707145572, 0, 0.707068086),Vector3.new(3, 61, 56))
    createWall(CFrame.new(596.496643, 23.5105915, -653.972412, 0.500045776, -0, -0.865998983, 0, 1, -0, 0.865998983, 0, 0.500045776),Vector3.new(3, 61, 56))
    createWall(CFrame.new(641.417297, 23.6924877, -676.86145, 0.25875926, -0, -0.965941846, 0, 1, -0, 0.965941846, 0, 0.25875926),Vector3.new(3, 61, 56))
    createWall(CFrame.new(686.062866, 23.1201954, -686.697998, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0, -1.1920929e-07),Vector3.new(12, 61, 56))
    createWall(CFrame.new(727.819275, 23.7891636, -681.306458, -0.25875926, 0, -0.965941846, 0, 1, 0, 0.965941846, 0, -0.25875926),Vector3.new(3, 61, 56))
    createWall(CFrame.new(778.287292, 23.692482, -663.834351, -0.500045776, 0, -0.865998983, 0, 1, 0, 0.865998983, 0, -0.500045776),Vector3.new(3, 61, 56))
    createWall(CFrame.new(813.103943, 23.6924744, -637.937378, -0.707068563, 0, -0.707145572, 0, 1, 0, 0.707145572, 0, -0.707068563),Vector3.new(3, 61, 56))
    createWall(CFrame.new(841.042297, 23.6924744, -603.883423, -0.86605227, 0, -0.499954134, 0, 1, 0, 0.499954134, 0, -0.86605227),Vector3.new(3, 61, 56))
    createWall(CFrame.new(857.193359, 23.6924667, -568.49408, -0.965907454, 0, -0.25888893, 0, 1, 0, 0.25888893, 0, -0.965907454),Vector3.new(3, 61, 56))
    createWall(CFrame.new(865.673096, 23.6924496, -529.623108, -1, 0, 0, 0, 1, 0, 0, 0, -1),Vector3.new(3, 61, 56))
    createWall(CFrame.new(863.366272, 24.7891579, -485.24762, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),Vector3.new(3, 61, 56))
    createWall(CFrame.new(848.869324, 24.8770714, -438.6922, -0.86605227, 0, 0.499954134, 0, 1, 0, -0.499954134, 0, -0.86605227),Vector3.new(3, 61, 56))
    createWall(CFrame.new(827.089111, 22.9181671, -405.456207, -0.707068563, 0, 0.707145572, 0, 1, 0, -0.707145572, 0, -0.707068563),Vector3.new(3, 61, 56))
    createWall(CFrame.new(791.403137, 23.6924515, -375.83905, -0.500045776, 0, 0.865998983, 0, 1, 0, -0.865998983, 0, -0.500045776),Vector3.new(3, 61, 56))
    createWall(CFrame.new(751.885193, 22.8770199, -354.606323, -0.25875926, 0, 0.965941846, 0, 1, 0, -0.965941846, 0, -0.25875926),Vector3.new(3, 61, 56))
    createWall(CFrame.new(705.660889, 24.7889099, -347.466583, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07),Vector3.new(3, 61, 56))
    createWall(CFrame.new(532.647339, 25.1737785, -472.444366, 0.965907097, 0, 0.25888893, 0, 1, 0, -0.25888893, 0, 0.965907097),Vector3.new(3, 61, 56))
    
    for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if string.match(v.Name, "Arena") then
           v:Remove()
        end
    
end



end

function killaura()
    for i,v in pairs (game:GetService("Workspace"):GetDescendants()) do
        function kLoop()
            local renders
            renders = game:GetService("RunService").RenderStepped:Connect(function()
                if v.Name == "HumanoidRootPart" and v.Parent.Name ~= game.Players.LocalPlayer.Name and getgenv().kAll then
                    local mag  = (v.Position-game.Players.LocalPlayer.Character.Head.Position).Magnitude
                    if mag < maxMag then
                        v.Parent.Humanoid.Health = 0
                    end
                else 
                    renders:Disconnect()
                end
            end)
        end
        coroutine.wrap(kLoop)()
    end
    game:GetService("Workspace").DescendantAdded:Connect(function(v)
        function kLoop()
            local renders
            renders = game:GetService("RunService").RenderStepped:Connect(function()
                if v.Name == "HumanoidRootPart" and v.Parent.Name ~= game.Players.LocalPlayer.Name and getgenv().kAll then
                    local mag  = (v.Position-game.Players.LocalPlayer.Character.Head.Position).Magnitude
                    if mag < maxMag then
                        v.Parent.Humanoid.Health = 0
                    end
                else
                    renders:Disconnect()
                end
            end)
        end
        coroutine.wrap(kLoop)()
    end)
end

function kAllFunc()
    spawn(function()
        while getgenv().kAll2 do
            for i,v in pairs (game:GetService("Workspace"):GetDescendants()) do
                if v.Name == "Humanoid" and v.Parent.Name ~= game.Players.LocalPlayer.Name then
                    v.Health = 0
                end
            end
            wait()
        end
    end)
end

function cDailyFunc()
    spawn(function()
        local cframeME = game.Players.LocalPlayer.Character.HumanoidRootPart
        local hideSpot = game:GetService("Workspace").explorerTeleModel.insideCaveModel.touchPart
        cframeME.CFrame = game:GetService("Workspace").dailyRewardTouchPart.CFrame
        wait(1)
        cframeME.CFrame = hideSpot.CFrame
        wait()
    end)
end

function hUIFunc()
    spawn(function()
        game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.playerStatus.Enabled = false
        game:GetService("Workspace")[game.Players.LocalPlayer.Name].playerNameplate.Enabled = false
        wait()
    end)
end

function fpsBoost()
    spawn(function()
        for i,v in pairs(game:GetService("Workspace")[game.Players.LocalPlayer.Name]:GetChildren()) do
            if v.ClassName == "Accessory" then
                v:Remove()
            end
        end
    end)
end

function fpsBoost2()
    spawn(function()
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.ClassName == "Model" and v.Name ~= game.Players.LocalPlayer.Name then
                v:Remove()
            end
        end
    end)
end

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
--githubs

local Window = Library:CreateWindow({
    Title = 'Priv',
    AutoShow = true,
})

local Tabs = {
    Combat = Window:AddTab('Combat'),
    Exploits = Window:AddTab('Exploits'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}


--------------------------------------------------------------------UI groupboxes
local exploitstabgroup = Tabs.Exploits:AddLeftGroupbox('Movement')
local exploitstabgroup3 = Tabs.Exploits:AddLeftGroupbox('FPS')
local exploitstabgroup2 = Tabs.Exploits:AddRightGroupbox('Other')
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
local ToggleMenuGroup = Tabs['UI Settings']:AddRightGroupbox('Menu Extras')
local combattabgroup = Tabs.Combat:AddLeftGroupbox('Dungeon')
local combattabgroup2 = Tabs.Combat:AddRightGroupbox('Wave Defence')
--------------------------------------------------------------------UI groupboxes

--------------------------------------------------------------------UI settings tab
Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
ToggleMenuGroup:AddToggle('keybindtoggle', { Text = 'Show Keybinds', Default = false, Tooltip = 'This shows keybinds on the side of the screen'})
Toggles.keybindtoggle:OnChanged(function() 
    Library.KeybindFrame.Visible = false 
    if Toggles.keybindtoggle.Value == true then
        Library.KeybindFrame.Visible = true 
    else
        Library.KeybindFrame.Visible = false
    end
end)
ToggleMenuGroup:AddToggle('watermarktoggle', { Text = 'Show Watermark', Default = true, Tooltip = 'This shows watermark at the top of the screen'})
Toggles.watermarktoggle:OnChanged(function() 
    Library:SetWatermarkVisibility(true) 
    if Toggles.watermarktoggle.Value == true then
        Library:SetWatermarkVisibility(true) 
    else
        Library:SetWatermarkVisibility(false)
    end
end)
ToggleMenuGroup:AddInput('watermarkcustom', { Default = 'Priv', Numeric = false, Text = 'Custom Watermark', Tooltip = 'Write custom watermarks', Placeholder = '',})
Options.watermarkcustom:OnChanged(function()
    Library:SetWatermark(Options.watermarkcustom.Value)
end)
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('Priv')
SaveManager:SetFolder('Priv/game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])
--------------------------------------------------------------------UI settings tab
--[[
espmenugroup:AddToggle('espenable', { Text = 'Enable ESP', Default = false, Tooltip = 'Enables Boxes, Tracers, Names'})
Toggles.espenable:OnChanged(function()
    getgenv().espToggle = false
    if Toggles.espenable.Value == true then
        getgenv().espToggle = true
    else
        getgenv().espToggle = false
    end
end)
]]

--------------------------------------------------------------------combat tab
combattabgroup:AddToggle('katoggle',{Text = 'Enable Kill All', Default = false, Tooltip = 'Kills all mobs, Cant kill bosses or mini bosses'})
:AddKeyPicker('KeyPicker', {Default = '', SyncToggleState = true, Mode = 'Toggle', Text = 'Kill All', NoUI = false,})
combattabgroup:AddSlider('karangeslide',{Text = 'Range', Default = 0, Min = 0, Max = 50, Rounding = 0, Compact = false,})
Toggles.katoggle:OnChanged(function()
    Options.karangeslide:OnChanged(function()
        if Toggles.katoggle.Value == true then
            maxMag = Options.karangeslide.Value
            getgenv().kAll = true
            killaura()
        elseif Toggles.katoggle.Value == false then
            getgenv().kAll = false
        end
    end)
end)

combattabgroup2:AddToggle('kalltoggle',{Text = 'Enable Kill All', Default = false, Tooltip = 'Made for Wave defence, Doesnt work on bosses'})
:AddKeyPicker('KeyPicker2', {Default = '', SyncToggleState = true, Mode = 'Toggle', Text = 'Kill All Wave Defence', NoUI = false,})
Toggles.kalltoggle:OnChanged(function()
    if Toggles.kalltoggle.Value == true then
        getgenv().kAll2 = true
        kAllFunc()
    else
        getgenv().kAll2 = false
    end
end)


--------------------------------------------------------------------combat tab

--------------------------------------------------------------------exploits tab
exploitstabgroup:AddToggle('speedenable',{Text = 'Enable Speed Hack', Default = false,})
:AddKeyPicker('KeyPicker', {Default = '', SyncToggleState = true, Mode = 'Toggle', Text = 'Speed Hack', NoUI = false,})
exploitstabgroup:AddSlider('noacspeedhack',{Text = 'Speed Hack Value', Default = 16, Min = 16, Max = 32, Rounding = 0, Compact = false,})
Toggles.speedenable:OnChanged(function()
    Options.noacspeedhack:OnChanged(function()
        if Toggles.speedenable.Value then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.noacspeedhack.Value
        elseif Toggles.speedenable.Value == false then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end)
end)

exploitstabgroup3
    :AddButton('Remove Armor', function() fpsBoost() end):AddTooltip('This removes your armor and weapon from rendering')
    :AddButton('Remove Models', function() fpsBoost2() end):AddTooltip('Removes map models also walk thru walls, have to leave game to fix')

exploitstabgroup3
    :AddButton('Remove Wave Defence Walls', function() removearenawalls() end):AddTooltip('Only works in Wave Defence')

exploitstabgroup2:AddToggle('hideuitoggle',{Text = 'Hide Your Info', Default = false, Tooltip = 'Hides everything top left'})
Toggles.hideuitoggle:OnChanged(function()
    if Toggles.hideuitoggle.Value == true then
        hUIFunc()
    end
    if Toggles.hideuitoggle.Value == false then
        game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.playerStatus.Enabled = true
        game:GetService("Workspace")[game.Players.LocalPlayer.Name].playerNameplate.Enabled = true
    end
end)

exploitstabgroup2:AddButton('Get Daily Rewards', function() cDailyFunc() end):AddTooltip('TP you to daily then away to a cave')

--------------------------------------------------------------------exploits tab

--GUI shit
