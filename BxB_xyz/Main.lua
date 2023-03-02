local ACL_LoadTime = tick() 
local main = {
	["1"] = rconsoleprint,
	["2"] = hookfunc,
	["3"] = hookfunction,
	["4"] = replaceclosure,
	["5"] = setreadonly,
	["6"] = make_writeable,
	["7"] = print,
	["8"] = warn,
	["9"] = writefile,
	["10"] = appendfile,
	["11"] = setclipboard,
}
if getgenv().AntihookFF1 == nil then
	getgenv().AntihookFF1 = {
		["print"] = true, -- ปรับเป็น true =ไห้ไช้ได้
		["hook"] = true
	}
end

local azx 
azx = hookfunc(rconsoleprint, function (...)
	if getgenv().AntihookFF1["print"] == true then
		return azx(...)
	else
		return 
	end
end)
local al 
al = hookfunc(hookfunction, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return al(...)
	else
		return 
	end
	
end)
local al 
al = hookfunc(setclipboard, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return al(...)
	else
		return 
	end
end)
local an 
an = hookfunc(replaceclosure, function (...)
	if getgenv().AntihookFF1["print"] == true then
		return an(...)
	else
		return 
	end
	
end)
local ay 
ay = hookfunc(setreadonly, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return ay(...)
	else
		return 
	end
	
end)
local ae 
ae = hookfunc(make_writeable, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return ae(...)
	else
		return 
	end
end)
local av 
av = hookfunc(print, function (...)
	if getgenv().AntihookFF1["print"] == true then
		return av(...)
	else
		return 
	end
end)
local at 
at = hookfunc(warn, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return at(...)
	else
		return 
	end
end)
local aw 
aw = hookfunc(writefile, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return aw(...)
	else
		return 
	end
end)
local aq
aq = hookfunc(appendfile, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return aq(...)
	else
		return 
	end
end)
local dsa
dsa = hookfunc(clonefunction,function(...)
    if getgenv().AntihookFF1["hook"] == true then
		return dsa(...)
	else
		return 
	end
end)
local as 
as = hookfunc(hookfunc, function (...)
	if getgenv().AntihookFF1["hook"] == true then
		return as(...)
	else
		return 
	end
end)

getgenv().rconsoleprint = function(...)
	if getgenv().AntihookFF1["print"] == true then
		return main["1"](...)
	else
		return "Secret"
	end
end
getgenv().hookfunc = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["2"](...)
	else
		return "Secret"
	end
end
getgenv().hookfunction = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["3"](...)
	else
		return "Secret"
	end
end
getgenv().replaceclosure = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["4"](...)
	else
		return "Secret"
	end
end
getgenv().setreadonly = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["5"](...)
	else
		return "Secret"
	end
end
getgenv().make_writeable = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["6"](...)
	else
		return "Secret"
	end
end
getgenv().print = function(...)
	if getgenv().AntihookFF1["print"] == true then
		return main["7"](...)
	else
		return "Secret"
	end
end
getgenv().warn = function(...)
	if getgenv().AntihookFF1["print"] == true then
		return main["8"](...)
	else
		return "Secret"
	end
end
getgenv().writefile = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["9"](...)
	else
		return "Secret"
	end
end
getgenv().appendfile = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["10"](...)
	else
		return "Secret"
	end
end
getgenv().setclipboard = function(...)
	if getgenv().AntihookFF1["hook"] == true then
		return main["11"](...)
	else
		return "Secret"
	end
