-- Festival Hub | Brookhaven RP
-- v4 - Staff + Features

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- ==================== STAFF SYSTEM ====================
local Staff = {
    Owner = {
        ["Kaidor2oo8"] = true,
        ["kaidor2oo8"] = true,
    },
    Admin = {
        ["hiimsamet2"] = true,
        ["Hiimsamet2"] = true,
    },
    Developer = {
        -- ["DevName1"] = true,
    }
}

local function GetRole(playerName)
    local lower = string.lower(playerName or "")
    for name, _ in pairs(Staff.Owner) do
        if string.lower(name) == lower then return "Owner" end
    end
    for name, _ in pairs(Staff.Admin) do
        if string.lower(name) == lower then return "Admin" end
    end
    for name, _ in pairs(Staff.Developer) do
        if string.lower(name) == lower then return "Developer" end
    end
    return "User"
end

local function GetRoleDisplay(playerName)
    local role = GetRole(playerName)
    if role == "Owner" then return "Festival Owner"
    elseif role == "Admin" then return "Festival Admin"
    elseif role == "Developer" then return "Festival Developer"
    end
    return "Festival User"
end

local function IsStaff(playerName)
    return GetRole(playerName) ~= "User"
end

-- ==================== BAN SYSTEM ====================
local BanListURL = "https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/banlist.txt"
local BannedUsers = {}

local function LoadBanList()
    local success, result = pcall(function()
        return game:HttpGet(BanListURL)
    end)
    if success and result then
        BannedUsers = {}
        for line in result:gmatch("[^\r\n]+") do
            local name = line:match("^%s*(.-)%s*$")
            if name and name ~= "" then
                BannedUsers[string.lower(name)] = true
            end
        end
    end
end

local function IsBanned(playerName)
    return BannedUsers[string.lower(playerName or "")] == true
end

pcall(LoadBanList)

if IsBanned(LocalPlayer.Name) then
    LocalPlayer:Kick("You are banned from Festival Hub.")
    return
end


-- ==================== DISCORD WEBHOOK LOG ====================
local WEBHOOK_URL = "https://discord.com/api/webhooks/1555873586235965540/8byfXFIyNPtonCrVguw8J2qdUL_tMw1aqawxLY0S-yJf6XhA9d38hKireGY_YKH46yaE"

local function SendJoinLog()
    local HttpService = game:GetService("HttpService")
    local MarketplaceService = game:GetService("MarketplaceService")
    
    local playerName = LocalPlayer.Name
    local userId = LocalPlayer.UserId
    local displayName = LocalPlayer.DisplayName
    local placeId = game.PlaceId
    local jobId = game.JobId
    local role = GetRoleDisplay(playerName)
    
    local gameName = "Brookhaven RP"
    pcall(function()
        gameName = MarketplaceService:GetProductInfo(placeId).Name
    end)
    
    local executor = "Unknown"
    pcall(function()
        if identifyexecutor then
            executor = identifyexecutor()
        elseif getexecutorname then
            executor = getexecutorname()
        end
    end)
    
    local joinLink = string.format("https://www.roblox.com/games/start?placeId=%s&gameInstanceId=%s", tostring(placeId), tostring(jobId))
    local profileLink = "https://www.roblox.com/users/" .. tostring(userId) .. "/profile"
    local avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(userId) .. "&width=420&height=420&format=png"
    
    local playerCount = #Players:GetPlayers()
    
    local embed = {
        title = "Festival Hub - Player Joined",
        color = 15158332,
        thumbnail = {url = avatarUrl},
        fields = {
            {name = "Player", value = displayName .. " (@" .. playerName .. ")", inline = true},
            {name = "UserId", value = tostring(userId), inline = true},
            {name = "Role", value = role, inline = true},
            {name = "Profile", value = "[Open Profile](" .. profileLink .. ")", inline = true},
            {name = "Executor", value = executor, inline = true},
            {name = "Players in Server", value = tostring(playerCount), inline = true},
            {name = "Game", value = gameName, inline = false},
            {name = "PlaceId", value = tostring(placeId), inline = true},
            {name = "JobId", value = tostring(jobId), inline = true},
            {name = "Join Server", value = "[Click to Join](" .. joinLink .. ")", inline = false},
        },
        footer = {text = "Festival Hub • " .. os.date("%d/%m/%Y %H:%M:%S")},
    }
    
    local body = HttpService:JSONEncode({
        username = "Festival Hub Logs",
        avatar_url = "https://www.roblox.com/headshot-thumbnail/image?userId=1&width=420&height=420&format=png",
        embeds = {embed}
    })
    
    local requestFunc = (syn and syn.request) or http_request or request or (fluxus and fluxus.request)
    if requestFunc then
        pcall(function()
            requestFunc({
                Url = WEBHOOK_URL,
                Method = "POST",
                Headers = {["Content-Type"] = "application/json"},
                Body = body
            })
        end)
    else
        pcall(function()
            HttpService:PostAsync(WEBHOOK_URL, body, Enum.HttpContentType.ApplicationJson)
        end)
    end
end

task.spawn(function()
    task.wait(2) -- small delay so everything loads
    pcall(SendJoinLog)
end)


-- ==================== CUSTOM BACKGROUND ====================
local BackgroundID = 1235887402  -- change this ID anytime

-- ==================== BEAUTIFUL INTRO ====================
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FestivalIntro"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
bg.BorderSizePixel = 0
bg.Parent = screenGui

-- Background image
local bgImage = Instance.new("ImageLabel")
bgImage.Size = UDim2.new(1, 0, 1, 0)
bgImage.BackgroundTransparency = 1
bgImage.Image = "rbxassetid://" .. tostring(BackgroundID)
bgImage.ImageTransparency = 0.35
bgImage.ScaleType = Enum.ScaleType.Crop
bgImage.Parent = bg

