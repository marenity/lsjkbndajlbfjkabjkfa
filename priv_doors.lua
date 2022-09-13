--Variable niggers
local RStor = game:GetService("ReplicatedStorage")
local works = game:GetService("Workspace")
local userinput = game:GetService("UserInputService")
local localplayer = game.Players.LocalPlayer

--Variable niggers
--https://github.com/violin-suzutsuki/LinoriaLib
--https://developer.roblox.com/en-us/api-reference
--https://x.synapse.to/docs/
--GUI shit
--githubs

local rs = game:GetService("RunService")
local plr = game:GetService("Players"):GetPlayers()

getgenv().keyESP = false
getgenv().keyESPClr = Color3.fromRGB(255,255,255)

getgenv().leverESP = false
getgenv().leverESPClr = Color3.fromRGB(255,255,255)

getgenv().bookESP = false
getgenv().bookESPClr = Color3.fromRGB(255,255,255)

getgenv().lighterESP = false
getgenv().lighterESPClr = Color3.fromRGB(255,255,255)

local function solveVectorPos(worldPoint)

	local cam = workspace.CurrentCamera
	local worldPTR = worldPoint
	local vec, onscreen = cam:WorldToViewportPoint(worldPoint)
	if onscreen then 
	else 
	return Vector2.new(100000,100000)
	end
	return Vector2.new(vec.X, vec.Y)
end

local function drawESP(TextN,worldPoint,RefreshTime,Color)

	local text = Drawing.new("Text")
	local success,err = pcall(function()
		text.Visible = true
		text.Color = Color
		text.Transparency = 1
		text.Font = 3
		text.Text = TextN
		text.Position = solveVectorPos(worldPoint)
	end)
	rs.RenderStepped:Wait(RefreshTime)
	text:Remove()
end

local stepped = rs.RenderStepped:Connect(function()

    if getgenv().keyESP then
        for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do
        	if v.Name == "KeyObtain" then
        		drawESP("Key",v.Hitbox.Position,20,getgenv().keyESPClr)
        	end
        end
    end
    
    if getgenv().leverESP then
    	for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do
    		if v.Name == "LeverForGate" then
    			drawESP("Lever",v.Main.Position,20,getgenv().leverESPClr)
    		end
    	end
    end
    
    if getgenv().bookESP then
        for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do
            if v.Name == "HintBook" then
                drawESP("Book",v.Position,5,getgenv().bookESPClr)
            end
        end
    end
    
    if getgenv().lighterESP then
        for _,v in pairs(workspace.CurrentRooms:GetDescendants()) do
            if v.Name == "Sparker" then
                drawESP("Lighter",v.Position,1,getgenv().lighterESPClr)
            end
        end
    end
end)




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
    --Combat = Window:AddTab('Combat'),
    ESP = Window:AddTab('Visuals'),
    --Misc = Window:AddTab('Misc'),
    --Exploits = Window:AddTab('Exploits'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}


--------------------------------------------------------------------UI groupboxes
--local exploitstabgroup = Tabs.Exploits:AddLeftGroupbox('Movement')
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
local ToggleMenuGroup = Tabs['UI Settings']:AddRightGroupbox('Menu Extras')
local espmenugroup = Tabs.ESP:AddLeftGroupbox('ESP')
--------------------------------------------------------------------UI groupboxes

--------------------------------------------------------------------UI settings tab
Library:OnUnload(function()
    print('Unloaded!')
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

--------------------------------------------------------------------Visuals tab
espmenugroup:AddToggle('keyesptoggle', {Text = 'Key ESP', Default = false, Tooltip = 'Shows Keys'}):AddColorPicker('keyespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.keyesptoggle:OnChanged(function() if Toggles.keyesptoggle.Value == true then getgenv().keyESP = true else getgenv().keyESP = false end end)
Options.keyespcolor:OnChanged(function() getgenv().keyESPClr = Options.keyespcolor.Value end)

espmenugroup:AddToggle('leveresptoggle', {Text = 'Lever ESP', Default = false, Tooltip = 'Shows Levers'}):AddColorPicker('leverespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.leveresptoggle:OnChanged(function() if Toggles.leveresptoggle.Value == true then getgenv().leverESP = true else getgenv().leverESP = false end end)
Options.leverespcolor:OnChanged(function() getgenv().leverESPClr = Options.leverespcolor.Value end)

espmenugroup:AddToggle('bookesptoggle', {Text = 'Book ESP', Default = false, Tooltip = 'Shows Books'}):AddColorPicker('bookespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.bookesptoggle:OnChanged(function() if Toggles.bookesptoggle.Value == true then getgenv().bookESP = true else getgenv().bookESP = false end end)
Options.bookespcolor:OnChanged(function() getgenv().bookESPClr = Options.bookespcolor.Value end)

espmenugroup:AddToggle('lighteresptoggle', {Text = 'Lighter ESP', Default = false, Tooltip = 'Shows Lighters'}):AddColorPicker('lighterespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.lighteresptoggle:OnChanged(function() if Toggles.lighteresptoggle.Value == true then getgenv().lighterESP = true else getgenv().lighterESP = false end end)
Options.lighterespcolor:OnChanged(function() getgenv().lighterESPClr = Options.lighterespcolor.Value end)
--------------------------------------------------------------------Visuals tab

--------------------------------------------------------------------exploits tab

--------------------------------------------------------------------exploits tab

--GUI shit