end
print(string.format("[ 1 ] Anti Hook has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))

-- // Script Loaded \\ -- 

if getgenv().ExecuteCheck then
    Library:Unload()
end


repeat wait() until game:IsLoaded()
getgenv().ExecuteCheck = true

local Lib = 'https://raw.githubusercontent.com/B-O-O-Ml/Private/main/BxB_xyz/Library/'
local Theme = 'https://raw.githubusercontent.com/B-O-O-Ml/Private/main/BxB_xyz/Library/'
local Save = 'https://raw.githubusercontent.com/B-O-O-Ml/Private/main/BxB_xyz/Library/'

local Library = loadstring(game:HttpGet(Lib..'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(Theme..'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(Save..'addons/SaveManager.lua'))()
local marketplaceService = game:GetService("MarketplaceService")
local isSuccessful, info = pcall(marketplaceService.GetProductInfo, marketplaceService, game.PlaceId)
Library:Notify("Welcome, "..game.Players.LocalPlayer.Name.." to BxB.xyz Community | Private Script ")
print(string.format("[ 2 ] Library has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))

local function getexploit()
   local exploit =
       (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
       (SENTINEL_LOADED and "Sentinel") or
       (is_sirhurt_closure and "Sirhurt") or
       (PROTOSMASHER_LOADED and "ProtoSmasher") or
       (KRNL_LOADED and "Krnl") or
       (WRDAPI and "WeAreDevs") or
       (isvm and "Proxo") or
       (shadow_env and "Shadow") or
       (jit and "EasyExploits") or
       (getreg()['CalamariLuaEnv'] and "Calamari") or
       (unit and "Unit") or
       (IS_VIVA_LOADED and "VIVA") or
       (IS_COCO_LOADED and "Coco") or
       (IsElectron and "Electron") or
       (getexecutorname and import and "Scriptware") or
       nil

   return exploit
end
local EXE = getexploit()



local Window = Library:CreateWindow({
    Title = info.Name.." | Private 🛡",
    Center = true, 
    AutoShow = true,
})
local Tabs = {
    Credit = Window:AddTab('Credit'), 
    Secret = Window:AddTab('Dev-Tool'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}
Library:SetWatermark("BxB.xyz | Community | Add-On | #1 Best Script ")

local SadLeft = Tabs.Credit:AddLeftGroupbox('       -- ╱╱  Sad Word  ╲╲ --')	
local CreditLeft = Tabs.Credit:AddLeftGroupbox('       -- ╱╱  Credit  ╲╲ --')
local InfoLeft = Tabs.Credit:AddLeftGroupbox('       -- ╱╱  INFO  ╲╲ --')
local DateLeft = Tabs.Credit:AddLeftGroupbox('       -- ╱╱  DATA  ╲╲ --')

local Devright = Tabs.Secret:AddLeftGroupbox('       -- ╱╱  Player  ╲╲ --')
local Devright = Tabs.Secret:AddBigGroupbox('       -- ╱╱  TEST  ╲╲ --')
local Devleft= Tabs.Secret:AddRightGroupbox('       -- ╱╱  Console  ╲╲ --')

local ServerRight = Tabs.Credit:AddRightGroupbox('  -- ╱╱  Server Status  ╲╲ --')

-- // Credit \\ --
CreditLeft:AddDivider()
CreditLeft:AddLabel('Facebook : Boom WrkSs')
CreditLeft:AddLabel('Instagram : boom.wrkss')
CreditLeft:AddLabel('Discord : B-O-O-M#4134')
CreditLeft:AddLabel('Twitter : Oni_Boom')
CreditLeft:AddDivider()
-- // Info \\ --
InfoLeft:AddLabel('Username : '..game.Players.LocalPlayer.Name)
InfoLeft:AddLabel('Display Username : '..game.Players.LocalPlayer.DisplayName)
InfoLeft:AddLabel('Account Age : '..game.Players.LocalPlayer.AccountAge)
InfoLeft:AddLabel('User ID : '..game.Players.LocalPlayer.UserId)
InfoLeft:AddLabel("Executor : "..EXE)

InfoLeft:AddDivider()
-- // sad \\ --
SadLeft:AddDivider()
 SadWord = SadLeft:AddLabel("Date")
    function UpdateTFFFFF()
        SadWord:SetText("No one can fell your pain.")
        wait(3)
        SadWord:SetText("I hate myself for still waitting \nfor you.")
        wait(3)
        SadWord:SetText("Maybe I don't cry but it hurts. \nMaybe I won't say but i fell.")
        wait(3)
        SadWord:SetText("Is it tii late now to say sorry?")
        wait(3)
        SadWord:SetText("It was just a dream.")
        wait(3)
        SadWord:SetText("I will keep the stories that you \ninspire in my memmories")
        wait(3)
        SadWord:SetText("I know, but i was not ready \nto accept the fact")
        wait(3)
    end
    
    spawn(function()
        while true do
            UpdateTFFFFF()
            wait()
        end
    end)
SadLeft:AddDivider()


--// Date \\ --
DateLeft:AddLabel('Timezone : '..os.date("%z").." - "..os.date("%p"))
 TimeRealF = DateLeft:AddLabel("Date")
    function UpdateTimeRealF()
        local RealtimeF = os.date("%x")

        TimeRealF:SetText("Date : "..RealtimeF)
    end
    
    spawn(function()
        while true do
            UpdateTimeRealF()
            wait()
        end
    end)
    TimeRealG = DateLeft:AddLabel("Global Date")
    function UpdateTimeRealG()
        local RealtimeG = os.date("%A, ".."%d, ".."%B, ".."%Y")

        TimeRealG:SetText("     -- ╱╱ Global Date ╲╲ -- \n"..RealtimeG)
    end
    
    spawn(function()
        while true do
            UpdateTimeRealG()
            wait()
        end
    end)
    TimeReal = DateLeft:AddLabel("GlobalTime")
    function UpdateTimeReal()
        local Realtime = os.date("%X".." - %p")

        TimeReal:SetText("          "..Realtime)
    end
    
    spawn(function()
        while true do
            UpdateTimeReal()
            wait()
        end
    end)
DateLeft:AddDivider()
--// Server Status \\ --
ServerRight:AddLabel(info.Name)
ServerRight:AddLabel(game.PlaceId)
ServerRight:AddLabel('Place Version : '..game.PlaceVersion)
    PF = ServerRight:AddLabel("ServerTime")
    function UpdatePF()
        local PFLIST = "Players : "..game.Players.NumPlayers .. " / "..game.Players.MaxPlayers
        PF:SetText(PFLIST)
    end
    
    spawn(function()
        while true do
            UpdatePF()
            wait()
        end
    end)

    
    Time = ServerRight:AddLabel("ServerTime")
    function UpdateTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        Time:SetText("Server Time : "..Hour..":"..Minute..":"..Second)
    end
    
    spawn(function()
        while true do
            UpdateTime()
            wait()
        end
    end)
    
	PINGC = ServerRight:AddLabel("Date")
    function UpdatePing()
        local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()

        PINGC:SetText("Ping : "..Ping)
    end
    
    spawn(function()
        while true do
            UpdatePing()
            wait()
        end
    end)
CPUC = ServerRight:AddLabel("CPU")

function UpdateCPU()
    local cpu = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").CPU:GetValue())
    cpu = math.floor(cpu)
    CPUC:SetText("CPU : "..cpu.." - ms")
end

spawn(function()
    while true do wait(.1)
        UpdateCPU()
    end
end)
GPUC = ServerRight:AddLabel("GPU")

function UpdateGPU()
    local gpu = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").GPU:GetValue())
        gpu = math.floor(gpu)
    GPUC:SetText("GPU : "..gpu.." - ms")
end

spawn(function()
    while true do wait(.1)
        UpdateGPU()
    end
end)
FpsC = ServerRight:AddLabel("FPS")
		local FPSLabel = script.Parent
	local RunService = game:GetService("RunService")
	local RenderStepped = RunService.RenderStepped
	local sec = nil
	local FPS = {}
	
    local function fre()
    local fr = tick()
	for index = #FPS,1,-1 do
	FPS[index + 1] = (FPS[index] >= fr - 1) and FPS[index] or nil
	end
	FPS[1] = fr
	local fps = (tick() - sec >= 1 and #FPS) or (#FPS / (tick() - sec))
	fps = math.floor(fps)
    FpsC:SetText("FPS : "..fps.." - ps")
end
   sec = tick()
	RenderStepped:Connect(fre)
MEM = ServerRight:AddLabel("Memory")

function UpdateMEM()
    local mem = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Memory:GetValue())

    MEM:SetText("Memory : "..mem.." - MB")
end

spawn(function()
    while true do wait(.1)
        UpdateMEM()
    end
end)
Sent = ServerRight:AddLabel("Sent")

function UpdateSent()
    local sent = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").NetworkSent:GetValue())

    Sent:SetText("Network : "..sent.." - MB")
end

spawn(function()
    while true do wait(.1)
        UpdateSent()
    end
end)
print(string.format("[ 3 ] Page 1 has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))

	local CFRAMEBT = Devright:AddButton('CFrame Copy', function()
    setclipboard(tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame))
    Library:Notify("Copy Success! ( CTRL + V ) To Past \n"..tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame))
-- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1119.97095, 16.2736206, 1413.20764, 0.91262275, 0, -0.408802748, 0, 1, 0, 0.408802748, 0, 0.91262275)
end)
CFRAMEBT:AddTooltip('Copy Your HumanoidRootPart/Cframe!')
	local POSITIONCP = Devright:AddButton('Position Copy', function()
    setclipboard(tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position))
    Library:Notify("Copy Success! ( CTRL + V ) To Past \n"..tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position))
end)
POSITIONCP:AddTooltip('Copy Your HumanoidRootPart/Position!')
Devright:AddDivider()

Devright:AddToggle('WalkSpeed', {
    Text = 'Walk Speed',
    Default = false, -- Default value (true / false)
    Tooltip = 'Change Your Speed Runing!', -- Information shown when you hover over the toggle
})Toggles.WalkSpeed:OnChanged(function()
    getgenv().WalkSpeed = Toggles.WalkSpeed.Value
                if getgenv().WalkSpeed then
local OldNameCall 
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, ...) 
    if not checkcaller() and (B == "WalkSpeed" or B == "JumpPower") then 
        return end return OldNameCall(A, B, ...) 
    end) 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.WalkSpeedSlider.Value
else
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
Devright:AddSlider('WalkSpeedSlider', {
    Text = 'Change Speed :',

    Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
    Min = 0,
    Max = 500,
    Rounding = 1,

    Compact = false, 
})Options.WalkSpeedSlider:OnChanged(function()
getgenv().WalkSpeedSlider = Options.WalkSpeedSlider.Value
if getgenv().WalkSpeed then
    if getgenv().WalkSpeedSlider then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.WalkSpeedSlider.Value
 
     Library:Notify("Change Your Speed To : "..Options.WalkSpeedSlider.Value)
end
end
end)


Devright:AddToggle('JumpPower', {
    Text = 'Jump Power',
    Default = false, -- Default value (true / false)
    Tooltip = 'Change Your Jump Power', -- Information shown when you hover over the toggle
})Toggles.JumpPower:OnChanged(function()
    getgenv().JumpPower = Toggles.JumpPower.Value
if getgenv().JumpPower then
local OldNameCall 
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, ...) 
    if not checkcaller() and (B == "WalkSpeed" or B == "JumpPower") then 
        return end return OldNameCall(A, B, ...) 
    end) 
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.JumpPowerSlider.Value
else
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

end
  
end)
Devright:AddSlider('JumpPowerSlider', {
    Text = 'Change JumpPower :',

    Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
    Min = 0,
    Max = 500,
    Rounding = 1,

    Compact = false, 
})Options.JumpPowerSlider:OnChanged(function()
getgenv().JumpPowerSlider = Options.JumpPowerSlider.Value
if getgenv().JumpPower then
    if getgenv().JumpPowerSlider then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.JumpPowerSlider.Value 
     Library:Notify("Change Your JumpPower To : "..Options.JumpPowerSlider.Value)
end
end
end)
Devleft:AddToggle('PCN', {
    Text = 'Player Connect',
    Default = false, -- Default value (true / false)
    Tooltip = 'Notifications When Player Join / Left The Game', -- Information shown when you hover over the toggle
})Toggles.PCN:OnChanged(function()
getgenv().PlayerNotify = Toggles.PCN.Value
if getgenv().PlayerNotify then
game.Players.PlayerAdded:Connect(function(player)
    Library:Notify("Player, "..player.Name.." Joined the game!")
end)
game.Players.PlayerRemoving:Connect(function(player)
     Library:Notify("Player, "..player.Name.." Left the game!")
end)
end
end)
print(string.format("[ 4 ] Page 2 has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))

-- // Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('     -- ╱╱  Menu  ╲╲ --')
local ADVGroup = Tabs['UI Settings']:AddRightGroupbox(' -- ╱╱  Privte Settings  ╲╲ --')


-- Settings
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

ADVGroup:AddToggle('Rainbow', {
        Text = 'Rainbow UI',
        Default = false,
    })


Toggles.Rainbow:OnChanged(function()
        task.spawn(function()
            while Toggles.Rainbow.Value do
                task.wait()
                local Registry = Window.Holder.Visible and Library.Registry or Library.HudRegistry
                for Idx, Object in next, Library.Registry do
                    for Property, ColorIdx in next, Object.Properties do
                        if ColorIdx == 'AccentColor' or ColorIdx == 'AccentColorDark' then
                            local Instance = Object.Instance
                            local yPos = Instance.AbsolutePosition.Y

                            local Mapped = Library:MapValue(yPos, 0, 1080, 0, 0.5) * 1.5
                            local Color = Color3.fromHSV((Library.CurrentRainbowHue - Mapped) % 1, 0.8, 1)

                            if ColorIdx == 'AccentColorDark' then
                                Color = Library:GetDarkerColor(Color)
                            end

                            Instance[Property] = Color
                        end
                    end
                end
            end

            if not Toggles.Rainbow.Value then
                ThemeManager:LoadDefault()
              --ThemeManager:UpdateTheme()
            end
        end)
end)
ADVGroup:AddToggle('Watermark',{Text="Show watermark",Default=true}):OnChanged(function() Library:SetWatermarkVisibility(Toggles.Watermark.Value) end)
ADVGroup:AddToggle('White_Screen',{Text = 'White Screen',Default = false,})Toggles.White_Screen:OnChanged(function()
      _G.White_Screen = Toggles.White_Screen.Value
		if _G.White_Screen then
			game:GetService("RunService"):Set3dRenderingEnabled(false)
			setfpscap(30)
		else
			game:GetService("RunService"):Set3dRenderingEnabled(true)
			setfpscap(120)
		end
end)

local TabBox = Tabs['UI Settings']:AddRightTabbox() -- Add Tabbox on left side
local Tab1 = TabBox:AddTab('Server Configs')
local Tab2 = TabBox:AddTab('Server Settings')

Tab1:AddToggle('Anti_AFK',{Text = 'Anti AFK',Default = false,Tooltip = "Anti-AFK When you stand still for 20 minutes, you won't get kicked. ( Can't Disable )",})Toggles.Anti_AFK:OnChanged(function()
	getgenv().AntiAFK = Toggles.Anti_AFK.Value
spawn(function()
    while true do wait()
        if getgenv().AntiAFK then
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)
        end
    end
end)
end)
Tab1:AddToggle('Anti_Rejoin',{Text = 'Anti Rejoin',Default = false,Tooltip = 'Auto Rejoin When Disconnected',})Toggles.Anti_Rejoin:OnChanged(function()
	getgenv().AntiRejoin = Toggles.Anti_Rejoin.Value
spawn(function()
    while true do wait()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
            if not _G.TP_Ser and getgenv().AntiRejoin then
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
            end
        end)
    end
end)
end)

Tab1:AddToggle('SEFP',{Text = 'Lock FPS',Default = false,Tooltip = 'Set FPS Render Frame !',})Toggles.SEFP:OnChanged(function()
getgenv().LockFps = Toggles.SEFP.Value
spawn(function()
    while true do wait()
            if getgenv().LockFps then
                setfpscap(getgenv().Fpslock)
            else
                setfpscap(120)
            end
    end
end)
--setfpscap(getgenv().Fpslock)
end)
Tab1:AddSlider('FPSMAX', {
    Text = 'Max FPS',

    Default = 120,
    Min = 30,
    Max = 500,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})Options.FPSMAX:OnChanged(function()
    getgenv().Fpslock = Options.FPSMAX.Value
end)
Tab2:AddInput('JobTextbox', {
    Default = '',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'insert Job Id :',
    Placeholder = 'Enter Job ID here', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text
})

Options.JobTextbox:OnChanged(function()
    getgenv().JobText = Options.JobTextbox.Value
end)
local SetJob = Tab2:AddButton("Copy JobId",function() setclipboard(game.JobId) end)
SetJob:AddTooltip(game.JobId)
SetJob:AddButton("Join Server",function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, getgenv().JobText) end)
local Hop_Rejoin = Tab2:AddButton("Rejoin Server",function() game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer) end)
Hop_Rejoin:AddButton("Hop Server",function() game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer) end)


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])
print(string.format("[ 5 ] Page 3 has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))

print(string.format("Script has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))