local glow = Instance.new("Frame")
glow.Size = UDim2.new(0, 420, 0, 420)
glow.Position = UDim2.new(0.5, -210, 0.38, -210)
glow.BackgroundColor3 = Color3.fromRGB(180, 20, 30)
glow.BackgroundTransparency = 0.82
glow.BorderSizePixel = 0
glow.Parent = bg
local glowCorner = Instance.new("UICorner")
glowCorner.CornerRadius = UDim.new(1, 0)
glowCorner.Parent = glow

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 500, 0, 70)
title.Position = UDim2.new(0.5, -250, 0.32, 0)
title.BackgroundTransparency = 1
title.Text = "FESTIVAL HUB"
title.TextColor3 = Color3.fromRGB(255, 45, 55)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.TextTransparency = 1
title.Parent = bg

local sub = Instance.new("TextLabel")
sub.Size = UDim2.new(0, 400, 0, 32)
sub.Position = UDim2.new(0.5, -200, 0.42, 0)
sub.BackgroundTransparency = 1
sub.Text = "Brookhaven RP"
sub.TextColor3 = Color3.fromRGB(220, 220, 230)
sub.TextScaled = true
sub.Font = Enum.Font.GothamMedium
sub.TextTransparency = 1
sub.Parent = bg

local roleLabel = Instance.new("TextLabel")
roleLabel.Size = UDim2.new(0, 400, 0, 26)
roleLabel.Position = UDim2.new(0.5, -200, 0.48, 0)
roleLabel.BackgroundTransparency = 1
roleLabel.Text = GetRoleDisplay(LocalPlayer.Name)
roleLabel.TextColor3 = Color3.fromRGB(255, 90, 100)
roleLabel.TextScaled = true
roleLabel.Font = Enum.Font.GothamSemibold
roleLabel.TextTransparency = 1
roleLabel.Parent = bg

local barBg = Instance.new("Frame")
barBg.Size = UDim2.new(0, 320, 0, 8)
barBg.Position = UDim2.new(0.5, -160, 0.58, 0)
barBg.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
barBg.BorderSizePixel = 0
barBg.Parent = bg
local barCorner = Instance.new("UICorner")
barCorner.CornerRadius = UDim.new(1, 0)
barCorner.Parent = barBg

local barFill = Instance.new("Frame")
barFill.Size = UDim2.new(0, 0, 1, 0)
barFill.BackgroundColor3 = Color3.fromRGB(220, 30, 40)
barFill.BorderSizePixel = 0
barFill.Parent = barBg
local fillCorner = Instance.new("UICorner")
fillCorner.CornerRadius = UDim.new(1, 0)
fillCorner.Parent = barFill

local loadText = Instance.new("TextLabel")
loadText.Size = UDim2.new(0, 300, 0, 24)
loadText.Position = UDim2.new(0.5, -150, 0.63, 0)
loadText.BackgroundTransparency = 1
loadText.Text = "Loading..."
loadText.TextColor3 = Color3.fromRGB(160, 160, 180)
loadText.TextScaled = true
loadText.Font = Enum.Font.Gotham
loadText.TextTransparency = 1
loadText.Parent = bg

