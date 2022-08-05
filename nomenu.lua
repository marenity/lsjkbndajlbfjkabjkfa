--Variable niggers
local RStor = game:GetService("ReplicatedStorage")
local works = game:GetService("Workspace")
local userinput = game:GetService("UserInputService")
local localplayer = game.Players.LocalPlayer

--getgenv().InfiniteJumpEnabled = false

--Variable niggers
--https://github.com/violin-suzutsuki/LinoriaLib
--https://youtu.be/EPixzMICZh8?t=459
--https://developer.roblox.com/en-us/api-reference
--https://x.synapse.to/docs/
--GUI shit
--githubs
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
--local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/privslslsl/robloxastuff/main/robloxESP.lua"))()
--githubs

local Window = Library:CreateWindow({
    Title = 'Priv',
    AutoShow = true,
})

local Tabs = {
    --Combat = Window:AddTab('Combat'),
    --ESP = Window:AddTab('Visuals'),
    --Misc = Window:AddTab('Misc'),
    Exploits = Window:AddTab('Exploits'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

-- Always enabled

--ESP.FaceCamera = true

--------------------------------------------------------------------UI groupboxes
local exploitstabgroup = Tabs.Exploits:AddLeftGroupbox('Movement')
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
local ToggleMenuGroup = Tabs['UI Settings']:AddRightGroupbox('Menu Extras')
--local espmenugroup = Tabs.ESP:AddLeftGroupbox('ESP')
--------------------------------------------------------------------UI groupboxes

--------------------------------------------------------------------UI settings tab
Library:OnUnload(function()
    print('Unloaded!')
    --ESP:Toggle(false)
    Library.Unloaded = true
end)

-- I set NoUI so it does not show up in the keybinds menu
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
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)
-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 
-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('Priv')
SaveManager:SetFolder('Priv/game')
-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])
--------------------------------------------------------------------UI settings tab

--area:AddToggle('nameoftoggle', { Text = 'what it shows on the menu', Default = false, Tooltip = 'description hovering over toggle'})
--espmenugroup:AddToggle('', { Text = '', Default = false, Tooltip = ''})
--------------------------------------------------------------------Visuals tab
--[[
espmenugroup:AddToggle('espenable', { Text = 'Enable ESP', Default = false, Tooltip = 'Enables Boxes, Tracers, Names'})
Toggles.espenable:OnChanged(function()
    ESP:Toggle(false)
    if Toggles.espenable.Value == true then
        ESP:Toggle(true)
    else
        ESP:Toggle(false)
    end
end)
espmenugroup:AddToggle('espboxes', { Text = 'Box', Default = false, Tooltip = 'Puts a box around players'})
Toggles.espboxes:OnChanged(function()
    ESP.Boxes = false
    if Toggles.espboxes.Value == true then
        ESP.Boxes = true
    else
        ESP.Boxes = false
    end
end)
espmenugroup:AddToggle('espnames', { Text = 'Names', Default = false, Tooltip = 'Shows names and distance'})
Toggles.espnames:OnChanged(function()
    ESP.Names = false
    if Toggles.espnames.Value == true then
        ESP.Names = true
    else
        ESP.Names = false
    end
end)
espmenugroup:AddToggle('esptraces', { Text = 'Tracers', Default = false, Tooltip = 'Shows a tracer to players'})
Toggles.esptraces:OnChanged(function()
    ESP.Tracers = false
    if Toggles.esptraces.Value == true then
        ESP.Tracers = true
    else
        ESP.Tracers = false
    end
end)
espmenugroup:AddToggle('esphideteam', { Text = 'Hide Teammates', Default = false, Tooltip = 'Hides Teammate ESP'})
Toggles.esphideteam:OnChanged(function()
    if Toggles.esphideteam.Value == true then
        ESP.TeamMates = false
    else
        ESP.TeamMates = true
    end
end)

]]
--------------------------------------------------------------------Visuals tab



exploitstabgroup:AddLabel('THERE IS NO MENU FOR THIS GAME')


--------------------------------------------------------------------exploits tab
--[[
exploitstabgroup:AddSlider('noacspeedhack',{Text = 'No Anti-Cheat Speed Hack', Default = 16, Min = 16, Max = 350, Rounding = 0, Compact = false,})
Options.noacspeedhack:OnChanged(function() localplayer.Character.Humanoid.WalkSpeed = Options.noacspeedhack.Value end)
--exploitstabgroup:AddSlider('noacjumphack',{Text = 'No Anti-Cheat Jump Height', Default = 7.2, Min = 7.2, Max = 100, Rounding = 1, Compact = false,})
--Options.noacjumphack:OnChanged(function() localplayer.Character.Humanoid.JumpHeight = Options.noacjumphack.Value end)

exploitstabgroup:AddToggle('infjump', {Text = 'No Anti-Cheat Infinite Jump', Default = false, Tooltip = 'Jump forever?'})
Toggles.infjump:OnChanged(function()
    if Toggles.infjump.Value == true then
        getgenv().InfiniteJumpEnabled = true
        infinitejumper()
    else
        getgenv().InfiniteJumpEnabled = false
    end
end)
]]
--------------------------------------------------------------------exploits tab

--GUI shit
--[[
function infinitejumper()
    userinput.JumpRequest:connect(function()
    	if getgenv().InfiniteJumpEnabled then
    	    spawn(function()
    		    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        		wait()
    		end)
    	end
    end)
end
]]
