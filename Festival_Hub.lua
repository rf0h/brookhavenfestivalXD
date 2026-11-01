-- Festival Hub | Brookhaven RP
-- v6 - FULL FEATURE MERGE (size unrestricted)
-- Staff + Webhook preserved | All major Brookhaven features ported

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

-- ==================== STAFF SYSTEM (KEPT) ====================
local Staff = {
    Owner = { ["Kaidor2oo8"] = true, ["kaidor2oo8"] = true },
    Admin = { ["hiimsamet2"] = true, ["Hiimsamet2"] = true },
    Developer = {},
}

local function GetRole(playerName)
    local lower = string.lower(playerName or "")
    for name in pairs(Staff.Owner) do if string.lower(name) == lower then return "Owner" end end
    for name in pairs(Staff.Admin) do if string.lower(name) == lower then return "Admin" end end
    for name in pairs(Staff.Developer) do if string.lower(name) == lower then return "Developer" end end
    return "User"
end

local function GetRoleDisplay(playerName)
    local role = GetRole(playerName)
    if role == "Owner" then return "Festival Owner"
    elseif role == "Admin" then return "Festival Admin"
    elseif role == "Developer" then return "Festival Developer" end
    return "Festival User"
end

local function IsStaff(playerName)
    return GetRole(playerName) ~= "User"
end

-- ==================== BAN ====================
local BanListURL = "https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/banlist.txt"
local BannedUsers = {}
local function LoadBanList()
    local ok, result = pcall(function() return game:HttpGet(BanListURL) end)
    if ok and result then
        BannedUsers = {}
        for line in result:gmatch("[^\r\n]+") do
            local name = line:match("^%s*(.-)%s*$")
            if name and name ~= "" then BannedUsers[string.lower(name)] = true end
        end
    end
end
local function IsBanned(n) return BannedUsers[string.lower(n or "")] == true end
pcall(LoadBanList)
if IsBanned(LocalPlayer.Name) then LocalPlayer:Kick("You are banned from Festival Hub.") return end

-- ==================== WEBHOOK (KEPT) ====================
local WEBHOOK_URL = "https://discord.com/api/webhooks/1555873586235965540/8byfXFIyNPtonCrVguw8J2qdUL_tMw1aqawxLY0S-yJf6XhA9d38hKireGY_YKH46yaE"

