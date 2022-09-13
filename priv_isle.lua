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
local plr = game:GetService("Players")

getgenv().playerESP = false
getgenv().playerESPClr = Color3.fromRGB(255,255,255)

getgenv().monsterESP = false
getgenv().monsterESPClr = Color3.fromRGB(255,255,255)

getgenv().itemESP = false
getgenv().itemESPClr = Color3.fromRGB(255,255,255)
getgenv().itemMaxDist = 0

getgenv().helicopterESP = false
getgenv().helicopterESPClr = Color3.fromRGB(255,255,255)

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

    if getgenv().playerESP then
        for _,v in pairs(plr:GetPlayers()) do
        	if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        		drawESP(v.Name,v.Character.Head.Position,1,getgenv().playerESPClr)
        	end
        end
    end
    
    if getgenv().monsterESP then
    	for _,v in pairs(workspace.Monster:GetDescendants()) do
    		if v.Name == "HumanoidRootPart" then
    			drawESP("Monster",v.Position,1,getgenv().monsterESPClr)
    		end
    	end
    end
    
    if getgenv().helicopterESP then
        for _,v in pairs(workspace.Monster:GetDescendants()) do
            if v.Name == "Body" and v.Parent.Name == "Helicopter" then
                drawESP("Helicopter",v.Position,1,getgenv().helicopterESPClr)
            end
        end
    end
    
    if getgenv().itemESP then
    	for _,v in pairs(workspace.Map.Ignore.Tools:GetChildren()) do
    		if v.Handle ~= nil then
    		    if v.Handle.ClassName == "Part" or v.Handle.ClassName == "MeshPart" or v.Handle.ClassName == "UnionOperation" then
                    if string.find(v.Name, "Groundberry") or string.find(v.Name, "Strange Root") then
                    else
                        local dist = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude
                        if getgenv().itemMaxDist > dist then
                            drawESP(v.Name,v.Handle.Position,100,getgenv().itemESPClr)
                        end
                    end
                end
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
espmenugroup:AddToggle('lootesptoggle', {Text = 'Loot ESP', Default = false, Tooltip = 'Shows loot'}):AddColorPicker('lootespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.lootesptoggle:OnChanged(function() if Toggles.lootesptoggle.Value == true then getgenv().itemESP = true else getgenv().itemESP = false end end)
Options.lootespcolor:OnChanged(function() getgenv().itemESPClr = Options.lootespcolor.Value end)

espmenugroup:AddSlider('lootesprangeslider', {Text = 'Loot ESP Range', Default = 0, Min = 0, Max = 2500, Rounding = 0, Compact = false})
Options.lootesprangeslider:OnChanged(function() if Options.lootesprangeslider.Value > 0 then getgenv().itemMaxDist = Options.lootesprangeslider.Value else getgenv().itemMaxDist = 0 end end)

espmenugroup:AddToggle('playeresptoggle', {Text = 'Player ESP', Default = false, Tooltip = 'Shows Players'}):AddColorPicker('playerespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.playeresptoggle:OnChanged(function() if Toggles.playeresptoggle.Value == true then getgenv().playerESP = true else getgenv().playerESP = false end end)
Options.playerespcolor:OnChanged(function() getgenv().playerESPClr = Options.playerespcolor.Value end)

espmenugroup:AddToggle('monsteresptoggle', {Text = 'Monster ESP', Default = false, Tooltip = 'Shows Monsters'}):AddColorPicker('monsterespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.monsteresptoggle:OnChanged(function() if Toggles.monsteresptoggle.Value == true then getgenv().monsterESP = true else getgenv().monsterESP = false end end)
Options.monsterespcolor:OnChanged(function() getgenv().monsterESPClr = Options.monsterespcolor.Value end)

espmenugroup:AddToggle('heliesptoggle', {Text = 'Helicopter ESP', Default = false, Tooltip = 'Shows Helicopter'}):AddColorPicker('heliespcolor', {Default = Color3.fromRGB(255, 255, 255)})
Toggles.heliesptoggle:OnChanged(function() if Toggles.heliesptoggle.Value == true then getgenv().helicopterESP = true else getgenv().helicopterESP = false end end)
Options.heliespcolor:OnChanged(function() getgenv().helicopterESPClr = Options.heliespcolor.Value end)
--------------------------------------------------------------------Visuals tab

--------------------------------------------------------------------exploits tab

--------------------------------------------------------------------exploits tab

--GUI shit