TweenService:Create(title, TweenInfo.new(0.7, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
task.wait(0.15)
TweenService:Create(sub, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
task.wait(0.1)
TweenService:Create(roleLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
TweenService:Create(loadText, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()

local messages = {"Loading modules...", "Preparing UI...", "Almost ready...", "Welcome"}
for i = 1, 100 do
    local progress = i / 100
    barFill:TweenSize(UDim2.new(progress, 0, 1, 0), "Out", "Quad", 0.04, true)
    if i == 25 then loadText.Text = messages[1]
    elseif i == 50 then loadText.Text = messages[2]
    elseif i == 75 then loadText.Text = messages[3]
    elseif i == 95 then loadText.Text = messages[4]
    end
    task.wait(0.018)
end

task.wait(0.35)

for _, obj in ipairs({title, sub, roleLabel, loadText, barBg, glow, bgImage}) do
    if obj:IsA("TextLabel") then
        TweenService:Create(obj, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
    elseif obj:IsA("ImageLabel") then
        TweenService:Create(obj, TweenInfo.new(0.4), {ImageTransparency = 1}):Play()
    else
        TweenService:Create(obj, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
    end
end
TweenService:Create(bg, TweenInfo.new(0.45), {BackgroundTransparency = 1}):Play()
task.wait(0.5)
screenGui:Destroy()

-- ==================== RP NAME + COLORS ====================
local re = ReplicatedStorage:WaitForChild("RE")
local colorRed = Color3.fromRGB(220, 30, 40)
local colorBlack = Color3.fromRGB(10, 10, 12)

local roleDisplay = GetRoleDisplay(LocalPlayer.Name)

pcall(function()
    re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", colorRed)
end)
pcall(function()
    re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", roleDisplay)
end)
pcall(function()
    re:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPBioColor", colorBlack)
end)
pcall(function()
    re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayBio", "Thank you for using Festival Hub")
end)

-- ==================== UI LIBRARY ====================
local uiSource = game:HttpGet("https://raw.githubusercontent.com/Lindao10/Redzlib-cor-neo/refs/heads/main/RedzHubUI_NeoBlack_COMPLETO_EDITADO.lua")
local library = loadstring(uiSource)()

local window = library:MakeWindow({
    Title = "Festival Hub | Brookhaven RP",
    SubTitle = "by Festival Team",
    SaveFolder = "FestivalConfig"
})

window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://464093673",
        BackgroundTransparency = 0,
        BackgroundColor3 = Color3.fromRGB(180, 25, 35),
    },
    Corner = {CornerRadius = UDim.new(0, 12)},
})

-- ==================== INFO TAB ====================
local tabInfo = window:MakeTab({"Info", "rbxassetid://464093673"})

tabInfo:AddDiscordInvite({
    Name = "Festival | Community",
    Description = "Join for updates and more.",
    Logo = "rbxassetid://6239938337",
    Invite = "https://discord.gg/d9DSXEuAt",
})

tabInfo:AddParagraph({"Festival Hub", "Made for fun and trolling in Brookhaven RP."})
tabInfo:AddParagraph({"Credits", "Script maintained by Festival Team."})
tabInfo:AddParagraph({"Game", "Brookhaven RP"})
tabInfo:AddParagraph({"Version", "V4 - Staff + Features"})
tabInfo:AddParagraph({"Your Role", roleDisplay})

-- ==================== TROLL PLAYERS TAB ====================
local tabTroll = window:MakeTab({"Troll Players", "rbxassetid://12921294273"})

local playerList = {}
local selectedPlayer = nil
local camera = workspace.CurrentCamera

for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        table.insert(playerList, plr.Name)
    end
end

Players.PlayerAdded:Connect(function(plr)
    if plr ~= LocalPlayer then
        table.insert(playerList, plr.Name)
        if PlayerDropdown then
            pcall(function() PlayerDropdown:SetOptions(playerList) end)
        end
    end
end)

Players.PlayerRemoving:Connect(function(plr)
    for i, name in ipairs(playerList) do
        if name == plr.Name then
            table.remove(playerList, i)
            break
        end
    end
    if PlayerDropdown then
        pcall(function() PlayerDropdown:SetOptions(playerList) end)
    end
end)

local PlayerDropdown = tabTroll:AddDropdown({
    Name = "Select Player",
    Options = playerList,
    Callback = function(value)
        selectedPlayer = value
    end
})

tabTroll:AddButton({
    Name = "Refresh Players",
    Callback = function()
        local list = {}
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= LocalPlayer then
                table.insert(list, plr.Name)
            end
        end
        playerList = list
        pcall(function() PlayerDropdown:SetOptions(playerList) end)
    end
})

local viewing = false
tabTroll:AddToggle({
    Name = "View Player",
    Callback = function(state)
        viewing = state
        if viewing and selectedPlayer then
            local target = Players:FindFirstChild(selectedPlayer)
            if target and target.Character and target.Character:FindFirstChild("Humanoid") then
                task.spawn(function()
                    while viewing do
                        local t = Players:FindFirstChild(selectedPlayer)
                        if not t or not t.Character or not t.Character:FindFirstChild("Humanoid") then break end
                        camera.CameraSubject = t.Character.Humanoid
                        task.wait()
                    end
                end)
            end
        else
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                camera.CameraSubject = LocalPlayer.Character.Humanoid
            end
        end
    end
})

tabTroll:AddButton({
    Name = "Teleport to Player",
    Callback = function()
        if not selectedPlayer then return end
        local target = Players:FindFirstChild(selectedPlayer)
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
            end
        end
    end
})


tabTroll:AddSection({Name = "Sign Troll"})

local signTarget = nil
local signText = ""

local function GetPlayersWithSign()
    local list = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local has = false
            if plr.Backpack and plr.Backpack:FindFirstChild("Sign") then has = true end
            if plr.Character and plr.Character:FindFirstChild("Sign") then has = true end
            if has then table.insert(list, plr.Name) end
        end
    end
    return list
end

local SignDropdown = tabTroll:AddDropdown({
    Name = "Select Player (with Sign)",
    Options = GetPlayersWithSign(),
    Default = "",
    Callback = function(value)
        signTarget = value
    end
})

tabTroll:AddButton({
    Name = "Refresh Sign List",
    Callback = function()
        pcall(function() SignDropdown:SetOptions(GetPlayersWithSign()) end)
    end
})

tabTroll:AddTextBox({
    Name = "Sign Text",
    PlaceholderText = "Type text to put on their sign",
    Callback = function(text)
        signText = text
    end
})

tabTroll:AddButton({
    Name = "Edit Sign",
    Callback = function()
        if not signTarget or signText == "" then return end
        local target = Players:FindFirstChild(signTarget)
        if not target or not target.Character then return end
        local sign = target.Character:FindFirstChild("Sign")
        if not sign then
            warn("Player does not have Sign equipped")
            return
        end
        local toolSound = sign:FindFirstChild("ToolSound")
        if toolSound then
            pcall(function()
                toolSound:FireServer("Sign", "SignWords", signText)
            end)
        end
    end
})

tabTroll:AddSection({Name = "Kill Methods"})

-- ESP
local espEnabled = false
local espConnections = {}

local function GetDistance(char)
    if char and char:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return math.floor((char.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    return 0
end

local function CreateESP(player)
    if player == LocalPlayer then return end
    local function onChar(char)
        if not char:FindFirstChild("Head") then char:WaitForChild("Head") end
        if not char:FindFirstChildOfClass("Humanoid") then char:WaitForChild("Humanoid") end
        if char:FindFirstChild("ESP_Highlight") then return end

        local highlight = Instance.new("Highlight")
        highlight.Name = "ESP_Highlight"
        highlight.FillColor = Color3.fromRGB(220, 40, 50)
        highlight.FillTransparency = 0.55
        highlight.OutlineTransparency = 0
        highlight.Parent = char

        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESP_Info"
        billboard.Size = UDim2.new(0, 160, 0, 32)
        billboard.StudsOffset = Vector3.new(0, 3.2, 0)
        billboard.Adornee = char.Head
        billboard.AlwaysOnTop = true
        billboard.Parent = char

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextStrokeTransparency = 0.4
        label.TextScaled = true
        label.Font = Enum.Font.GothamMedium
        label.Parent = billboard

        local lastUpdate = 0
        RunService.Heartbeat:Connect(function()
            if espEnabled and tick() - lastUpdate > 0.8 then
                if char and char:FindFirstChildOfClass("Humanoid") and char.PrimaryPart then
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    label.Text = string.format("%s | HP: %d | %dm", player.Name, math.floor(hum.Health), GetDistance(char))
                end
                lastUpdate = tick()
            end
        end)
    end

    if player.Character then onChar(player.Character) end
    player.CharacterAdded:Connect(function(c)
        if espEnabled then onChar(c) end
    end)
end

local function RemoveESP(player)
    if player.Character then
        if player.Character:FindFirstChild("ESP_Highlight") then
            player.Character.ESP_Highlight:Destroy()
        end
        if player.Character:FindFirstChild("ESP_Info") then
            player.Character.ESP_Info:Destroy()
        end
    end
end

local function EnableESP()
    espEnabled = true
    for _, plr in pairs(Players:GetPlayers()) do
        CreateESP(plr)
        espConnections[plr] = plr.CharacterAdded:Connect(function()
            if espEnabled then CreateESP(plr) end
        end)
    end
    espConnections.PlayerAdded = Players.PlayerAdded:Connect(function(plr)
        if espEnabled then
            CreateESP(plr)
            espConnections[plr] = plr.CharacterAdded:Connect(function()
                CreateESP(plr)
            end)
        end
    end)
end

local function DisableESP()
    espEnabled = false
    for _, plr in pairs(Players:GetPlayers()) do
        RemoveESP(plr)
        if espConnections[plr] then
            espConnections[plr]:Disconnect()
            espConnections[plr] = nil
        end
    end
    if espConnections.PlayerAdded then
        espConnections.PlayerAdded:Disconnect()
        espConnections.PlayerAdded = nil
    end
end

tabTroll:AddToggle({
    Name = "ESP Players",
    Default = false,
    Callback = function(state)
        if state then EnableESP() else DisableESP() end
    end
})

local flingToggle = false
tabTroll:AddToggle({
    Name = "Fling Couch",
    Description = "Fling selected player with couch",
    Default = false,
    Callback = function(state)
        flingToggle = state
        if not state or not selectedPlayer then return end
        local target = Players:FindFirstChild(selectedPlayer)
        if not target or not target.Character then return end

        local myChar = LocalPlayer.Character
        if not myChar then return end
        local myHRP = myChar:FindFirstChild("HumanoidRootPart")
        local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")
        if not myHRP or not targetHRP then return end

        local humanoid = myChar:FindFirstChildOfClass("Humanoid")
        local originalCF = myHRP.CFrame

        local tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
        if tool then tool.Parent = myChar end

        workspace.FallenPartsDestroyHeight = 0/0
        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlingForce"
        bv.Velocity = Vector3.new(9e9, 9e9, 9e9)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Parent = myHRP

        humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        humanoid.PlatformStand = false
        camera.CameraSubject = targetHRP

        task.spawn(function()
            local angle = 0
            while flingToggle do
                if not target or not target.Character or not target.Character:FindFirstChildOfClass("Humanoid") then break end
                if target.Character:FindFirstChildOfClass("Humanoid").Sit then break end
                angle = angle + 50
                myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(angle), 0, 0)
                myHRP.Velocity = Vector3.new(9e9, 9e9, 9e9)
                myHRP.RotVelocity = Vector3.new(9e9, 9e9, 9e9)
                task.wait()
            end
            flingToggle = false
            bv:Destroy()
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            humanoid.PlatformStand = false
            myHRP.CFrame = originalCF
            camera.CameraSubject = humanoid
            for _, part in pairs(myChar:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Velocity = Vector3.zero
                    part.RotVelocity = Vector3.zero
                end
            end
            humanoid:UnequipTools()
        end)
    end
})

tabTroll:AddButton({
    Name = "Give Couch",
    Callback = function()
        pcall(function()
            ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
        end)
    end
})

tabTroll:AddButton({
    Name = "Fling All",
    Description = "Fling every player",
    Callback = function()
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                local myChar = LocalPlayer.Character
                if not myChar then continue end
                local myHRP = myChar:FindFirstChild("HumanoidRootPart")
                local humanoid = myChar:FindFirstChildOfClass("Humanoid")
                local targetHRP = plr.Character.HumanoidRootPart
                if myHRP and humanoid then
                    local tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    if tool then tool.Parent = myChar end
                    workspace.FallenPartsDestroyHeight = 0/0
                    local bv = Instance.new("BodyVelocity")
                    bv.Name = "FlingForce"
                    bv.Velocity = Vector3.new(9e9, 9e9, 9e9)
                    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bv.Parent = myHRP
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                    humanoid.PlatformStand = false
                    camera.CameraSubject = targetHRP
                    task.spawn(function()
                        local angle = 0
                        local endTime = tick() + 3
                        while tick() < endTime do
                            angle = angle + 50
                            myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(angle), 0, 0)
                            myHRP.Velocity = Vector3.new(9e9, 9e9, 9e9)
                            myHRP.RotVelocity = Vector3.new(9e9, 9e9, 9e9)
                            task.wait()
                        end
                        bv:Destroy()
                        humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                        humanoid.PlatformStand = false
                        camera.CameraSubject = humanoid
                        for _, part in pairs(myChar:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.Velocity = Vector3.zero
                                part.RotVelocity = Vector3.zero
                            end
                        end
                    end)
                    task.wait(0.5)
                end
            end
        end
    end
})

tabTroll:AddButton({
    Name = "House Ban Kill",
    Description = "Ban player from house then kill",
    Callback = function()
        if not selectedPlayer then
            warn("No player selected")
            return
        end
        -- simplified version of house ban kill from original
        local target = Players:FindFirstChild(selectedPlayer)
        if not target then return end
        pcall(function()
            ReplicatedStorage.RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer("BanPlayerFromHouse", target, target.Character)
        end)
    end
})

tabTroll:AddToggle({
    Name = "Auto Fling",
    Default = false,
    Callback = function(state)
        getgenv().FestivalAutoFling = state
        if state and selectedPlayer then
            task.spawn(function()
                while getgenv().FestivalAutoFling do
                    local target = Players:FindFirstChild(selectedPlayer)
                    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        local myChar = LocalPlayer.Character
                        if myChar and myChar:FindFirstChild("HumanoidRootPart") then
                            myChar.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1.5, 0)
                            myChar.HumanoidRootPart.Velocity = Vector3.new(9e9, 9e9, 9e9)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end
})

-- ==================== STAFF PANEL ====================
if IsStaff(LocalPlayer.Name) then
    local tabStaff = window:MakeTab({"Staff Panel", "rbxassetid://6034287594"})

    tabStaff:AddParagraph({"Staff Access", "You have staff privileges on Festival Hub."})
    tabStaff:AddParagraph({"Your Role", GetRoleDisplay(LocalPlayer.Name)})
    tabStaff:AddParagraph({"Account", LocalPlayer.Name})

    tabStaff:AddSection({Name = "Global Broadcast"})

    local globalMsg = ""
    tabStaff:AddTextBox({
        Name = "Message",
        PlaceholderText = "Type special message for Festival users...",
        Callback = function(text)
            globalMsg = text
        end
    })

    tabStaff:AddButton({
        Name = "Send Staff Message",
        Callback = function()
            if globalMsg == "" then return end
            -- Special message system (not normal chat / not bio)
            local msg = "[FESTIVAL STAFF] " .. LocalPlayer.Name .. " (" .. GetRoleDisplay(LocalPlayer.Name) .. "): " .. globalMsg
            
            -- Method 1: Notification style for local
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Festival Staff",
                    Text = msg,
                    Duration = 8
                })
            end)

            -- Method 2: Fire a custom remote if exists, otherwise use a safe broadcast
            pcall(function()
                -- Use RolePlayName temporarily as broadcast channel without touching bio permanently
                local oldName = roleDisplay
                re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", msg)
                task.wait(4)
                re:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", oldName)
            end)

            print("[Festival Staff Message Sent]: " .. msg)
        end
    })

    tabStaff:AddSection({Name = "Ban System"})
    tabStaff:AddParagraph({"Info", "Bans load from GitHub banlist.txt (one username per line)."})

    local banTarget = ""
    tabStaff:AddTextBox({
        Name = "Username",
        PlaceholderText = "Enter username to kick",
        Callback = function(text)
            banTarget = text
        end
    })

    tabStaff:AddButton({
        Name = "Kick Player",
        Callback = function()
            if banTarget == "" then return end
            local target = Players:FindFirstChild(banTarget)
            if target then
                pcall(function()
                    target:Kick("Banned by Festival Staff")
                end)
            end
        end
    })

    tabStaff:AddButton({
        Name = "Refresh Ban List",
        Callback = function()
            LoadBanList()
            print("[Festival] Ban list refreshed.")
        end
    })
end

-- ==================== HOUSES TAB ====================
local tabHouses = window:MakeTab({"Houses", "home"})

local selectedHouse = nil
local function GetHouseList()
    local list = {}
    local lots = workspace:FindFirstChild("001_Lots")
    if lots then
        for _, v in ipairs(lots:GetChildren()) do
            if v.Name ~= "For Sale" and v:IsA("Model") then
                table.insert(list, v.Name)
            end
        end
    end
    return list
end

tabHouses:AddDropdown({
    Name = "Select House",
    Options = GetHouseList(),
    Default = "...",
    Callback = function(value)
        selectedHouse = value
    end
})

tabHouses:AddButton({
    Name = "Refresh House List",
    Callback = function()
        print("Houses found:", #GetHouseList())
    end
})

tabHouses:AddButton({
    Name = "Teleport to House",
    Callback = function()
        if not selectedHouse then return end
        local house = workspace["001_Lots"]:FindFirstChild(tostring(selectedHouse))
        if house and LocalPlayer.Character then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(house.WorldPivot.Position)
        end
    end
})

tabHouses:AddButton({
    Name = "Teleport to Safe",
    Callback = function()
        if not selectedHouse then return end
        local house = workspace["001_Lots"]:FindFirstChild(tostring(selectedHouse))
        if house and house:FindFirstChild("HousePickedByPlayer") then
            local safe = house.HousePickedByPlayer.HouseModel:FindFirstChild("001_Safe")
            if safe and LocalPlayer.Character then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(safe.WorldPivot.Position)
            end
        end
    end
})

tabHouses:AddSection({Name = "Unban"})

tabHouses:AddButton({
    Name = "Unban All Houses",
    Description = "Remove BannedBlock from all houses",
    Callback = function()
        local removed = 0
        for i = 1, 40 do
            local block = workspace:FindFirstChild("BannedBlock" .. i, true)
            if block then
                if pcall(function() block:Destroy() end) then
                    removed = removed + 1
                end
            end
        end
        for _, desc in pairs(workspace:GetDescendants()) do
            if desc.Name:match("BannedBlock") then
                if pcall(function() desc:Destroy() end) then
                    removed = removed + 1
                end
            end
        end
        print("[Festival] Removed " .. removed .. " house bans")
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Festival Hub",
                Text = "Removed " .. removed .. " house bans",
                Duration = 4
            })
        end)
    end
})


local houseRGB = false
local houseColors = {
    Color3.new(1,0,0), Color3.new(0,1,0), Color3.new(0,0,1),
    Color3.new(1,1,0), Color3.new(0,1,1), Color3.new(1,0,1)
}

tabHouses:AddToggle({
    Name = "House RGB",
    Default = false,
    Callback = function(state)
        houseRGB = state
        if state then
            task.spawn(function()
                local remote = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild("1Player1sHous1e")
                if not remote then return end
                while houseRGB do
                    for _, col in ipairs(houseColors) do
                        if not houseRGB then break end
                        pcall(function()
                            remote:FireServer("ColorPickHouse", col)
                        end)
                        task.wait(0.8)
                    end
                end
            end)
        end
    end
})

-- ==================== CARS TAB ====================
local tabCar = window:MakeTab({"Car", "car"})

tabCar:AddParagraph({"Info", "Recommend using music options twice for best result."})

tabCar:AddButton({
    Name = "Bring All Cars",
    Callback = function()
        for _, vehicle in next, workspace.Vehicles:GetChildren() do
            if vehicle.PrimaryPart then
                vehicle:SetPrimaryPartCFrame(LocalPlayer.Character:GetPrimaryPartCFrame())
            end
        end
    end
})

tabCar:AddSection({Name = "Music for Car & House"})

local musicIDs = {
    "71373562243752", "138129019858244", "138480372357526", "122199933878670",
    "74187181906707", "82793916573031", "107421761958790", "91394092603440",
    "113198957973421", "81452315991527", "93786060174790", "74752089069476",
    "131592235762789", "132081774507495", "124394293950763", "83381647646350",
    "16190782181", "1841682637", "3148329638", "124928367733395"
}

local function SetCarMusic(id)
    if id and id ~= "" then
        pcall(function()
            ReplicatedStorage.RE:FindFirstChild("1Player1sCa1r"):FireServer("PickingCarMusicText", id)
        end)
    end
end

local function SetScooterMusic(id)
    if id and id ~= "" then
        pcall(function()
            ReplicatedStorage:WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", id)
        end)
    end
end

local function SetHouseMusic(id)
    if id and id ~= "" then
        pcall(function()
            ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer("PickHouseMusicText", id)
        end)
    end
end

tabCar:AddTextBox({
    Name = "Music ID (Gamepass)",
    PlaceholderText = "Enter Music ID",
    Callback = function(id)
        SetCarMusic(id)
        SetScooterMusic(id)
        SetHouseMusic(id)
    end
})

tabCar:AddDropdown({
    Name = "Select Music",
    Options = musicIDs,
    Callback = function(id)
        SetCarMusic(id)
        SetScooterMusic(id)
        SetHouseMusic(id)
    end
})

tabCar:AddParagraph({"Note", "Music works on all cars and houses."})

local carRGB = false
local carColors = {
    Color3.new(1,0,0), Color3.new(0,1,0), Color3.new(0,0,1),
    Color3.new(1,1,0), Color3.new(1,0,1), Color3.new(0,1,1)
}

tabCar:AddToggle({
    Name = "Car RGB",
    Default = false,
    Callback = function(state)
        carRGB = state
        if state then
            task.spawn(function()
                local remote = ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Player1sCa1r")
                while carRGB do
                    for _, col in ipairs(carColors) do
                        if not carRGB then break end
                        remote:FireServer("PickingCarColor", col)
                        task.wait(1)
                    end
                end
            end)
        end
    end
})


tabCar:AddSection({Name = "RGB Tools"})

local function getRandomColor()
    return Color3.fromHSV(math.random(), 1, 1)
end

local radioRGB = false
tabCar:AddToggle({
    Name = "RGB Radio",
    Default = false,
    Callback = function(state)
        radioRGB = state
        if state then
            task.spawn(function()
                while radioRGB do
                    local col = getRandomColor()
                    pcall(function()
                        local gui = LocalPlayer:FindFirstChild("PlayerGui")
                        if gui then
                            local toolGui = gui:FindFirstChild("ToolGui")
                            if toolGui then
                                local settings = toolGui:FindFirstChild("ToolSettings")
                                if settings then
                                    local props = settings:FindFirstChild("Settings") and settings.Settings:FindFirstChild("PropsColor")
                                    if props and props:FindFirstChild("SetColor") then
                                        props.SetColor:FireServer(col)
                                    end
                                end
                            end
                        end
                    end)
                    task.wait(0.05)
                end
            end)
        end
    end
})

local megaRGB = false
tabCar:AddToggle({
    Name = "RGB Megaphone",
    Default = false,
    Callback = function(state)
        megaRGB = state
        if state then
            task.spawn(function()
                while megaRGB do
                    local col = getRandomColor()
                    pcall(function()
                        local gui = LocalPlayer:FindFirstChild("PlayerGui")
                        if gui then
                            local toolGui = gui:FindFirstChild("ToolGui")
                            if toolGui then
                                local settings = toolGui:FindFirstChild("ToolSettings")
                                if settings then
                                    local props = settings:FindFirstChild("Settings") and settings.Settings:FindFirstChild("PropsColor")
                                    if props and props:FindFirstChild("SetColor") then
                                        props.SetColor:FireServer(col)
                                    end
                                end
                            end
                        end
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})

-- ==================== TELEPORTS TAB ====================
local tabTP = window:MakeTab({"Teleports", "tp"})

local tpLocations = {
    {"Backstage", CFrame.new(192, 4, 272)},
    {"City Center", CFrame.new(136, 4, 117)},
    {"Crime Area", CFrame.new(-119, -28, 235)},
    {"Abandoned House", CFrame.new(986, 4, 63)},
    {"Agency Portal", CFrame.new(672, 4, -296)},
    {"Hideout", CFrame.new(505, -75, 143)},
    {"School", CFrame.new(-312, 4, 211)},
    {"Brook Cafe", CFrame.new(161, 8, 52)},
    {"Spawn Point", CFrame.new(-26, 4, -23)},
    {"Main Arch", CFrame.new(-589, 141, -59)},
    {"Hospital", CFrame.new(-309, 4, 71)},
    {"Agency Base", CFrame.new(179, 4, -464)},
    {"Secret Workshop", CFrame.new(0, 4, -495)},
    {"Secret Room 2", CFrame.new(-343, 4, -613)},
    {"Isolated Island", CFrame.new(-1925, 23, 127)},
    {"Hotel Plaza", CFrame.new(182, 4, 150)},
    {"Mountain 1", CFrame.new(-670, 251, 765)},
    {"Main Bank", CFrame.new(2.28, 4.65, 254.58)},
    {"Clothing Store", CFrame.new(-46.15, 4.65, 253.2)},
    {"Refuge", CFrame.new(-88.48, 22.05, 262.34)},
    {"Dental Clinic", CFrame.new(-53.58, 22.15, 265.61)},
    {"Cafe", CFrame.new(-97.12, 4.65, 254.99)},
}

local tpNames = {}
for _, loc in ipairs(tpLocations) do
    table.insert(tpNames, loc[1])
end

tabTP:AddDropdown({
    Name = "Select Location",
    Default = "Choose location",
    Options = tpNames,
    Callback = function(name)
        for _, loc in ipairs(tpLocations) do
            if loc[1] == name then
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = loc[2]
                end
                break
            end
        end
    end
})

-- ==================== ITEMS TAB ====================
local tabItems = window:MakeTab({"Items", "rbxassetid://11345510758"})

local function GiveTool(toolName)
    pcall(function()
        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Too1l"):InvokeServer("PickingTools", toolName)
    end)
end

tabItems:AddButton({Name = "Bank Gate Key", Callback = function() GiveTool("BankGateKey") end})
tabItems:AddButton({Name = "Duffle Bag Diamonds", Callback = function() GiveTool("DuffleBagDiamonds") end})
tabItems:AddButton({Name = "Agency Book", Callback = function() GiveTool("AgencyBook") end})
tabItems:AddButton({Name = "Dark Green Keycard", Callback = function() GiveTool("KeyCardDarkGreen") end})
tabItems:AddButton({Name = "Crystal", Callback = function() GiveTool("Crystal") end})
tabItems:AddButton({Name = "Gold Sword", Callback = function() GiveTool("SwordGold") end})
tabItems:AddButton({Name = "Old Key", Callback = function() GiveTool("OldKey") end})
tabItems:AddButton({Name = "Couch", Callback = function() GiveTool("Couch") end})

-- ==================== LOCAL PLAYER TAB ====================
local tabLocal = window:MakeTab({"Local Player", "user"})

tabLocal:AddSection({Name = "Speed, Gravity and Jump"})

tabLocal:AddTextBox({
    Name = "Player Speed",
    PlaceholderText = "Enter speed",
    Callback = function(val)
        local num = tonumber(val)
        if num and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = num
        end
    end
})

tabLocal:AddButton({
    Name = "Reset Speed",
    Callback = function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
})

tabLocal:AddTextBox({
    Name = "Jump Power",
    PlaceholderText = "Enter jump power",
    Callback = function(val)
        local num = tonumber(val)
        if num and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpPower = num
        end
    end
})

tabLocal:AddButton({
    Name = "Reset Jump",
    Callback = function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end
})

tabLocal:AddTextBox({
    Name = "Gravity",
    PlaceholderText = "Enter gravity",
    Callback = function(val)
        local num = tonumber(val)
        if num then workspace.Gravity = num end
    end
})

tabLocal:AddButton({
    Name = "Reset Gravity",
    Callback = function()
        workspace.Gravity = 196.2
    end
})

tabLocal:AddSection({Name = "Noclip"})

local noclipEnabled = false
tabLocal:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(state)
        noclipEnabled = state
        if state then
            task.spawn(function()
                while noclipEnabled do
                    local char = LocalPlayer.Character
                    if char then
                        for _, part in pairs(char:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end
                    task.wait()
                end
            end)
        end
    end
})

tabLocal:AddButton({
    Name = "Reset All (Speed/Jump/Gravity)",
    Callback = function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            local hum = LocalPlayer.Character.Humanoid
            hum.WalkSpeed = 16
            hum.JumpPower = 50
            hum.UseJumpPower = true
        end
        workspace.Gravity = 196.2
    end
})


tabLocal:AddSection({Name = "Spam Chat"})

local chatMsg = ""
local function SendChat(msg)
    if not msg or msg == "" then return end
    pcall(function()
        local tcs = game:GetService("TextChatService")
        if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
            ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg, "All")
        else
            local channel = tcs.ChatInputBarConfiguration and tcs.ChatInputBarConfiguration.TargetTextChannel
            if channel then channel:SendAsync(msg) end
        end
    end)
end

tabLocal:AddTextBox({
    Name = "Chat Message",
    PlaceholderText = "Enter message",
    Callback = function(text)
        chatMsg = text
    end
})

tabLocal:AddButton({
    Name = "Send Chat",
    Callback = function()
        SendChat(chatMsg)
    end
})

getgenv().FestivalSendDelay = 1
tabLocal:AddSlider({
    Name = "Spam Delay",
    Min = 0.4,
    Max = 10,
    Default = 1,
    Increment = 0.1,
    Callback = function(val)
        getgenv().FestivalSendDelay = val
    end
})

tabLocal:AddToggle({
    Name = "Spam Chat",
    Default = false,
    Callback = function(state)
        getgenv().FestivalSpamChat = state
        while getgenv().FestivalSpamChat do
            SendChat(chatMsg)
            task.wait(getgenv().FestivalSendDelay)
        end
    end
})

-- ==================== HEAD SIT TAB ====================
local tabHeadSit = window:MakeTab({"Head Sit", "rbxassetid://14096597501"})

local headSitTarget = nil
local headSitConn = nil

local function GetPlayerNames()
    local list = {}
    for _, plr in pairs(Players:GetPlayers()) do
        table.insert(list, plr.Name)
    end
    return list
end

local headSitDropdown = tabHeadSit:AddDropdown({
    Name = "Select Player",
    Default = "",
    Options = GetPlayerNames(),
    Callback = function(value)
        headSitTarget = value
    end
})

tabHeadSit:AddToggle({
    Name = "Head Sit",
    Default = false,
    Callback = function(state)
        local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")
        local humanoid = char:WaitForChild("Humanoid")

        if not headSitTarget or headSitTarget == "" then
            warn("No player selected for Head Sit")
            return
        end

        local target = Players:FindFirstChild(headSitTarget)
        if state then
            if target and target.Character then
                humanoid.Sit = true
                if headSitConn then headSitConn:Disconnect() end
                headSitConn = RunService.Heartbeat:Connect(function()
                    if target.Character and target.Character:FindFirstChild("Head") and humanoid.Sit then
                        hrp.CFrame = target.Character.Head.CFrame * CFrame.new(0, 1.6, 0.4)
                    elseif headSitConn then
                        headSitConn:Disconnect()
                        headSitConn = nil
                        humanoid.Sit = false
                    end
                end)
            end
        else
            if headSitConn then
                headSitConn:Disconnect()
                headSitConn = nil
            end
            humanoid.Sit = false
        end
    end
})

tabHeadSit:AddButton({
    Name = "Refresh List",
    Callback = function()
        local names = GetPlayerNames()
        pcall(function()
            headSitDropdown:Refresh(names)
        end)
    end
})


-- ==================== EXTRA TROLL (from Brookhaven) ====================
local tabExtra = window:MakeTab({"Extra Troll", "fun"})

tabExtra:AddSection({Name = "Invisible"})

tabExtra:AddButton({
    Name = "Go Invisible",
    Description = "Become invisible (FE)",
    Callback = function()
        pcall(function()
            ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer({
                {102344834840950, 70400527171038, 0, 0, 0, 0}
            })
        end)
        pcall(function()
            ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(111858803548720)
        end)
        -- clear accessories
        pcall(function()
            local char = LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") then
                local desc = char.Humanoid:FindFirstChildOfClass("HumanoidDescription") or char.Humanoid.HumanoidDescription
                if desc then
                    -- try remove common accessories via remote if available
                end
            end
        end)
        print("[Festival] Invisible applied")
    end
})

tabExtra:AddSection({Name = "Hair RGB"})

local hairRGB = false
local hairColors = {
    Color3.new(1,1,0), Color3.new(0,0,1), Color3.new(1,0,1),
    Color3.new(1,1,1), Color3.new(0,1,0), Color3.new(0.5,0,1),
    Color3.new(1,0.647,0), Color3.new(0,1,1)
}

tabExtra:AddToggle({
    Name = "Hair RGB",
    Default = false,
    Callback = function(state)
        hairRGB = state
        if state then
            task.spawn(function()
                local i = 1
                while hairRGB do
                    pcall(function()
                        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Max1y"):FireServer("ChangeHairColor2", hairColors[i])
                    end)
                    i = i % #hairColors + 1
                    task.wait(0.12)
                end
            end)
        end
    end
})

tabExtra:AddSection({Name = "Avatar RGB"})

local avatarRGB = false
tabExtra:AddToggle({
    Name = "Avatar RGB",
    Default = false,
    Callback = function(state)
        avatarRGB = state
        if state then
            task.spawn(function()
                while avatarRGB do
                    local col = Color3.fromHSV(math.random(), 1, 1)
                    pcall(function()
                        -- try body color remote if exists
                        local re = ReplicatedStorage:FindFirstChild("RE")
                        if re then
                            local remote = re:FindFirstChild("1Player1sHous1e") or re:FindFirstChild("1Max1y")
                            -- body color attempts vary by game version
                        end
                    end)
                    -- local highlight fallback
                    local char = LocalPlayer.Character
                    if char then
                        local hl = char:FindFirstChild("FestivalRGB")
                        if not hl then
                            hl = Instance.new("Highlight")
                            hl.Name = "FestivalRGB"
                            hl.FillTransparency = 0.3
                            hl.OutlineTransparency = 0.5
                            hl.Parent = char
                        end
                        hl.FillColor = col
                        hl.OutlineColor = col
                    end
                    task.wait(0.15)
                end
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("FestivalRGB") then
                    char.FestivalRGB:Destroy()
                end
            end)
        end
    end
})

tabExtra:AddSection({Name = "Anti Fling"})

local antiFling = false
tabExtra:AddToggle({
    Name = "Anti Fling",
    Default = false,
    Callback = function(state)
        antiFling = state
        if state then
            task.spawn(function()
                while antiFling do
                    local char = LocalPlayer.Character
                    if char then
                        for _, part in pairs(char:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.Velocity = Vector3.zero
                                part.RotVelocity = Vector3.zero
                                if part:FindFirstChild("BodyVelocity") then
                                    part.BodyVelocity:Destroy()
                                end
                                if part:FindFirstChild("BodyAngularVelocity") then
                                    part.BodyAngularVelocity:Destroy()
                                end
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end
})

-- ==================== UNIVERSAL SCRIPTS TAB ====================
local tabUniversal = window:MakeTab({"Universal Scripts", "rbxassetid://12285970187"})

tabUniversal:AddButton({
    Name = "NINJA X ADMIN",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lindao10/Kxkckxkxkxkxkxkxlxllxkxkzlxlxx/refs/heads/main/NINJA%20X%20ADMIN.txt"))()
    end
})

tabUniversal:AddButton({
    Name = "Bring Part",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/TihMhyyh"))()
    end
})

tabUniversal:AddButton({
    Name = "Fly Gui V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})

tabUniversal:AddButton({
    Name = "Nameless Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
    end
})

tabUniversal:AddButton({
    Name = "Telekinesis",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md", true))()
    end
})

tabUniversal:AddButton({
    Name = "TP Tool",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/err0r129/KptHadesBlair/main/Bao.lua"))()
    end
})

print("[Festival Hub] Loaded | Role: " .. GetRoleDisplay(LocalPlayer.Name) .. " | Account: " .. LocalPlayer.Name)