local function SendJoinLog()
    local playerName, userId, displayName = LocalPlayer.Name, LocalPlayer.UserId, LocalPlayer.DisplayName
    local placeId, jobId = game.PlaceId, game.JobId
    local role = GetRoleDisplay(playerName)
    local gameName = "Brookhaven RP"
    pcall(function() gameName = MarketplaceService:GetProductInfo(placeId).Name end)
    local executor = "Unknown"
    pcall(function() if identifyexecutor then executor = identifyexecutor() elseif getexecutorname then executor = getexecutorname() end end)
    local joinLink = string.format("https://www.roblox.com/games/start?placeId=%s&gameInstanceId=%s", tostring(placeId), tostring(jobId))
    local profileLink = "https://www.roblox.com/users/" .. tostring(userId) .. "/profile"
    local avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(userId) .. "&width=420&height=420&format=png"
    local embed = {
        title = "Festival Hub - Player Joined", color = 15158332, thumbnail = {url = avatarUrl},
        fields = {
            {name = "Player", value = displayName .. " (@" .. playerName .. ")", inline = true},
            {name = "UserId", value = tostring(userId), inline = true},
            {name = "Role", value = role, inline = true},
            {name = "Profile", value = "[Open Profile](" .. profileLink .. ")", inline = true},
            {name = "Executor", value = executor, inline = true},
            {name = "Players", value = tostring(#Players:GetPlayers()), inline = true},
            {name = "Game", value = gameName, inline = false},
            {name = "PlaceId", value = tostring(placeId), inline = true},
            {name = "JobId", value = tostring(jobId), inline = true},
            {name = "Join Server", value = "[Click to Join](" .. joinLink .. ")", inline = false},
        },
        footer = {text = "Festival Hub • " .. os.date("%d/%m/%Y %H:%M:%S")},
    }
    local body = HttpService:JSONEncode({username = "Festival Hub Logs", embeds = {embed}})
    local req = (syn and syn.request) or http_request or request or (fluxus and fluxus.request)
    if req then pcall(function() req({Url = WEBHOOK_URL, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = body}) end)
    else pcall(function() HttpService:PostAsync(WEBHOOK_URL, body, Enum.HttpContentType.ApplicationJson) end) end
end
task.spawn(function() task.wait(2) pcall(SendJoinLog) end)

-- ==================== INTRO + BACKGROUND ====================
local BackgroundID = 1235887402
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FestivalIntro"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local bg = Instance.new("Frame")
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(8,8,12)
bg.BorderSizePixel = 0
bg.Parent = screenGui

local bgImage = Instance.new("ImageLabel")
bgImage.Size = UDim2.new(1,0,1,0)
bgImage.BackgroundTransparency = 1
bgImage.Image = "rbxassetid://" .. tostring(BackgroundID)
bgImage.ImageTransparency = 0.25
bgImage.ScaleType = Enum.ScaleType.Crop
bgImage.Parent = bg

local dark = Instance.new("Frame")
dark.Size = UDim2.new(1,0,1,0)
dark.BackgroundColor3 = Color3.new(0,0,0)
dark.BackgroundTransparency = 0.45
dark.BorderSizePixel = 0
dark.Parent = bg

local glow = Instance.new("Frame")
glow.Size = UDim2.new(0,420,0,420)
glow.Position = UDim2.new(0.5,-210,0.38,-210)
glow.BackgroundColor3 = Color3.fromRGB(180,20,30)
glow.BackgroundTransparency = 0.82
glow.BorderSizePixel = 0
glow.Parent = bg
Instance.new("UICorner", glow).CornerRadius = UDim.new(1,0)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0,500,0,70)
title.Position = UDim2.new(0.5,-250,0.32,0)
title.BackgroundTransparency = 1
title.Text = "FESTIVAL HUB"
title.TextColor3 = Color3.fromRGB(255,45,55)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.TextTransparency = 1
title.Parent = bg

local sub = Instance.new("TextLabel")
sub.Size = UDim2.new(0,400,0,32)
sub.Position = UDim2.new(0.5,-200,0.42,0)
sub.BackgroundTransparency = 1
sub.Text = "Brookhaven RP | Max Features Features"
sub.TextColor3 = Color3.fromRGB(220,220,230)
sub.TextScaled = true
sub.Font = Enum.Font.GothamMedium
sub.TextTransparency = 1
sub.Parent = bg

local roleLabel = Instance.new("TextLabel")
roleLabel.Size = UDim2.new(0,400,0,26)
roleLabel.Position = UDim2.new(0.5,-200,0.48,0)
roleLabel.BackgroundTransparency = 1
roleLabel.Text = GetRoleDisplay(LocalPlayer.Name)
roleLabel.TextColor3 = Color3.fromRGB(255,90,100)
roleLabel.TextScaled = true
roleLabel.Font = Enum.Font.GothamSemibold
roleLabel.TextTransparency = 1
roleLabel.Parent = bg

local barBg = Instance.new("Frame")
barBg.Size = UDim2.new(0,320,0,8)
barBg.Position = UDim2.new(0.5,-160,0.58,0)
barBg.BackgroundColor3 = Color3.fromRGB(30,30,38)
barBg.BorderSizePixel = 0
barBg.Parent = bg
Instance.new("UICorner", barBg).CornerRadius = UDim.new(1,0)

local barFill = Instance.new("Frame")
barFill.Size = UDim2.new(0,0,1,0)
barFill.BackgroundColor3 = Color3.fromRGB(220,30,40)
barFill.BorderSizePixel = 0
barFill.Parent = barBg
Instance.new("UICorner", barFill).CornerRadius = UDim.new(1,0)

local loadText = Instance.new("TextLabel")
loadText.Size = UDim2.new(0,300,0,24)
loadText.Position = UDim2.new(0.5,-150,0.63,0)
loadText.BackgroundTransparency = 1
loadText.Text = "Loading full features..."
loadText.TextColor3 = Color3.fromRGB(160,160,180)
loadText.TextScaled = true
loadText.Font = Enum.Font.Gotham
loadText.TextTransparency = 1
loadText.Parent = bg

TweenService:Create(title, TweenInfo.new(0.7), {TextTransparency=0}):Play()
task.wait(0.12)
TweenService:Create(sub, TweenInfo.new(0.6), {TextTransparency=0}):Play()
task.wait(0.08)
TweenService:Create(roleLabel, TweenInfo.new(0.5), {TextTransparency=0}):Play()
TweenService:Create(loadText, TweenInfo.new(0.5), {TextTransparency=0}):Play()

local msgs = {"Loading modules...", "Porting Brookhaven features...", "Building UI...", "Almost ready...", "Welcome"}
for i=1,100 do
    barFill:TweenSize(UDim2.new(i/100,0,1,0), "Out", "Quad", 0.03, true)
    if i==20 then loadText.Text=msgs[1] elseif i==40 then loadText.Text=msgs[2]
    elseif i==60 then loadText.Text=msgs[3] elseif i==80 then loadText.Text=msgs[4]
    elseif i==95 then loadText.Text=msgs[5] end
    task.wait(0.015)
end
task.wait(0.3)
for _,obj in ipairs({title,sub,roleLabel,loadText,barBg,glow,bgImage,dark}) do
    if obj:IsA("TextLabel") then TweenService:Create(obj,TweenInfo.new(0.35),{TextTransparency=1}):Play()
    elseif obj:IsA("ImageLabel") then TweenService:Create(obj,TweenInfo.new(0.35),{ImageTransparency=1}):Play()
    else TweenService:Create(obj,TweenInfo.new(0.35),{BackgroundTransparency=1}):Play() end
end
TweenService:Create(bg,TweenInfo.new(0.4),{BackgroundTransparency=1}):Play()
task.wait(0.45)
screenGui:Destroy()

-- ==================== RP NAME ====================
local re = ReplicatedStorage:WaitForChild("RE")
local colorRed = Color3.fromRGB(220,30,40)
local colorBlack = Color3.fromRGB(10,10,12)
local roleDisplay = GetRoleDisplay(LocalPlayer.Name)
pcall(function() re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", colorRed) end)
pcall(function() re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", roleDisplay) end)
pcall(function() re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPBioColor", colorBlack) end)
pcall(function() re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayBio", "Thank you for using Festival Hub") end)

-- ==================== UI LIB ====================
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lindao10/Redzlib-cor-neo/refs/heads/main/RedzHubUI_NeoBlack_COMPLETO_EDITADO.lua"))()
local window = library:MakeWindow({
    Title = "Festival Hub | Brookhaven RP | Max Features",
    SubTitle = "by Festival Team",
    SaveFolder = "FestivalConfig"
})
window:AddMinimizeButton({
    Button = { Image = "rbxassetid://464093673", BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(180,25,35) },
    Corner = { CornerRadius = UDim.new(0,12) },
})

-- ==================== HELPERS ====================
local camera = Workspace.CurrentCamera
local function getHRP(plr)
    plr = plr or LocalPlayer
    local c = plr.Character
    return c and c:FindFirstChild("HumanoidRootPart")
end
local function getHum(plr)
    plr = plr or LocalPlayer
    local c = plr.Character
    return c and c:FindFirstChildOfClass("Humanoid")
end
local function fireRE(name, ...)
    pcall(function()
        local r = re:FindFirstChild(name)
        if r then
            if r:IsA("RemoteEvent") then r:FireServer(...)
            elseif r:IsA("RemoteFunction") then r:InvokeServer(...) end
        end
    end)
end
local function giveTool(toolName)
    pcall(function() re:WaitForChild("1Too1l"):InvokeServer("PickingTools", toolName) end)
end
local function notify(title, text, dur)
    pcall(function() StarterGui:SetCore("SendNotification", {Title=title, Text=text, Duration=dur or 4}) end)
end

-- ==================== INFO ====================
local tabInfo = window:MakeTab({"Info", "rbxassetid://464093673"})
tabInfo:AddDiscordInvite({ Name="Festival | Community", Description="Updates & more", Logo="rbxassetid://6239938337", Invite="https://discord.gg/d9DSXEuAt" })
tabInfo:AddParagraph({"Festival Hub V6", "Full Brookhaven feature set + Festival Staff System."})
tabInfo:AddParagraph({"Your Role", roleDisplay})
tabInfo:AddParagraph({"Version", "V7 MAX FEATURES"})

-- ==================== LOCAL PLAYER ====================
local tabLocal = window:MakeTab({"Local Player", "user"})
tabLocal:AddSection({Name="Movement"})
tabLocal:AddTextBox({Name="WalkSpeed", PlaceholderText="50", Callback=function(v) local n=tonumber(v) if n and getHum() then getHum().WalkSpeed=n end end})
tabLocal:AddButton({Name="Reset Speed 16", Callback=function() if getHum() then getHum().WalkSpeed=16 end end})
tabLocal:AddTextBox({Name="JumpPower", PlaceholderText="100", Callback=function(v) local n=tonumber(v) if n and getHum() then getHum().UseJumpPower=true getHum().JumpPower=n end end})
tabLocal:AddButton({Name="Reset Jump 50", Callback=function() if getHum() then getHum().JumpPower=50 end end})
tabLocal:AddTextBox({Name="Gravity", PlaceholderText="80", Callback=function(v) local n=tonumber(v) if n then Workspace.Gravity=n end end})
tabLocal:AddButton({Name="Reset Gravity", Callback=function() Workspace.Gravity=196.2 end})
tabLocal:AddButton({Name="Reset All Movement", Callback=function()
    if getHum() then getHum().WalkSpeed=16 getHum().JumpPower=50 getHum().UseJumpPower=true end
    Workspace.Gravity=196.2
end})

local noclipOn = false
tabLocal:AddToggle({Name="Noclip", Default=false, Callback=function(s)
    noclipOn=s
    if s then task.spawn(function()
        while noclipOn do
            local c=LocalPlayer.Character
            if c then for _,p in pairs(c:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide=false end end end
            task.wait()
        end
    end) end
end})

tabLocal:AddSection({Name="Anti Systems"})
local antiSitTool, antiSitVeh, antiSitAll, antiFling, antiLag = false,false,false,false,false
tabLocal:AddToggle({Name="Anti Sit Tool", Default=false, Callback=function(s)
    antiSitTool=s
    if s then task.spawn(function() while antiSitTool do local h=getHum() if h and h.Sit then h.Sit=false h:ChangeState(Enum.HumanoidStateType.GettingUp) end task.wait(0.1) end end) end
end})
tabLocal:AddToggle({Name="Anti Sit Vehicle", Default=false, Callback=function(s)
    antiSitVeh=s
    if s then task.spawn(function()
        while antiSitVeh do local h=getHum() if h then h:SetStateEnabled(Enum.HumanoidStateType.Seated,false) if h.Sit then h.Sit=false end end task.wait(0.12) end
        local h=getHum() if h then h:SetStateEnabled(Enum.HumanoidStateType.Seated,true) end
    end) end
end})
tabLocal:AddToggle({Name="Anti Sit Total", Default=false, Callback=function(s)
    antiSitAll=s
    if s then task.spawn(function()
        while antiSitAll do local h=getHum() if h then h:SetStateEnabled(Enum.HumanoidStateType.Seated,false) h.Sit=false end task.wait(0.08) end
        local h=getHum() if h then h:SetStateEnabled(Enum.HumanoidStateType.Seated,true) end
    end) end
end})
tabLocal:AddToggle({Name="Anti Fling", Default=false, Callback=function(s)
    antiFling=s
    if s then task.spawn(function()
        while antiFling do
            local c=LocalPlayer.Character
            if c then for _,p in pairs(c:GetDescendants()) do
                if p:IsA("BasePart") then p.Velocity=Vector3.zero p.RotVelocity=Vector3.zero
                    if p:FindFirstChild("BodyVelocity") then p.BodyVelocity:Destroy() end
                    if p:FindFirstChild("BodyAngularVelocity") then p.BodyAngularVelocity:Destroy() end
                end
            end end
            task.wait(0.08)
        end
    end) end
end})
tabLocal:AddToggle({Name="Anti Lag", Default=false, Callback=function(s)
    antiLag=s
    if s then task.spawn(function() while antiLag do pcall(function() settings().Rendering.QualityLevel=Enum.QualityLevel.Level01 end) task.wait(1) end end) end
end})

tabLocal:AddSection({Name="Chat Spam"})
local chatMsg=""
local function SendChat(msg)
    if not msg or msg=="" then return end
    pcall(function()
        local tcs=game:GetService("TextChatService")
        if tcs.ChatVersion==Enum.ChatVersion.LegacyChatService then
            ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
        else
            local ch=tcs.ChatInputBarConfiguration and tcs.ChatInputBarConfiguration.TargetTextChannel
            if ch then ch:SendAsync(msg) end
        end
    end)
end
tabLocal:AddTextBox({Name="Chat Message", PlaceholderText="...", Callback=function(t) chatMsg=t end})
tabLocal:AddButton({Name="Send Chat", Callback=function() SendChat(chatMsg) end})
getgenv().FestivalSendDelay=1
tabLocal:AddSlider({Name="Spam Delay", Min=0.4, Max=10, Default=1, Increment=0.1, Callback=function(v) getgenv().FestivalSendDelay=v end})
tabLocal:AddToggle({Name="Spam Chat", Default=false, Callback=function(s)
    getgenv().FestivalSpamChat=s
    while getgenv().FestivalSpamChat do SendChat(chatMsg) task.wait(getgenv().FestivalSendDelay) end
end})

-- ==================== TROLL PLAYERS (FULL) ====================
local tabTroll = window:MakeTab({"Troll Players", "rbxassetid://12921294273"})
local playerList, selectedPlayer = {}, nil
for _,p in pairs(Players:GetPlayers()) do if p~=LocalPlayer then table.insert(playerList,p.Name) end end
Players.PlayerAdded:Connect(function(p) if p~=LocalPlayer then table.insert(playerList,p.Name) pcall(function() if PlayerDD then PlayerDD:SetOptions(playerList) end end) end end)
Players.PlayerRemoving:Connect(function(p)
    for i,n in ipairs(playerList) do if n==p.Name then table.remove(playerList,i) break end end
    pcall(function() if PlayerDD then PlayerDD:SetOptions(playerList) end end)
end)

local PlayerDD = tabTroll:AddDropdown({Name="Select Player", Options=playerList, Callback=function(v) selectedPlayer=v end})
tabTroll:AddButton({Name="Refresh Players", Callback=function()
    playerList={}
    for _,p in ipairs(Players:GetPlayers()) do if p~=LocalPlayer then table.insert(playerList,p.Name) end end
    pcall(function() PlayerDD:SetOptions(playerList) end)
end})

local viewing=false
tabTroll:AddToggle({Name="View Player", Callback=function(s)
    viewing=s
    if s and selectedPlayer then
        task.spawn(function()
            while viewing do
                local t=Players:FindFirstChild(selectedPlayer)
                if not t or not t.Character or not getHum(t) then break end
                camera.CameraSubject=getHum(t)
                task.wait()
            end
        end)
    else
        if getHum() then camera.CameraSubject=getHum() end
    end
end})
tabTroll:AddButton({Name="Teleport to Player", Callback=function()
    if not selectedPlayer then return end
    local t=Players:FindFirstChild(selectedPlayer)
    if t and getHRP(t) and getHRP() then getHRP().CFrame=getHRP(t).CFrame+Vector3.new(0,3,0) end
end})
tabTroll:AddButton({Name="Bring Player", Callback=function()
    if not selectedPlayer then return end
    local t=Players:FindFirstChild(selectedPlayer)
    if t and getHRP(t) and getHRP() then getHRP(t).CFrame=getHRP().CFrame+Vector3.new(0,0,-4) end
end})

-- ESP
local espOn=false
local espConns={}
local function dist(char)
    if char and getHRP(LocalPlayer) and char:FindFirstChild("HumanoidRootPart") then
        return math.floor((char.HumanoidRootPart.Position-getHRP().Position).Magnitude)
    end
    return 0
end
local function makeESP(plr)
    if plr==LocalPlayer then return end
    local function onChar(char)
        if not char:FindFirstChild("Head") then char:WaitForChild("Head") end
        if char:FindFirstChild("ESP_HL") then return end
        local hl=Instance.new("Highlight")
        hl.Name="ESP_HL"
        hl.FillColor=Color3.fromRGB(220,40,50)
        hl.FillTransparency=0.55
        hl.Parent=char
        local bb=Instance.new("BillboardGui")
        bb.Name="ESP_INFO"
        bb.Size=UDim2.new(0,170,0,34)
        bb.StudsOffset=Vector3.new(0,3.3,0)
        bb.Adornee=char.Head
        bb.AlwaysOnTop=true
        bb.Parent=char
        local lb=Instance.new("TextLabel")
        lb.Size=UDim2.new(1,0,1,0)
        lb.BackgroundTransparency=1
        lb.TextColor3=Color3.new(1,1,1)
        lb.TextScaled=true
        lb.Font=Enum.Font.GothamMedium
        lb.Parent=bb
        local last=0
        RunService.Heartbeat:Connect(function()
            if espOn and tick()-last>0.7 then
                local h=char:FindFirstChildOfClass("Humanoid")
                if h then lb.Text=string.format("%s | HP:%d | %dm", plr.Name, math.floor(h.Health), dist(char)) end
                last=tick()
            end
        end)
    end
    if plr.Character then onChar(plr.Character) end
    plr.CharacterAdded:Connect(function(c) if espOn then onChar(c) end end)
end
local function clearESP(plr)
    if plr.Character then
        if plr.Character:FindFirstChild("ESP_HL") then plr.Character.ESP_HL:Destroy() end
        if plr.Character:FindFirstChild("ESP_INFO") then plr.Character.ESP_INFO:Destroy() end
    end
end
tabTroll:AddToggle({Name="ESP Players", Default=false, Callback=function(s)
    espOn=s
    if s then
        for _,p in pairs(Players:GetPlayers()) do makeESP(p) end
        espConns.pa=Players.PlayerAdded:Connect(function(p) if espOn then makeESP(p) end end)
    else
        for _,p in pairs(Players:GetPlayers()) do clearESP(p) end
        if espConns.pa then espConns.pa:Disconnect() end
    end
end})

tabTroll:AddSection({Name="Fling / Kill"})
local function doFling(target, duration)
    duration = duration or 3
    if not target or not target.Character or not getHRP(target) or not getHRP() then return end
    local myHRP, hum = getHRP(), getHum()
    local tHRP = getHRP(target)
    local tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
    if tool then tool.Parent=LocalPlayer.Character end
    Workspace.FallenPartsDestroyHeight = 0/0
    local bv=Instance.new("BodyVelocity")
    bv.Name="FlingForce"
    bv.Velocity=Vector3.new(9e9,9e9,9e9)
    bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
    bv.Parent=myHRP
    hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
    camera.CameraSubject=tHRP
    local angle, endT = 0, tick()+duration
    while tick()<endT do
        if not target.Character or not getHum(target) then break end
        angle=angle+50
        myHRP.CFrame=tHRP.CFrame*CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(angle),0,0)
        myHRP.Velocity=Vector3.new(9e9,9e9,9e9)
        myHRP.RotVelocity=Vector3.new(9e9,9e9,9e9)
        task.wait()
    end
    bv:Destroy()
    hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
    camera.CameraSubject=hum
    for _,p in pairs(LocalPlayer.Character:GetDescendants()) do
        if p:IsA("BasePart") then p.Velocity=Vector3.zero p.RotVelocity=Vector3.zero end
    end
end

local flingToggle=false
tabTroll:AddToggle({Name="Fling Couch", Default=false, Callback=function(s)
    flingToggle=s
    if s and selectedPlayer then
        local t=Players:FindFirstChild(selectedPlayer)
        if t then task.spawn(function() doFling(t, 999) end) end
    end
end})
tabTroll:AddButton({Name="Give Couch", Callback=function() giveTool("Couch") end})
tabTroll:AddButton({Name="Fling Selected (3s)", Callback=function()
    if not selectedPlayer then return end
    local t=Players:FindFirstChild(selectedPlayer)
    if t then task.spawn(function() doFling(t,3) end) end
end})
tabTroll:AddButton({Name="Fling All", Callback=function()
    for _,p in pairs(Players:GetPlayers()) do
        if p~=LocalPlayer then task.spawn(function() doFling(p,2.5) end) task.wait(0.4) end
    end
end})
tabTroll:AddButton({Name="Auto Fling Selected 5s", Callback=function()
    if not selectedPlayer then return end
    local t=Players:FindFirstChild(selectedPlayer)
    if t then task.spawn(function() doFling(t,5) end) end
end})
tabTroll:AddButton({Name="Fling Ball", Callback=function()
    if not selectedPlayer then return end
    local t=Players:FindFirstChild(selectedPlayer)
    if not t or not getHRP(t) then return end
    pcall(function()
        local ball=Workspace:FindFirstChild("SoccerBall") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("SoccerBall"))
        if ball and ball:FindFirstChild("FootballInteraction") then
            ball.FootballInteraction:FireServer(CFrame.new(1,1,1))
        end
        doFling(t,2)
    end)
end})
tabTroll:AddButton({Name="House Ban Kill", Callback=function()
    if not selectedPlayer then return end
    local t=Players:FindFirstChild(selectedPlayer)
    if t then
        pcall(function()
            re:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer("BanPlayerFromHouse", t, t.Character)
        end)
        task.wait(0.3)
        doFling(t,2)
    end
end})
tabTroll:AddButton({Name="Bring All Cars", Callback=function()
    for _,v in next, Workspace.Vehicles:GetChildren() do
        if v.PrimaryPart and getHRP() then pcall(function() v:SetPrimaryPartCFrame(LocalPlayer.Character:GetPrimaryPartCFrame()) end) end
    end
end})

tabTroll:AddSection({Name="Sign Troll"})
local signTarget, signText = nil, ""
local function playersWithSign()
    local list={}
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LocalPlayer then
            local has=(p.Backpack and p.Backpack:FindFirstChild("Sign")) or (p.Character and p.Character:FindFirstChild("Sign"))
            if has then table.insert(list,p.Name) end
        end
    end
    return list
end
local SignDD=tabTroll:AddDropdown({Name="Player with Sign", Options=playersWithSign(), Callback=function(v) signTarget=v end})
tabTroll:AddButton({Name="Refresh Sign List", Callback=function() pcall(function() SignDD:SetOptions(playersWithSign()) end) end})
tabTroll:AddTextBox({Name="Sign Text", PlaceholderText="...", Callback=function(t) signText=t end})
tabTroll:AddButton({Name="Edit Sign", Callback=function()
    if not signTarget or signText=="" then return end
    local t=Players:FindFirstChild(signTarget)
    if not t or not t.Character then return end
    local sign=t.Character:FindFirstChild("Sign")
    if not sign then notify("Festival","No Sign equipped",3) return end
    local ts=sign:FindFirstChild("ToolSound")
    if ts then pcall(function() ts:FireServer("Sign","SignWords",signText) end) end
end})

tabTroll:AddSection({Name="Click Tools"})
tabTroll:AddButton({Name="Click Fling Couch Tool", Callback=function()
    local bp=LocalPlayer:FindFirstChild("Backpack")
    if not bp then return end
    if bp:FindFirstChild("Click Fling Couch") then return end
    local tool=Instance.new("Tool")
    tool.Name="Click Fling Couch"
    tool.RequiresHandle=false
    tool.CanBeDropped=false
    tool.Parent=bp
    tool.Activated:Connect(function()
        local mouse=LocalPlayer:GetMouse()
        local target=mouse.Target
        if target then
            local model=target:FindFirstAncestorOfClass("Model")
            local plr=Players:GetPlayerFromCharacter(model)
            if plr then task.spawn(function() doFling(plr,3) end) end
        end
    end)
    notify("Festival","Click Fling Couch tool given",3)
end})
tabTroll:AddButton({Name="Click Kill Couch Tool", Callback=function()
    local bp=LocalPlayer:FindFirstChild("Backpack")
    if not bp or bp:FindFirstChild("Click Kill Couch") then return end
    local tool=Instance.new("Tool")
    tool.Name="Click Kill Couch"
    tool.RequiresHandle=false
    tool.CanBeDropped=false
    tool.Parent=bp
    tool.Activated:Connect(function()
        local mouse=LocalPlayer:GetMouse()
        local target=mouse.Target
        if target then
            local model=target:FindFirstAncestorOfClass("Model")
            local plr=Players:GetPlayerFromCharacter(model)
            if plr then
                pcall(function() re:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer("BanPlayerFromHouse", plr, plr.Character) end)
                task.spawn(function() doFling(plr,2) end)
            end
        end
    end)
    notify("Festival","Click Kill Couch tool given",3)
end})

-- ==================== AVATAR / EXTRA TROLL ====================
local tabAvatar = window:MakeTab({"Avatar Troll", "fun"})

tabAvatar:AddSection({Name = "Copy Avatar"})

local copyTarget = nil
local function getAllPlayerNames()
    local t = {}
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(t, p.Name)
    end
    return t
end

local CopyDD = tabAvatar:AddDropdown({
    Name = "Select Player to Copy",
    Options = getAllPlayerNames(),
    Callback = function(v) copyTarget = v end
})

tabAvatar:AddButton({
    Name = "Refresh Player List",
    Callback = function()
        pcall(function() CopyDD:SetOptions(getAllPlayerNames()) end)
    end
})

tabAvatar:AddButton({
    Name = "Copy Avatar",
    Description = "Copy selected player's appearance (FE)",
    Callback = function()
        if not copyTarget then
            notify("Festival", "Select a player first", 3)
            return
        end
        local target = Players:FindFirstChild(copyTarget)
        if not target or not target.Character then
            notify("Festival", "Target not found / no character", 3)
            return
        end
        local myChar = LocalPlayer.Character
        if not myChar then return end
        local myHum = myChar:FindFirstChildOfClass("Humanoid")
        local targetHum = target.Character:FindFirstChildOfClass("Humanoid")
        if not myHum or not targetHum then return end

        local desc
        local ok, err = pcall(function()
            desc = targetHum:GetAppliedDescription()
        end)
        if not ok or not desc then
            notify("Festival", "Could not read avatar description", 3)
            return
        end

        local remotes = ReplicatedStorage:FindFirstChild("Remotes")
        if not remotes then
            notify("Festival", "Remotes not found", 3)
            return
        end

        -- Body parts
        pcall(function()
            remotes:WaitForChild("ChangeCharacterBody"):InvokeServer({
                {
                    desc.Torso or 0,
                    desc.RightArm or 0,
                    desc.LeftArm or 0,
                    desc.RightLeg or 0,
                    desc.LeftLeg or 0,
                    desc.Head or 0,
                }
            })
        end)
        task.wait(0.3)

        -- Wear assets
        local wear = remotes:FindFirstChild("Wear")
        if wear then
            local function tryWear(id)
                if id and tonumber(id) and tonumber(id) > 0 then
                    pcall(function() wear:InvokeServer(tonumber(id)) end)
                    task.wait(0.15)
                end
            end
            tryWear(desc.Shirt)
            tryWear(desc.Pants)
            tryWear(desc.Face)
            tryWear(desc.GraphicTShirt)

            -- Accessories from description strings
            local accFields = {
                desc.HatAccessory, desc.HairAccessory, desc.FaceAccessory,
                desc.NeckAccessory, desc.ShouldersAccessory, desc.FrontAccessory,
                desc.BackAccessory, desc.WaistAccessory
            }
            for _, field in ipairs(accFields) do
                if type(field) == "string" then
                    for id in string.gmatch(field, "%d+") do
                        tryWear(id)
                    end
                end
            end
        end

        notify("Festival", "Avatar copied from " .. copyTarget, 4)
        print("[Festival] Copied avatar from " .. copyTarget)
    end
})

tabAvatar:AddSection({Name="Invisible"})
tabAvatar:AddButton({Name="Go Invisible FE", Callback=function()
    pcall(function()
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer({{102344834840950,70400527171038,0,0,0,0}})
    end)
    pcall(function()
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(111858803548720)
    end)
    notify("Festival","Invisible applied",3)
end})

tabAvatar:AddSection({Name="Hair RGB"})
local hairRGB=false
local hairCols={Color3.new(1,1,0),Color3.new(0,0,1),Color3.new(1,0,1),Color3.new(1,1,1),Color3.new(0,1,0),Color3.new(0.5,0,1),Color3.new(1,0.647,0),Color3.new(0,1,1)}
tabAvatar:AddToggle({Name="Hair RGB", Default=false, Callback=function(s)
    hairRGB=s
    if s then task.spawn(function()
        local i=1
        while hairRGB do
            pcall(function() re:WaitForChild("1Max1y"):FireServer("ChangeHairColor2", hairCols[i]) end)
            i=i%#hairCols+1
            task.wait(0.12)
        end
    end) end
end})

tabAvatar:AddSection({Name="Avatar RGB"})
local avatarRGB=false
tabAvatar:AddToggle({Name="Avatar RGB (Highlight)", Default=false, Callback=function(s)
    avatarRGB=s
    if s then task.spawn(function()
        while avatarRGB do
            local col=Color3.fromHSV(math.random(),1,1)
            local c=LocalPlayer.Character
            if c then
                local hl=c:FindFirstChild("FestivalRGB")
                if not hl then hl=Instance.new("Highlight") hl.Name="FestivalRGB" hl.FillTransparency=0.3 hl.Parent=c end
                hl.FillColor=col hl.OutlineColor=col
            end
            task.wait(0.12)
        end
        local c=LocalPlayer.Character
        if c and c:FindFirstChild("FestivalRGB") then c.FestivalRGB:Destroy() end
    end) end
end})

tabAvatar:AddSection({Name="Character RGB via Remote"})
local bodyRGB=false
tabAvatar:AddToggle({Name="Body Color RGB", Default=false, Callback=function(s)
    bodyRGB=s
    if s then task.spawn(function()
        while bodyRGB do
            local col=Color3.fromHSV(tick()%1,1,1)
            pcall(function()
                -- try common remotes
                fireRE("1Max1y", "ChangeHairColor2", col)
            end)
            task.wait(0.15)
        end
    end) end
end})

-- ==================== STAFF PANEL (ADVANCED) ====================
if IsStaff(LocalPlayer.Name) then
    local tabStaff = window:MakeTab({"Staff Panel", "rbxassetid://6034287594"})
    tabStaff:AddParagraph({"STAFF PANEL", "Advanced tools for Festival staff."})
    tabStaff:AddParagraph({"Role", GetRoleDisplay(LocalPlayer.Name)})
    tabStaff:AddParagraph({"Account", LocalPlayer.Name.." | "..tostring(LocalPlayer.UserId)})
    tabStaff:AddParagraph({"Online", tostring(#Players:GetPlayers()).." players"})

    tabStaff:AddSection({Name="Global Broadcast"})
    local staffMsg=""
    tabStaff:AddTextBox({Name="Message", PlaceholderText="Special message...", Callback=function(t) staffMsg=t end})
    tabStaff:AddButton({Name="Send Staff Broadcast", Callback=function()
        if staffMsg=="" then return end
        local msg="[FESTIVAL STAFF] "..LocalPlayer.Name.." ("..GetRoleDisplay(LocalPlayer.Name).."): "..staffMsg
        notify("Festival Staff", msg, 12)
        pcall(function()
            local old=roleDisplay
            re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", msg)
            task.wait(6)
            re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", old)
        end)
        pcall(function() SendChat(msg) end)
        print("[Staff]: "..msg)
    end})
    tabStaff:AddButton({Name="Announce My Role", Callback=function()
        notify("Festival", LocalPlayer.Name.." is "..GetRoleDisplay(LocalPlayer.Name), 6)
    end})

    tabStaff:AddSection({Name="Player Management"})
    local staffTarget=""
    tabStaff:AddTextBox({Name="Target Username", PlaceholderText="username", Callback=function(t) staffTarget=t end})
    tabStaff:AddButton({Name="Kick", Callback=function()
        if staffTarget=="" then return end
        local t=Players:FindFirstChild(staffTarget)
        if t then pcall(function() t:Kick("Kicked by Festival Staff ("..LocalPlayer.Name..")") end)
        else notify("Festival","Player not found",3) end
    end})
    tabStaff:AddButton({Name="Teleport to Target", Callback=function()
        local t=Players:FindFirstChild(staffTarget)
        if t and getHRP(t) and getHRP() then getHRP().CFrame=getHRP(t).CFrame+Vector3.new(0,3,0) end
    end})
    tabStaff:AddButton({Name="Bring Target", Callback=function()
        local t=Players:FindFirstChild(staffTarget)
        if t and getHRP(t) and getHRP() then getHRP(t).CFrame=getHRP().CFrame+Vector3.new(0,0,-5) end
    end})
    tabStaff:AddButton({Name="View Target", Callback=function()
        local t=Players:FindFirstChild(staffTarget)
        if t and getHum(t) then camera.CameraSubject=getHum(t) end
    end})
    tabStaff:AddButton({Name="Reset Camera", Callback=function() if getHum() then camera.CameraSubject=getHum() end end})
    tabStaff:AddButton({Name="Fling Target", Callback=function()
        local t=Players:FindFirstChild(staffTarget)
        if t then task.spawn(function() doFling(t,3) end) end
    end})

    tabStaff:AddSection({Name="Server Tools"})
    tabStaff:AddButton({Name="List All Players + Roles", Callback=function()
        local lines={}
        for _,p in ipairs(Players:GetPlayers()) do table.insert(lines, p.Name.." | "..GetRoleDisplay(p.Name)) end
        print(table.concat(lines,"\n"))
        notify("Players", tostring(#Players:GetPlayers()).." online", 4)
    end})
    tabStaff:AddButton({Name="Copy Join Link", Callback=function()
        local link=string.format("https://www.roblox.com/games/start?placeId=%s&gameInstanceId=%s", tostring(game.PlaceId), tostring(game.JobId))
        if setclipboard then setclipboard(link) end
        notify("Festival","Join link copied",3)
    end})
    tabStaff:AddButton({Name="Re-apply Role Name", Callback=function()
        local r=GetRoleDisplay(LocalPlayer.Name)
        pcall(function()
            re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", r)
            re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", colorRed)
        end)
    end})

    tabStaff:AddSection({Name="Ban System"})
    tabStaff:AddButton({Name="Refresh Ban List", Callback=function()
        LoadBanList()
        local c=0 for _ in pairs(BannedUsers) do c=c+1 end
        notify("Ban List", c.." entries", 4)
    end})
    tabStaff:AddButton({Name="Check Target Banned", Callback=function()
        if staffTarget=="" then return end
        notify("Ban Check", staffTarget.." = "..(IsBanned(staffTarget) and "BANNED" or "OK"), 4)
    end})

    if GetRole(LocalPlayer.Name)=="Owner" then
        tabStaff:AddSection({Name="Owner Only"})
        tabStaff:AddButton({Name="Force Webhook Log", Callback=function() pcall(SendJoinLog) notify("Owner","Webhook sent",3) end})
        tabStaff:AddButton({Name="Print Staff Table", Callback=function()
            print("=== OWNERS ===") for n in pairs(Staff.Owner) do print(n) end
            print("=== ADMINS ===") for n in pairs(Staff.Admin) do print(n) end
        end})
    end
end

-- ==================== HOUSES ====================
local tabHouses = window:MakeTab({"Houses", "home"})
local selectedHouse=nil
local function getHouses()
    local list={}
    local lots=Workspace:FindFirstChild("001_Lots")
    if lots then for _,v in ipairs(lots:GetChildren()) do if v.Name~="For Sale" and v:IsA("Model") then table.insert(list,v.Name) end end end
    return list
end
tabHouses:AddDropdown({Name="Select House", Options=getHouses(), Callback=function(v) selectedHouse=v end})
tabHouses:AddButton({Name="Refresh Houses", Callback=function() notify("Houses", tostring(#getHouses()).." found", 3) end})
tabHouses:AddButton({Name="TP to House", Callback=function()
    if not selectedHouse then return end
    local h=Workspace["001_Lots"]:FindFirstChild(tostring(selectedHouse))
    if h and getHRP() then getHRP().CFrame=CFrame.new(h.WorldPivot.Position) end
end})
tabHouses:AddButton({Name="TP to Safe", Callback=function()
    if not selectedHouse then return end
    local h=Workspace["001_Lots"]:FindFirstChild(tostring(selectedHouse))
    if h and h:FindFirstChild("HousePickedByPlayer") then
        local safe=h.HousePickedByPlayer.HouseModel:FindFirstChild("001_Safe")
        if safe and getHRP() then getHRP().CFrame=CFrame.new(safe.WorldPivot.Position) end
    end
end})
tabHouses:AddButton({Name="Unban All Houses", Callback=function()
    local removed=0
    for i=1,40 do
        local b=Workspace:FindFirstChild("BannedBlock"..i, true)
        if b and pcall(function() b:Destroy() end) then removed=removed+1 end
    end
    for _,d in pairs(Workspace:GetDescendants()) do
        if d.Name:match("BannedBlock") and pcall(function() d:Destroy() end) then removed=removed+1 end
    end
    notify("Festival", "Removed "..removed.." house bans", 4)
end})
local houseRGB=false
local hCols={Color3.new(1,0,0),Color3.new(0,1,0),Color3.new(0,0,1),Color3.new(1,1,0),Color3.new(0,1,1),Color3.new(1,0,1)}
tabHouses:AddToggle({Name="House RGB", Default=false, Callback=function(s)
    houseRGB=s
    if s then task.spawn(function()
        local remote=re:FindFirstChild("1Player1sHous1e")
        if not remote then return end
        while houseRGB do for _,c in ipairs(hCols) do if not houseRGB then break end pcall(function() remote:FireServer("ColorPickHouse",c) end) task.wait(0.7) end end
    end) end
end})

-- ==================== CAR ====================
local tabCar = window:MakeTab({"Car", "car"})
tabCar:AddButton({Name="Bring All Cars", Callback=function()
    for _,v in next, Workspace.Vehicles:GetChildren() do
        if v.PrimaryPart and getHRP() then pcall(function() v:SetPrimaryPartCFrame(LocalPlayer.Character:GetPrimaryPartCFrame()) end) end
    end
end})
tabCar:AddSection({Name="Music"})
local musicIDs={"71373562243752","138129019858244","138480372357526","122199933878670","74187181906707","82793916573031","107421761958790","91394092603440","113198957973421","81452315991527","93786060174790","74752089069476","131592235762789","132081774507495","124394293950763","83381647646350","16190782181","1841682637","3148329638","124928367733395"}
local function setMusic(id)
    if not id or id=="" then return end
    pcall(function() re:FindFirstChild("1Player1sCa1r"):FireServer("PickingCarMusicText", id) end)
    pcall(function() re:WaitForChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", id) end)
    pcall(function() re:WaitForChild("1Player1sHous1e"):FireServer("PickHouseMusicText", id) end)
end
tabCar:AddTextBox({Name="Music ID", PlaceholderText="ID", Callback=function(id) setMusic(id) end})
tabCar:AddDropdown({Name="Select Music", Options=musicIDs, Callback=function(id) setMusic(id) end})
local carRGB=false
local cCols={Color3.new(1,0,0),Color3.new(0,1,0),Color3.new(0,0,1),Color3.new(1,1,0),Color3.new(1,0,1),Color3.new(0,1,1)}
tabCar:AddToggle({Name="Car RGB", Default=false, Callback=function(s)
    carRGB=s
    if s then task.spawn(function()
        local remote=re:WaitForChild("1Player1sCa1r")
        while carRGB do for _,c in ipairs(cCols) do if not carRGB then break end remote:FireServer("PickingCarColor",c) task.wait(0.9) end end
    end) end
end})
tabCar:AddSection({Name="RGB Tools"})
local function fireToolCol(col)
    pcall(function()
        local gui=LocalPlayer:FindFirstChild("PlayerGui")
        if not gui then return end
        local tg=gui:FindFirstChild("ToolGui")
        if not tg then return end
        local ts=tg:FindFirstChild("ToolSettings")
        if not ts then return end
        local props=ts:FindFirstChild("Settings") and ts.Settings:FindFirstChild("PropsColor")
        if props and props:FindFirstChild("SetColor") then props.SetColor:FireServer(col) end
    end)
end
local function rndCol() return Color3.fromHSV(math.random(),1,1) end
for _,name in ipairs({"RGB Radio","RGB Megaphone","RGB Donut"}) do
    local flag=false
    tabCar:AddToggle({Name=name, Default=false, Callback=function(s)
        flag=s
        if s then task.spawn(function() while flag do fireToolCol(rndCol()) task.wait(0.08) end end) end
    end})
end

-- ==================== TELEPORTS ====================
local tabTP = window:MakeTab({"Teleports", "tp"})
local tps={
    {"Backstage",CFrame.new(192,4,272)},{"City Center",CFrame.new(136,4,117)},{"Crime Area",CFrame.new(-119,-28,235)},
    {"Abandoned House",CFrame.new(986,4,63)},{"Agency Portal",CFrame.new(672,4,-296)},{"Hideout",CFrame.new(505,-75,143)},
    {"School",CFrame.new(-312,4,211)},{"Brook Cafe",CFrame.new(161,8,52)},{"Spawn",CFrame.new(-26,4,-23)},
    {"Main Arch",CFrame.new(-589,141,-59)},{"Hospital",CFrame.new(-309,4,71)},{"Agency Base",CFrame.new(179,4,-464)},
    {"Secret Workshop",CFrame.new(0,4,-495)},{"Secret Room 2",CFrame.new(-343,4,-613)},{"Isolated Island",CFrame.new(-1925,23,127)},
    {"Hotel Plaza",CFrame.new(182,4,150)},{"Mountain 1",CFrame.new(-670,251,765)},{"Main Bank",CFrame.new(2.28,4.65,254.58)},
    {"Clothing Store",CFrame.new(-46.15,4.65,253.2)},{"Refuge",CFrame.new(-88.48,22.05,262.34)},{"Dental Clinic",CFrame.new(-53.58,22.15,265.61)},
    {"Cafe",CFrame.new(-97.12,4.65,254.99)},
}
local tpNames={} for _,l in ipairs(tps) do table.insert(tpNames,l[1]) end
tabTP:AddDropdown({Name="Location", Options=tpNames, Callback=function(name)
    for _,l in ipairs(tps) do if l[1]==name and getHRP() then getHRP().CFrame=l[2] break end end
end})

-- ==================== ITEMS ====================
local tabItems = window:MakeTab({"Items", "rbxassetid://11345510758"})
for _,n in ipairs({"BankGateKey","DuffleBagDiamonds","AgencyBook","KeyCardDarkGreen","Crystal","SwordGold","OldKey","Couch"}) do
    tabItems:AddButton({Name=n, Callback=function() giveTool(n) end})
end

-- ==================== HEAD SIT ====================
local tabHS = window:MakeTab({"Head Sit", "rbxassetid://14096597501"})
local hsTarget, hsConn = nil, nil
local function allNames() local t={} for _,p in pairs(Players:GetPlayers()) do table.insert(t,p.Name) end return t end
local hsDD=tabHS:AddDropdown({Name="Select Player", Options=allNames(), Callback=function(v) hsTarget=v end})
tabHS:AddToggle({Name="Head Sit", Default=false, Callback=function(s)
    local char=LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp=char:WaitForChild("HumanoidRootPart")
    local hum=char:WaitForChild("Humanoid")
    if not hsTarget or hsTarget=="" then return end
    local target=Players:FindFirstChild(hsTarget)
    if s then
        if target and target.Character then
            hum.Sit=true
            if hsConn then hsConn:Disconnect() end
            hsConn=RunService.Heartbeat:Connect(function()
                if target.Character and target.Character:FindFirstChild("Head") and hum.Sit then
                    hrp.CFrame=target.Character.Head.CFrame*CFrame.new(0,1.6,0.4)
                elseif hsConn then hsConn:Disconnect() hsConn=nil hum.Sit=false end
            end)
        end
    else
        if hsConn then hsConn:Disconnect() hsConn=nil end
        hum.Sit=false
    end
end})
tabHS:AddButton({Name="Refresh", Callback=function() pcall(function() hsDD:Refresh(allNames()) end) end})


-- ==================== FULL EXTRA FEATURES (Brookhaven port) ====================

-- Avatar extras
tabAvatar:AddSection({Name = "Avatar Size"})
tabAvatar:AddButton({
    Name = "Giant Avatar",
    Callback = function()
        local c = LocalPlayer.Character
        if not c then return end
        for _, p in pairs(c:GetDescendants()) do
            if p:IsA("BasePart") then
                p.Size = p.Size * 2.5
            end
        end
        notify("Festival", "Giant avatar (client)", 3)
    end
})
tabAvatar:AddButton({
    Name = "Tiny Avatar",
    Callback = function()
        local c = LocalPlayer.Character
        if not c then return end
        for _, p in pairs(c:GetDescendants()) do
            if p:IsA("BasePart") then
                p.Size = p.Size * 0.4
            end
        end
        notify("Festival", "Tiny avatar (client)", 3)
    end
})
tabAvatar:AddButton({
    Name = "Reset Avatar Size",
    Callback = function()
        local hum = getHum()
        if hum then
            pcall(function() hum:ChangeState(Enum.HumanoidStateType.Dead) end)
        end
        notify("Festival", "Reset via respawn recommended", 3)
    end
})

tabAvatar:AddSection({Name = "Name + Bio RGB"})
local nameBioRGB = false
tabAvatar:AddToggle({
    Name = "Name + Bio RGB",
    Default = false,
    Callback = function(s)
        nameBioRGB = s
        if s then
            task.spawn(function()
                while nameBioRGB do
                    local col = Color3.fromHSV(tick() % 1, 1, 1)
                    pcall(function() re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", col) end)
                    pcall(function() re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPBioColor", col) end)
                    task.wait(0.2)
                end
                -- restore festival colors
                pcall(function() re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", colorRed) end)
                pcall(function() re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPBioColor", colorBlack) end)
            end)
        end
    end
})

-- More troll methods
tabTroll:AddSection({Name = "All Kill Methods"})
tabTroll:AddButton({
    Name = "Kill All Couch",
    Callback = function()
        giveTool("Couch")
        task.wait(0.3)
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                task.spawn(function() doFling(p, 2) end)
                task.wait(0.35)
            end
        end
    end
})
tabTroll:AddButton({
    Name = "House Ban Kill All",
    Callback = function()
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Character then
                pcall(function()
                    re:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer("BanPlayerFromHouse", p, p.Character)
                end)
                task.spawn(function() doFling(p, 1.5) end)
                task.wait(0.25)
            end
        end
    end
})
tabTroll:AddButton({
    Name = "Fling Boat (selected)",
    Callback = function()
        if not selectedPlayer then return end
        local t = Players:FindFirstChild(selectedPlayer)
        if not t then return end
        -- try find boat and use velocity
        for _, v in pairs(Workspace:GetDescendants()) do
            if v.Name:lower():find("boat") or v.Name:lower():find("ship") then
                if v:IsA("BasePart") or (v:IsA("Model") and v.PrimaryPart) then
                    local part = v:IsA("BasePart") and v or v.PrimaryPart
                    if part and getHRP(t) then
                        pcall(function()
                            part.CFrame = getHRP(t).CFrame
                            part.Velocity = Vector3.new(0, 500, 0)
                        end)
                    end
                end
            end
        end
        doFling(t, 2)
    end
})
tabTroll:AddButton({
    Name = "Fling Boat All",
    Callback = function()
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                task.spawn(function()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Name:lower():find("boat") and (v:IsA("BasePart") or (v:IsA("Model") and v.PrimaryPart)) then
                            local part = v:IsA("BasePart") and v or v.PrimaryPart
                            if part and getHRP(p) then
                                pcall(function() part.CFrame = getHRP(p).CFrame part.Velocity = Vector3.new(0,400,0) end)
                            end
                        end
                    end
                    doFling(p, 1.5)
                end)
                task.wait(0.3)
            end
        end
    end
})
tabTroll:AddButton({
    Name = "Auto Fling All",
    Callback = function()
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                task.spawn(function() doFling(p, 3) end)
                task.wait(0.2)
            end
        end
    end
})
tabTroll:AddButton({
    Name = "Bring All Couch",
    Callback = function()
        giveTool("Couch")
        task.wait(0.2)
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and getHRP(p) and getHRP() then
                pcall(function() getHRP(p).CFrame = getHRP().CFrame + Vector3.new(math.random(-5,5), 0, math.random(-5,5)) end)
            end
        end
    end
})

tabTroll:AddSection({Name = "House / Door Troll"})
tabTroll:AddButton({
    Name = "Ring Doorbell (selected house player)",
    Callback = function()
        if not selectedPlayer then return end
        pcall(function()
            fireRE("1Player1sHous1e", "RingDoorbell")
            -- alternate remote patterns
            for _, r in pairs(re:GetChildren()) do
                if r.Name:lower():find("bell") or r.Name:lower():find("door") then
                    pcall(function() if r:IsA("RemoteEvent") then r:FireServer() end end)
                end
            end
        end)
        notify("Festival", "Doorbell attempt", 2)
    end
})
tabTroll:AddButton({
    Name = "Knock Door",
    Callback = function()
        pcall(function()
            fireRE("1Player1sHous1e", "KnockDoor")
        end)
    end
})
tabTroll:AddButton({
    Name = "Walk Through House Door",
    Callback = function()
        local c = LocalPlayer.Character
        if not c then return end
        for _, p in pairs(c:GetDescendants()) do
            if p:IsA("BasePart") then p.CanCollide = false end
        end
        task.wait(2)
        for _, p in pairs(c:GetDescendants()) do
            if p:IsA("BasePart") then p.CanCollide = true end
        end
    end
})

tabTroll:AddSection({Name = "Black Hole / Pull"})
tabTroll:AddButton({
    Name = "Black Hole (pull players to me)",
    Callback = function()
        local my = getHRP()
        if not my then return end
        for i = 1, 40 do
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and getHRP(p) then
                    local hrp = getHRP(p)
                    local dir = (my.Position - hrp.Position).Unit
                    hrp.Velocity = dir * 80
                    hrp.CFrame = hrp.CFrame:Lerp(my.CFrame * CFrame.new(0, 0, -3), 0.15)
                end
            end
            task.wait(0.05)
        end
    end
})
tabTroll:AddButton({
    Name = "Pull Selected Player",
    Callback = function()
        if not selectedPlayer then return end
        local t = Players:FindFirstChild(selectedPlayer)
        if t and getHRP(t) and getHRP() then
            for i = 1, 25 do
                getHRP(t).CFrame = getHRP(t).CFrame:Lerp(getHRP().CFrame * CFrame.new(0,0,-3), 0.2)
                task.wait(0.05)
            end
        end
    end
})

tabTroll:AddSection({Name = "Fire / Smoke"})
tabTroll:AddButton({
    Name = "Fire Player (selected)",
    Callback = function()
        if not selectedPlayer then return end
        local t = Players:FindFirstChild(selectedPlayer)
        if t and t.Character then
            pcall(function()
                local att = Instance.new("Attachment")
                att.Parent = t.Character:FindFirstChild("HumanoidRootPart") or t.Character.PrimaryPart
                local fire = Instance.new("Fire")
                fire.Size = 10
                fire.Heat = 10
                fire.Parent = att
            end)
        end
    end
})
tabTroll:AddButton({
    Name = "Smoke Player (selected)",
    Callback = function()
        if not selectedPlayer then return end
        local t = Players:FindFirstChild(selectedPlayer)
        if t and t.Character then
            pcall(function()
                local att = Instance.new("Attachment")
                att.Parent = t.Character:FindFirstChild("HumanoidRootPart") or t.Character.PrimaryPart
                local smoke = Instance.new("Smoke")
                smoke.Size = 8
                smoke.Opacity = 0.8
                smoke.Parent = att
            end)
        end
    end
})

-- Car extras
tabCar:AddSection({Name = "Car Extras"})
tabCar:AddButton({
    Name = "Remove All Cars",
    Callback = function()
        for _, v in pairs(Workspace.Vehicles:GetChildren()) do
            pcall(function() v:Destroy() end)
        end
        notify("Festival", "Cars removed (client)", 3)
    end
})
tabCar:AddButton({
    Name = "Spam Cars",
    Callback = function()
        for i = 1, 8 do
            pcall(function()
                -- try spawn via remote if exists
                fireRE("1Player1sCa1r", "SpawnCar")
            end)
            task.wait(0.2)
        end
    end
})
tabCar:AddButton({
    Name = "Spam Horn",
    Callback = function()
        for i = 1, 20 do
            pcall(function()
                fireRE("1Player1sCa1r", "Horn")
            end)
            task.wait(0.1)
        end
    end
})
local turboOn = false
tabCar:AddToggle({
    Name = "Turbo",
    Default = false,
    Callback = function(s)
        turboOn = s
        if s then
            task.spawn(function()
                while turboOn do
                    local h = getHum()
                    if h then h.WalkSpeed = 80 end
                    local hrp = getHRP()
                    if hrp then hrp.Velocity = hrp.CFrame.LookVector * 100 end
                    task.wait(0.1)
                end
                if getHum() then getHum().WalkSpeed = 16 end
            end)
        end
    end
})
tabCar:AddToggle({
    Name = "Bike RGB",
    Default = false,
    Callback = function(s)
        getgenv().FestivalBikeRGB = s
        if s then
            task.spawn(function()
                while getgenv().FestivalBikeRGB do
                    local col = Color3.fromHSV(tick()%1, 1, 1)
                    pcall(function() re:WaitForChild("1Player1sCa1r"):FireServer("NoMotorColor", col) end)
                    task.wait(0.15)
                end
            end)
        end
    end
})

-- Boombox / Audio
local tabAudio = window:MakeTab({"Audio FE", "radio"})
tabAudio:AddSection({Name = "Play Sound"})
local audioId = ""
tabAudio:AddTextBox({
    Name = "Audio ID",
    PlaceholderText = "Roblox audio asset id",
    Callback = function(t) audioId = t end
})
tabAudio:AddButton({
    Name = "Play Sound (local)",
    Callback = function()
        if audioId == "" then return end
        pcall(function()
            local s = Instance.new("Sound")
            s.SoundId = "rbxassetid://" .. tostring(audioId)
            s.Volume = 5
            s.Parent = Workspace
            s:Play()
            game:GetService("Debris"):AddItem(s, 60)
        end)
    end
})
tabAudio:AddButton({
    Name = "Play Sound on Character",
    Callback = function()
        if audioId == "" or not LocalPlayer.Character then return end
        pcall(function()
            local s = Instance.new("Sound")
            s.SoundId = "rbxassetid://" .. tostring(audioId)
            s.Volume = 3
            s.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or LocalPlayer.Character.PrimaryPart
            s:Play()
        end)
    end
})

-- Parts
local tabParts = window:MakeTab({"Parts", "box"})
tabParts:AddSection({Name = "Bring Parts"})
tabParts:AddButton({
    Name = "Bring Nearby Parts",
    Callback = function()
        local my = getHRP()
        if not my then return end
        local count = 0
        for _, p in pairs(Workspace:GetDescendants()) do
            if p:IsA("BasePart") and not p:IsDescendantOf(LocalPlayer.Character) then
                local d = (p.Position - my.Position).Magnitude
                if d < 80 and d > 2 then
                    pcall(function()
                        p.CFrame = my.CFrame * CFrame.new(math.random(-8,8), math.random(0,5), math.random(-8,8))
                    end)
                    count = count + 1
                    if count > 40 then break end
                end
            end
        end
        notify("Festival", "Brought " .. count .. " parts", 3)
    end
})
tabParts:AddButton({
    Name = "Load Bring Part Script",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/TihMhyyh"))()
        end)
    end
})

-- Client extras
local tabClient = window:MakeTab({"Client", "user"})
tabClient:AddSection({Name = "ESP Advanced"})
-- Reuse drawing if available
local boxESP, tracerESP, nameESP, distESP = false, false, false, false
tabClient:AddToggle({Name = "Box ESP (Highlight)", Default = false, Callback = function(s)
    boxESP = s
    if s and not espOn then
        -- enable basic highlight esp
        for _, p in pairs(Players:GetPlayers()) do makeESP(p) end
        espOn = true
    end
end})
tabClient:AddToggle({Name = "Name ESP", Default = false, Callback = function(s) nameESP = s end})
tabClient:AddToggle({Name = "Distance ESP", Default = false, Callback = function(s) distESP = s end})

tabClient:AddSection({Name = "ShiftLock / Misc"})
tabClient:AddButton({
    Name = "Toggle Shift Lock",
    Callback = function()
        pcall(function()
            local vim = game:GetService("VirtualInputManager")
            -- simulate shiftlock if possible via camera
            LocalPlayer.CameraMode = Enum.CameraMode.Classic
            UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
        end)
        notify("Festival", "Shift lock attempt", 2)
    end
})
tabClient:AddButton({
    Name = "Unban All Houses (Client)",
    Callback = function()
        local removed = 0
        for i = 1, 40 do
            local b = Workspace:FindFirstChild("BannedBlock" .. i, true)
            if b and pcall(function() b:Destroy() end) then removed = removed + 1 end
        end
        for _, d in pairs(Workspace:GetDescendants()) do
            if d.Name:match("BannedBlock") and pcall(function() d:Destroy() end) then removed = removed + 1 end
        end
        notify("Festival", "Removed " .. removed .. " bans", 4)
    end
})

print("[Festival Hub] Extra features block loaded")

-- ==================== UNIVERSAL ====================
local tabUni = window:MakeTab({"Universal", "rbxassetid://12285970187"})
tabUni:AddButton({Name="NINJA X ADMIN", Callback=function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Lindao10/Kxkckxkxkxkxkxkxlxllxkxkzlxlxx/refs/heads/main/NINJA%20X%20ADMIN.txt"))() end})
tabUni:AddButton({Name="Bring Part", Callback=function() loadstring(game:HttpGet("https://pastebin.com/raw/TihMhyyh"))() end})
tabUni:AddButton({Name="Fly Gui V3", Callback=function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))() end})
tabUni:AddButton({Name="Nameless Admin", Callback=function() loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))() end})
tabUni:AddButton({Name="Telekinesis", Callback=function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md",true))() end})
tabUni:AddButton({Name="TP Tool", Callback=function() loadstring(game:HttpGet("https://raw.githubusercontent.com/err0r129/KptHadesBlair/main/Bao.lua"))() end})

print("[Festival Hub] V7 MAX LOADED | Role: "..GetRoleDisplay(LocalPlayer.Name).." | "..LocalPlayer.Name)
