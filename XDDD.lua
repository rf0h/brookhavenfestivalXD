local players, httpService, marketplaceService, replicatedStorage, v1

do
  do
    do
      do
        do
          do
            do
              do
                do
                  do
                    do
                      do
                        do
                          do
                            do
                              do
                                players = game:GetService("Players")
                                httpService = game:GetService("HttpService")
                                marketplaceService = game:GetService("MarketplaceService")
                                replicatedStorage = game:GetService("ReplicatedStorage")
                                v1 = game:GetService("Workspace")
                                local runService = game:GetService("RunService")
                                local virtualInputManager = game:GetService("VirtualInputManager")
                                local userInputService = game:GetService("UserInputService")
                                local starterGui = game:GetService("StarterGui")
                                local v2 = 2
                                local floor = math.floor
                                local v3 = 0
                                local v4 = {}
                                local char = string.char
                                local remove = table.remove
                                local random = math.random
                                local v5 = {}
                                local count = 0

                                while true do
                                  count = 1 + count

                                  if not (count <= 256) then
                                    break
                                  end

                                  local v6 = count
                                  v5[v6] = v6
                                end

                                while true do
                                  local v7 = remove(v5, (random(1, #v5)))
                                  v4[v7] = char(v7 - 1)

                                  if #v5 == 0 then
                                    break
                                  end
                                end

                                local v8 = {}

                                local function f1()
                                  if #v8 == 0 then
                                    v3 = (v3 * 213 + 27552854471197) % 35184372088832

                                    while true do
                                      v2 = v2 * 201 % 257

                                      if v2 ~= 1 then
                                        break
                                      end
                                    end

                                    local v9 = v2 % 32

                                    local v10 = floor(v3 / 2 ^ (13 - (v2 - v9) / 32))
                                        % 4294967296
                                      / 2 ^ v9

                                    local v11 = floor(v10 % 1 * 4294967296) + floor(v10)
                                    local v12 = v11 % 65536
                                    local v13 = (v11 - v12) / 65536

                                    v8 = {
                                      v12 % 256, (v12 - v12 % 256) / 256, v13 % 256,
                                      (v13 - v13 % 256) / 256,
                                    }
                                  end

                                  local v14 = #v8
                                  local v15 = v8[v14]
                                  v8[v14] = nil
                                  return v15
                                end

                                local v16 = {}

                                local v17 = setmetatable({}, {
                                  __index = v16,
                                  __metatable = nil,
                                })

                                local function f2(p1, p2)
                                  if v16[p2] then
                                    return p2
                                  else
                                    v8 = {}
                                    local text = ""
                                    v3 = p2 % 35184372088832
                                    v2 = p2 % 255 + 2
                                    v16[p2] = ""
                                    local v18 = 204

                                    for i = 1, #p1 do
                                      v18 = (string.byte(p1, i) + f1() + v18) % 256
                                      text = text .. v4[v18 + 1]
                                    end

                                    v16[p2] = text
                                    return p2
                                  end
                                end

                                local redzHubUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/Joaozin-dev/Manox-Hub/refs/heads/main/RedzHubUi"))()

                                pcall(function()
                                  local v19 = game
                                  task.spawn(loadstring(v19:HttpGet("https://raw.githubusercontent.com/JAGAMES94ez/Manox-Hub/refs/heads/main/main.lua")))
                                end)

                                local localPlayer = game.Players.LocalPlayer

                                local f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15,
                                  f16, f17, f18, f19, f20, starterGui2, f21, v20, name, v21,
                                  v22, localPlayer2, f22, v23, v24, window, localPlayer3,
                                  walkSpeed, jumpPower, gravity, v25, localPlayer4,
                                  findFirstChild, v26, f23, f24, addDropdown, logsList,
                                  localPlayer5, v27, v28, v29, v30, f25, v31, v32, f26, v33,
                                  humanoid, f27, waitForChild, tab, v34, v35, v36, v37, f28,
                                  v38, v39, f29, localPlayer6, currentCamera, v40, v41,
                                  character, humanoid2, f30, f31, f32, f33,
                                  selecionarJogadorAddDropdown, localPlayer7, currentCamera2,
                                  v42, f34, remotes, re, v43, selecionarJogadorAddDropdown2,
                                  applyEmmiter, changeCharacterBody, v44, v45, v46, v47, v48,
                                  v49, localPlayer8, casasTab, v50, v51, v52, v53, f35,
                                  selecionarCasaAddDropdown, f36, localPlayer9, v54, v55,
                                  addDropdown2, v56, waitForChild2, v57, v58, v59, v60, f37,
                                  f38, v61, v62, v63, v64, v65, f39, f40, v66, v67, v68,
                                  localPlayer10, currentCamera3, v69, v70, f41, f42, connect,
                                  v71, localPlayer11, v72

                                if not ({ [4924922222] = true })[game.PlaceId or 0] then
                                  localPlayer:Kick("This game is not supported for this script.")
                                  task.wait(1)
                                  return
                                else
                                  local v73 = game
                                  local getPlayers = players.GetPlayers
                                  starterGui2 = v73:GetService("StarterGui")
                                  local localPlayer12 = players.LocalPlayer

                                  function f21()
                                    pcall(function()
                                      starterGui2:SetCore("SendNotification", {
                                        Title = "Info",
                                        Text = "O Dono do Manox Hub (Joaozin Dev) está no seu Servidor.",
                                        Duration = 6,
                                      })
                                    end)
                                  end

                                  local function f43(p3)
                                    if p3.Name ~= "Joaozindev" then
                                      return
                                    end

                                    f21()
                                  end

                                  for index, value in ipairs(getPlayers(players)) do
                                    f43(value)
                                  end

                                  players.PlayerAdded:Connect(f43)
                                  local localPlayer13 = players.LocalPlayer

                                  local v74 = localPlayer13
                                  v74 = localPlayer13 or players.PlayerAdded:Wait()

                                  v20 = "Desconhecido"

                                  pcall(function()
                                    if identifyexecutor then
                                      v20 = identifyexecutor()
                                    elseif getexecutorname then
                                      v20 = getexecutorname()
                                    end
                                  end)

                                  name = "Desconhecido"

                                  pcall(function()
                                    name = marketplaceService:GetProductInfo(game.PlaceId).Name
                                  end)

                                  local v75 = "https://www.roblox.com/games/start?placeId="
                                    .. game.PlaceId .. "&gameInstanceId=" .. game.JobId

                                  local v76 = syn and syn.request or http_request or request
                                    or fluxus and fluxus.request

                                  if not v76 then
                                    warn("Executor não suporta requests HTTP")
                                    return
                                  else
                                    v21 = {
                                      username = "Manox Hub Logs",
                                      avatar_url = "https://raw.githubusercontent.com/Joaozin-dev/Files/refs/heads/main/file_00000000c3dc720e89abd2a97f8d8795.png",
                                      embeds = {
                                        {
                                          title = "📌 Logs",
                                          color = 65280,
                                          fields = {
                                            {
                                              name = "👤 Jogador",
                                              value = v74.Name .. " (" .. v74.UserId .. ")",
                                              inline = true,
                                            },
                                            {
                                              name = "🧰 Executor",
                                              value = v20,
                                              inline = true,
                                            },
                                            { name = "🎮 Jogo", value = name, inline = false },
                                            {
                                              name = "🆔 PlaceId",
                                              value = tostring(game.PlaceId),
                                              inline = true,
                                            },
                                            {
                                              name = "🔗 Servidor",
                                              value = "[Entrar no Servidor](" .. v75 .. ")",
                                              inline = false,
                                            },
                                            {
                                              name = "🧠 Hub",
                                              value = "Manox Hub",
                                              inline = true,
                                            },
                                          },
                                          footer = {
                                            text = "Manox Hub • "
                                              .. os.date("%d/%m/%Y %H:%M:%S"),
                                          },
                                        },
                                      },
                                    }

                                    local v77, v78 = pcall(function()
                                      return v76({
                                        Url = "https://discord.com/api/webhooks/1555873586235965540/8byfXFIyNPtonCrVguw8J2qdUL_tMw1aqawxLY0S-yJf6XhA9d38hKireGY_YKH46yaE",
                                        Method = "POST",
                                        Headers = { ["Content-Type"] = "application/json" },
                                        Body = httpService:JSONEncode(v21),
                                      })
                                    end)

                                    if not v77 then
                                      warn("Erro ao enviar log:", v78)
                                    end

                                    v22 = { 7219199756, 9598703621 }
                                    local localPlayer14 = players.LocalPlayer
                                    local re2 = replicatedStorage:WaitForChild("RE")
                                    local findFirstChild2 = re2:FindFirstChild("1RPNam1eTex1t")
                                    local findFirstChild3 = re2:FindFirstChild("1RPNam1eColo1r")

                                    local function f44(p4)
                                      for index2, value2 in ipairs(v22) do
                                        if p4.UserId == value2 then
                                          return true
                                        end
                                      end

                                      return false
                                    end

                                    if findFirstChild2 then
                                      if f44(localPlayer14) then
                                        findFirstChild2:FireServer(
                                          "RolePlayName", "Owner of Manox_Hub"
                                        )

                                        if findFirstChild3 then
                                          findFirstChild3:FireServer(
                                            "PickingRPNameColor", Color3.fromRGB(255, 215, 0)
                                          )
                                        end

                                        print("Nome de ADMIN aplicado:", "Owner of Manox_Hub")
                                      else
                                        findFirstChild2:FireServer(
                                          "RolePlayName", "Usuário Manox_Hub"
                                        )

                                        if findFirstChild3 then
                                          findFirstChild3:FireServer("PickingRPNameColor", Color3.fromRGB(
                                            255, 255, 255
                                          ))
                                        end

                                        print(
                                          "Nome de usuário aplicado:", "Usuário Manox_Hub"
                                        )
                                      end
                                    else
                                      warn("RemoteEvent 1RPNam1eTex1t não encontrado!")
                                    end

                                    localPlayer2 = players.LocalPlayer

                                    local v79 = syn and syn.request or http and http.request
                                      or http_request or request

                                    function traduzir(p5)
                                      local v80 = string.sub(localPlayer2.LocaleId, 1, 2)

                                      local v81 = v79({
                                        Url = string.format(
                                          "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=%s&dt=t&q=%s",
                                          v80, httpService:UrlEncode(p5)
                                        ),
                                        Method = "GET",
                                      })

                                      if not v81 or not v81.Success then
                                        return p5
                                      else
                                        local jsonDecode = httpService:JSONDecode(v81.Body)

                                        if jsonDecode and jsonDecode[1] and jsonDecode[1][1]
                                          and jsonDecode[1][1][1] then
                                          return jsonDecode[1][1][1]
                                        end

                                        return p5
                                      end
                                    end

                                    function f22(p6)
                                      return os.date("%d/%m/%Y %H:%M:%S", p6 / 1000)
                                    end

                                    v23 = "Versão Desconhecida"
                                    v24 = "Data Desconhecida"

                                    pcall(function()
                                      local jsonDecode2 = httpService:JSONDecode((game:HttpGet("https://users-data.manoxhub.workers.dev/api/manox/version")))

                                      if jsonDecode2.version then
                                        v23 = tostring(jsonDecode2.version)
                                      end

                                      if jsonDecode2.updatedAt then
                                        v24 = f22(jsonDecode2.updatedAt)
                                      end
                                    end)

                                    window = redzHubUi:MakeWindow({
                                      Title = "Manox Hub | Brookhaven | Português",
                                      SubTitle = "by Joaozin Dev",
                                      SaveFolder = "MANOX-HUB",
                                    })

                                    window:AddMinimizeButton({
                                      Button = {
                                        Image = "rbxassetid://111624650929097",
                                        BackgroundTransparency = 0,
                                      },
                                      Corner = { CornerRadius = UDim.new(35, 1) },
                                    })

                                    local tab2 = window:MakeTab({ "informações", "info" })
                                    tab2:AddSection({ "Credits" })

                                    tab2:AddDiscordInvite({
                                      Name = "Manox Hub",
                                      Description = "Join server",
                                      Logo = "rbxassetid://111624650929097",
                                      Invite = "não há um link",
                                    })

                                    tab2:AddParagraph({ "Owner / Developer", "Joaozin Dev" })
                                    tab2:AddParagraph({ "Versão", v23 })
                                    tab2:AddParagraph({ "Executor", v20 })

                                    tab2:AddButton({
                                      Name = "Site do Manox Hub",
                                      Callback = function()
                                        setclipboard("https://manox-hub.pages.dev/")
                                      end,
                                    })

                                    local tab3 = window:MakeTab({ "Player", "user" })
                                    localPlayer3 = players.LocalPlayer

                                    function f3()
                                      return (localPlayer3.Character
                                        or localPlayer3.CharacterAdded:Wait()):WaitForChild("Humanoid")
                                    end

                                    walkSpeed = 16
                                    jumpPower = 50
                                    gravity = 196.2

                                    tab3:AddSection({ "WalkSpeed" })

                                    tab3:AddTextBox({
                                      Name = "WalkSpeed",
                                      PlaceholderText = "Ex: 50",
                                      ClearTextOnFocus = false,
                                      Callback = function(value3)
                                        local v82 = tonumber(value3)

                                        if v82 then
                                          walkSpeed = v82
                                        end
                                      end,
                                    })

                                    tab3:AddButton({
                                      Name = "Aplicar WalkSpeed",
                                      Callback = function() f3().WalkSpeed = walkSpeed end,
                                    })

                                    tab3:AddSection({ "JumpPower" })

                                    tab3:AddTextBox({
                                      Name = "JumpPower",
                                      PlaceholderText = "Ex: 100",
                                      ClearTextOnFocus = false,
                                      Callback = function(value4)
                                        local v83 = tonumber(value4)

                                        if v83 then
                                          jumpPower = v83
                                        end
                                      end,
                                    })

                                    tab3:AddButton({
                                      Name = "Aplicar JumpPower",
                                      Callback = function()
                                        local v84 = f3()
                                        v84.UseJumpPower = true
                                        v84.JumpPower = jumpPower
                                      end,
                                    })

                                    tab3:AddSection({ "Gravity" })

                                    tab3:AddTextBox({
                                      Name = "Gravity",
                                      PlaceholderText = "Ex: 80",
                                      ClearTextOnFocus = false,
                                      Callback = function(value5)
                                        local v85 = tonumber(value5)

                                        if v85 then
                                          gravity = v85
                                        end
                                      end,
                                    })

                                    tab3:AddButton({
                                      Name = "Aplicar Gravity",
                                      Callback = function() v1.Gravity = gravity end,
                                    })

                                    tab3:AddSection({ "Noclip" })

                                    v25 = false

                                    tab3:AddToggle({
                                      Name = "Noclip",
                                      Default = false,
                                      Callback = function(value6)
                                        v25 = value6

                                        runService.Stepped:Connect(function()
                                          if v25 then
                                            for key, value7 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                              if value7:IsA("BasePart") then
                                                value7.CanCollide = false
                                              end
                                            end
                                          end
                                        end)
                                      end,
                                    })

                                    tab3:AddSection({ "Resetar Tudo" })

                                    tab3:AddButton({
                                      Name = "Resetar Tudo",
                                      Callback = function()
                                        local v86 = f3()
                                        walkSpeed = 16
                                        jumpPower = 50
                                        gravity = 196.2

                                        v86.WalkSpeed = 16
                                        v86.UseJumpPower = true
                                        v86.JumpPower = 50

                                        v1.Gravity = 196.2
                                      end,
                                    })

                                    local tab4 = window:MakeTab({ "Fun", "fun" })
                                    tab4:AddSection({ "Edit Sign Troll" })

                                    localPlayer4 = players.LocalPlayer
                                    findFirstChild = nil
                                    v26 = ""

                                    function f23(p7)
                                      if not p7 then
                                        return false
                                      else
                                        local backpack = p7:FindFirstChild("Backpack")

                                        if backpack and backpack:FindFirstChild("Sign") then
                                          return true
                                        else
                                          local character2 = p7.Character

                                          if character2 and character2:FindFirstChild("Sign") then
                                            return true
                                          end

                                          return false
                                        end
                                      end
                                    end

                                    function f24()
                                      local v87 = {}

                                      for index3, value8 in ipairs(players:GetPlayers()) do
                                        if value8 ~= localPlayer4 and f23(value8) then
                                          table.insert(v87, value8.Name)
                                        end
                                      end

                                      return v87
                                    end

                                    addDropdown = tab4:AddDropdown({
                                      Name = "Selecionar Jogador (com Sign)",
                                      Options = f24(),
                                      Default = "",
                                      Callback = function(value9)
                                        findFirstChild = players:FindFirstChild(value9)
                                        getgenv().Target = findFirstChild
                                        print("Jogador selecionado:", value9)
                                      end,
                                    })

                                    tab4:AddButton({
                                      Name = "Atualizar Player List",
                                      Callback = function()
                                        local v88 = f24()

                                        if addDropdown then
                                          addDropdown:Set(v88)
                                          print("Lista atualizada:", table.concat(v88, ", "))

                                          if findFirstChild
                                            and (not findFirstChild.Parent
                                              or not f23(findFirstChild)) then
                                            findFirstChild = nil
                                            getgenv().Target = nil
                                            addDropdown:SetValue("")
                                            print("Seleção resetada.")
                                          end
                                        else
                                          warn("Dropdown não encontrado.")
                                        end
                                      end,
                                    })

                                    tab4:AddTextBox({
                                      Name = "Sign Text",
                                      PlaceholderText = "Digite o texto",
                                      ClearTextOnFocus = false,
                                      Callback = function(value10) v26 = value10 end,
                                    })

                                    tab4:AddButton({
                                      Name = "Edit Sign",
                                      Callback = function()
                                        if not findFirstChild then
                                          warn("Nenhum jogador selecionado.")
                                          return
                                        else
                                          local character3 = findFirstChild.Character

                                          if not character3 then
                                            warn("Character não encontrado.")
                                            return
                                          else
                                            local sign = character3:FindFirstChild("Sign")

                                            if not sign then
                                              warn("Player não está com a Sign equipada.")
                                              return
                                            else
                                              local toolSound = sign:FindFirstChild("ToolSound")

                                              if not toolSound then
                                                warn("Remote não encontrado.")
                                                return
                                              end

                                              toolSound:FireServer(unpack({
                                                "Sign", "SignWords", v26,
                                              }))

                                              return
                                            end
                                          end
                                        end
                                      end,
                                    })

                                    tab4:AddSection({ "Melhorias para essa aba em breve..." })

                                    local tab5 = window:MakeTab({ "Logs-Updates", "clock" })

                                    local updateLogs = Instance.new("Frame")
                                    updateLogs.Name = "UpdateLogs"
                                    updateLogs.Size = UDim2.new(1, -20, 0, 250)
                                    updateLogs.BackgroundColor3 = Color3.fromRGB(18, 18, 27)
                                    updateLogs.BorderSizePixel = 0
                                    updateLogs.Parent = tab5.Cont

                                    local uiCorner = Instance.new("UICorner")
                                    uiCorner.CornerRadius = UDim.new(0, 12)
                                    uiCorner.Parent = updateLogs

                                    local uiStroke = Instance.new("UIStroke")
                                    uiStroke.Color = Color3.fromRGB(55, 55, 75)
                                    uiStroke.Thickness = 1
                                    uiStroke.Transparency = 0.35
                                    uiStroke.Parent = updateLogs

                                    local header = Instance.new("Frame")
                                    header.Name = "Header"
                                    header.Size = UDim2.new(1, -20, 0, 58)
                                    header.Position = UDim2.fromOffset(10, 8)
                                    header.BackgroundTransparency = 1
                                    header.Parent = updateLogs

                                    local textLabel = Instance.new("TextLabel")
                                    textLabel.Size = UDim2.fromOffset(42, 42)
                                    textLabel.Position = UDim2.fromOffset(0, 4)
                                    textLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 52)
                                    textLabel.BorderSizePixel = 0
                                    textLabel.Text = "↻"
                                    textLabel.TextColor3 = Color3.fromRGB(150, 120, 255)
                                    textLabel.TextSize = 25
                                    textLabel.Font = Enum.Font.GothamBold
                                    textLabel.Parent = header

                                    local uiCorner2 = Instance.new("UICorner")
                                    uiCorner2.CornerRadius = UDim.new(0, 10)
                                    uiCorner2.Parent = textLabel

                                    local textLabel2 = Instance.new("TextLabel")
                                    textLabel2.Size = UDim2.new(1, -55, 0, 25)
                                    textLabel2.Position = UDim2.fromOffset(52, 3)
                                    textLabel2.BackgroundTransparency = 1
                                    textLabel2.Text = "Atualizações"
                                    textLabel2.TextColor3 = Color3.fromRGB(245, 245, 255)
                                    textLabel2.TextSize = 17
                                    textLabel2.Font = Enum.Font.GothamBold
                                    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
                                    textLabel2.Parent = header

                                    local textLabel3 = Instance.new("TextLabel")
                                    textLabel3.Size = UDim2.new(1, -55, 0, 22)
                                    textLabel3.Position = UDim2.fromOffset(52, 28)
                                    textLabel3.BackgroundTransparency = 1
                                    textLabel3.Text = v23 .. "  •  " .. v24
                                    textLabel3.TextColor3 = Color3.fromRGB(145, 145, 165)
                                    textLabel3.TextSize = 11
                                    textLabel3.Font = Enum.Font.Gotham
                                    textLabel3.TextXAlignment = Enum.TextXAlignment.Left
                                    textLabel3.Parent = header

                                    local frame = Instance.new("Frame")
                                    frame.Size = UDim2.new(1, -20, 0, 1)
                                    frame.Position = UDim2.fromOffset(10, 70)
                                    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
                                    frame.BorderSizePixel = 0
                                    frame.Parent = updateLogs

                                    logsList = Instance.new("ScrollingFrame")
                                    logsList.Name = "LogsList"
                                    logsList.Size = UDim2.new(1, -20, 1, -82)
                                    logsList.Position = UDim2.fromOffset(10, 78)
                                    logsList.BackgroundTransparency = 1
                                    logsList.BorderSizePixel = 0
                                    logsList.ScrollBarThickness = 2
                                    logsList.ScrollBarImageTransparency = 0.35
                                    logsList.CanvasSize = UDim2.new(0, 0, 0, 0)
                                    logsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
                                    logsList.Parent = updateLogs

                                    local uiListLayout = Instance.new("UIListLayout")
                                    uiListLayout.Padding = UDim.new(0, 6)
                                    uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                    uiListLayout.Parent = logsList

                                    local function f45(p8, p9, p10)
                                      local v89 = ({
                                        Added = { Prefix = "+ Add", Color = "#4ADE80" },
                                        Removed = { Prefix = "- Removed", Color = "#FF5060" },
                                        Fixed = { Prefix = "✓ Fixed", Color = "#60A5FA" },
                                        Changed = { Prefix = "↻ Changed", Color = "#A78BFA" },
                                      })[p8]

                                      if not v89 then
                                        v89 = { Prefix = p8, Color = "#FFFFFF" }
                                      end

                                      local update = Instance.new("Frame")
                                      update.Name = "Update"
                                      update.Size = UDim2.new(1, -4, 0, 34)
                                      update.BackgroundColor3 = Color3.fromRGB(25, 25, 37)
                                      update.BorderSizePixel = 0
                                      update.LayoutOrder = p10 or 0
                                      update.Parent = logsList

                                      local uiCorner3 = Instance.new("UICorner")
                                      uiCorner3.CornerRadius = UDim.new(0, 8)
                                      uiCorner3.Parent = update

                                      local frame2 = Instance.new("Frame")
                                      frame2.Size = UDim2.fromOffset(3, 18)
                                      frame2.Position = UDim2.fromOffset(8, 8)
                                      frame2.BackgroundColor3 = Color3.fromHex(v89.Color)
                                      frame2.BorderSizePixel = 0
                                      frame2.Parent = update

                                      local uiCorner4 = Instance.new("UICorner")
                                      uiCorner4.CornerRadius = UDim.new(1, 0)
                                      uiCorner4.Parent = frame2

                                      local textLabel4 = Instance.new("TextLabel")
                                      textLabel4.Size = UDim2.new(1, -25, 1, 0)
                                      textLabel4.Position = UDim2.fromOffset(18, 0)
                                      textLabel4.BackgroundTransparency = 1

                                      textLabel4.Text = string.format(
                                        "<font color=\"%s\"><b>%s</b></font> %s", v89.Color,
                                        v89.Prefix, p9
                                      )

                                      textLabel4.RichText = true
                                      textLabel4.TextColor3 = Color3.fromRGB(215, 215, 230)
                                      textLabel4.TextSize = 12
                                      textLabel4.Font = Enum.Font.Gotham
                                      textLabel4.TextXAlignment = Enum.TextXAlignment.Left
                                      textLabel4.TextTruncate = Enum.TextTruncate.AtEnd
                                      textLabel4.Parent = update

                                      return update
                                    end

                                    f45("Fixed", "Bug de Lag na aba Protection", 1)
                                    f45("Added", "Nova Aba de Logs-Updates", 2)
                                    f45("Added", "Loading Screen Novo", 3)
                                    f45("Added", "ESPs na aba Cliente", 4)
                                    f45("Removed", "Aba Skybox", 5)
                                    f45("Removed", "Car Spawner", 6)

                                    local tab6 = window:MakeTab({ "Protection", "shield" })
                                    localPlayer5 = players.LocalPlayer
                                    v27 = nil

                                    function f4(p11)
                                      local nilInstances = localPlayer5:FindFirstChild("NilInstances")
                                        or Instance.new("Folder", localPlayer5)

                                      nilInstances.Name = "NilInstances"

                                      v27 = p11

                                      if p11 then
                                        task.spawn(function()
                                          while v27 do
                                            for index4, value11 in ipairs(players:GetPlayers()) do
                                              if value11 ~= localPlayer5 and value11.Character then
                                                for index5, value12 in ipairs(value11.Character:GetDescendants()) do
                                                  if value12:IsA("Seat")
                                                    or value12:IsA("VehicleSeat") then
                                                    if not v28[value12] then
                                                      v28[value12] = value12.Parent
                                                    end

                                                    value12.Parent = nilInstances
                                                  end
                                                end
                                              end
                                            end

                                            task.wait(0.7)
                                          end
                                        end)
                                      else
                                        for key2, value13 in pairs(v28) do
                                          if key2 and value13 then
                                            key2.Parent = value13
                                          end
                                        end

                                        v28 = {}
                                      end
                                    end

                                    v28 = {}
                                    v29 = nil

                                    v30 = {
                                      "Burger Tray", "Bomb", "Laptop", "Paper Bag", "Chips",
                                      "Ice Cream", "Taser", "Basketball", "FireX", "Ladder",
                                      "Ghost Meter", "Clipboard", "Stretcher", "Glock",
                                      "Electric Guitar", "Guitar", "Book", "Box",
                                      "Frap Strawberry", "Bank Keycard", "White Keycard", "Mop",
                                      "Iphone", "Ipad",
                                    }

                                    function f25(p12)
                                      v29 = p12

                                      if p12 then
                                        task.spawn(function()
                                          while v29 do
                                            for index6, value14 in ipairs(players:GetPlayers()) do
                                              local character4 = value14.Character

                                              if character4 then
                                                local v90 = {}

                                                for index7, value15 in ipairs(character4:GetDescendants()) do
                                                  if value15:IsA("Tool")
                                                    and table.find(v30, value15.Name) then
                                                    v90[value15.Name] = (v90[value15.Name] or 0)
                                                      + 1
                                                  end
                                                end

                                                for index8, value16 in ipairs(character4:GetDescendants()) do
                                                  if value16:IsA("Tool") and v90[value16.Name]
                                                    and v90[value16.Name] > 2 then
                                                    value16:Destroy()
                                                    local name2 = value16.Name
                                                    v90[name2] = v90[name2] - 1
                                                  end
                                                end
                                              end
                                            end

                                            task.wait(0.7)
                                          end
                                        end)
                                      end
                                    end

                                    v31 = nil
                                    v32 = {}

                                    function f26(p13)
                                      local nilInstances2 = localPlayer5:FindFirstChild("NilInstances")
                                        or Instance.new("Folder", localPlayer5)

                                      nilInstances2.Name = "NilInstances"

                                      v31 = p13

                                      if p13 then
                                        task.spawn(function()
                                          while v31 do
                                            local vehicles = workspace:FindFirstChild("Vehicles")

                                            if not vehicles then
                                              return
                                            end

                                            for index9, value17 in ipairs(vehicles:GetDescendants()) do
                                              if value17:IsA("Seat")
                                                or value17:IsA("VehicleSeat") then
                                                if not v32[value17] then
                                                  v32[value17] = value17.Parent
                                                end

                                                value17.Parent = nilInstances2
                                              end
                                            end

                                            task.wait(0.7)
                                          end
                                        end)
                                      else
                                        for key3, value18 in pairs(v32) do
                                          if key3 and value18 then
                                            key3.Parent = value18
                                          end
                                        end

                                        v32 = {}
                                      end
                                    end

                                    function f5(p14)
                                      v33 = p14

                                      if p14 then
                                        task.spawn(function()
                                          while v33 do
                                            local workspaceCom = workspace:FindFirstChild("WorkspaceCom")
                                            local findFirstChild4 = workspaceCom:FindFirstChild("001_SoccerBalls")
                                            local findFirstChild5 = workspaceCom:FindFirstChild("001_Bombs")
                                            local vehicles2 = workspace:FindFirstChild("Vehicles")

                                            if findFirstChild4 then
                                              for index10, value19 in ipairs(findFirstChild4:GetChildren()) do
                                                if value19:IsA("BasePart") then
                                                  value19.CanCollide = false
                                                end
                                              end
                                            end

                                            if findFirstChild5 then
                                              for index11, value20 in ipairs(findFirstChild5:GetChildren()) do
                                                if value20:IsA("BasePart") then
                                                  value20.CanCollide = false
                                                end
                                              end
                                            end

                                            if vehicles2 then
                                              for index12, value21 in ipairs(vehicles2:GetDescendants()) do
                                                if value21:IsA("BasePart") then
                                                  value21.CanCollide = false
                                                end
                                              end
                                            end

                                            task.wait(0.7)
                                          end
                                        end)

                                        for index13, value22 in ipairs(workspace:GetDescendants()) do
                                          if value22:IsA("BasePart") and value22.Name == "Door" then
                                            value22.CanCollide = false
                                          end
                                        end
                                      else
                                        if e then
                                          for index14, value23 in ipairs(e:GetChildren()) do
                                            if value23:IsA("BasePart") then
                                              value23.CanCollide = true
                                            end
                                          end
                                        end

                                        if h then
                                          for index15, value24 in ipairs(h:GetChildren()) do
                                            if value24:IsA("BasePart") then
                                              value24.CanCollide = true
                                            end
                                          end
                                        end

                                        if v then
                                          for index16, value25 in ipairs(v:GetDescendants()) do
                                            if value25:IsA("BasePart") then
                                              value25.CanCollide = true
                                            end
                                          end
                                        end

                                        for index17, value26 in ipairs(workspace:GetDescendants()) do
                                          if value26:IsA("BasePart") and value26.Name == "Door" then
                                            value26.CanCollide = true
                                          end
                                        end
                                      end
                                    end

                                    v33 = nil
                                    humanoid = localPlayer5.Character:WaitForChild("Humanoid")

                                    function f27(p15)
                                      if p15 then
                                        humanoid:SetStateEnabled(
                                          Enum.HumanoidStateType.Seated, false
                                        )

                                        humanoid.Sit = false
                                        print("AntiSit Ativado: O jogador não pode mais sentar.")
                                      else
                                        humanoid:SetStateEnabled(
                                          Enum.HumanoidStateType.Seated, true
                                        )

                                        print("AntiSit Desativado: O jogador agora pode sentar.")
                                      end
                                    end

                                    tab6:AddToggle({
                                      Name = "Anti Sit Tool",
                                      Description = "Impede de sentar via Tool",
                                      Callback = function(value27) f4(value27) end,
                                    })

                                    tab6:AddToggle({
                                      Name = "Anti Sit Vehicle",
                                      Description = "Impede de sentar em veículos",
                                      Callback = function(value28) f26(value28) end,
                                    })

                                    tab6:AddToggle({
                                      Name = "Anti Sit Total",
                                      Description = "Impede de sentar em todos os objetos",
                                      Callback = function(value29) f27(value29) end,
                                    })

                                    tab6:AddToggle({
                                      Name = "Anti Fling",
                                      Description = "Proteção contra colisões de veículos/objetos",
                                      Callback = function(value30) f5(value30) end,
                                    })

                                    tab6:AddToggle({
                                      Name = "Anti Lag",
                                      Description = "Proteção contra travamentos",
                                      Callback = function(value31) f25(value31) end,
                                    })

                                    waitForChild = replicatedStorage:WaitForChild("RE"):WaitForChild("1Gu1n")

                                    tab = window:MakeTab({ "Audio All FE", "radio" })
                                    tab:AddSection({ "Bombox" })

                                    tab:AddButton({
                                      Title = "Bombox FE",
                                      Description = "Bombox para tocar no servidor",
                                      Callback = function()
                                        local localPlayer15 = players.LocalPlayer
                                        local wear = replicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear")

                                        local serverBoombox = Instance.new("Tool")
                                        serverBoombox.TextureId = "rbxassetid://99464872104126"
                                        serverBoombox.Name = "ServerBoombox"
                                        serverBoombox.RequiresHandle = true
                                        serverBoombox.CanBeDropped = false

                                        local handle = Instance.new("Part")
                                        handle.Name = "Handle"
                                        handle.Size = Vector3.new(1, 1, 1)
                                        handle.Transparency = 1
                                        handle.CanCollide = false
                                        handle.Parent = serverBoombox

                                        serverBoombox.Parent = localPlayer15:WaitForChild("Backpack")
                                        local v91 = false
                                        local v92 = false

                                        serverBoombox.Equipped:Connect(function()
                                          if not v92 then
                                            v92 = true
                                            v91 = true
                                            wear:InvokeServer(18756289999)
                                          end
                                        end)

                                        serverBoombox.Unequipped:Connect(function()
                                          if v91 and v92 then
                                            v92 = false
                                            wear:InvokeServer(18756289999)
                                          end
                                        end)

                                        local boomboxMenu = Instance.new("ScreenGui")
                                        boomboxMenu.Name = "BoomboxMenu"
                                        boomboxMenu.ResetOnSpawn = false
                                        boomboxMenu.Enabled = false
                                        boomboxMenu.Parent = localPlayer15:WaitForChild("PlayerGui")

                                        local frame3 = Instance.new("Frame")
                                        frame3.Size = UDim2.new(0, 500, 0, 220)
                                        frame3.Position = UDim2.new(0.5, -250, 0.4, -110)
                                        frame3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                                        frame3.BorderSizePixel = 0
                                        frame3.Parent = boomboxMenu

                                        local uiCorner5 = Instance.new("UICorner")
                                        uiCorner5.CornerRadius = UDim.new(0, 20)
                                        uiCorner5.Parent = frame3

                                        local textLabel5 = Instance.new("TextLabel")
                                        textLabel5.Size = UDim2.new(1, -20, 0, 80)
                                        textLabel5.Position = UDim2.new(0, 10, 0, 10)
                                        textLabel5.BackgroundTransparency = 1
                                        textLabel5.TextColor3 = Color3.new(1, 1, 1)
                                        textLabel5.TextWrapped = true
                                        textLabel5.TextScaled = true
                                        textLabel5.Font = Enum.Font.Gotham
                                        textLabel5.Text = "Apenas suporta 3s de áudio, existem 2 modos:\nUm reproduz localmente e o outro todos escutam."
                                        textLabel5.Parent = frame3

                                        local textBox = Instance.new("TextBox")
                                        textBox.Size = UDim2.new(0, 400, 0, 50)
                                        textBox.Position = UDim2.new(0.5, -200, 0, 100)
                                        textBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                                        textBox.TextColor3 = Color3.new(1, 1, 1)
                                        textBox.TextScaled = true
                                        textBox.Font = Enum.Font.GothamBold
                                        textBox.PlaceholderText = "Digite o ID do áudio"
                                        textBox.Parent = frame3

                                        local uiCorner6 = Instance.new("UICorner")
                                        uiCorner6.CornerRadius = UDim.new(0, 10)
                                        uiCorner6.Parent = textBox

                                        local textButton = Instance.new("TextButton")
                                        textButton.Size = UDim2.new(0, 190, 0, 45)
                                        textButton.Position = UDim2.new(0.5, -200, 1, -55)
                                        textButton.Text = "Play!"
                                        textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                                        textButton.TextColor3 = Color3.new(1, 1, 1)
                                        textButton.Font = Enum.Font.GothamBold
                                        textButton.TextScaled = true
                                        textButton.Parent = frame3

                                        local uiCorner7 = Instance.new("UICorner")
                                        uiCorner7.CornerRadius = UDim.new(0, 10)
                                        uiCorner7.Parent = textButton

                                        local textButton2 = Instance.new("TextButton")
                                        textButton2.Size = UDim2.new(0, 190, 0, 45)
                                        textButton2.Position = UDim2.new(0.5, 10, 1, -55)
                                        textButton2.Text = "Play All!"

                                        textButton2.BackgroundColor3 = Color3.fromRGB(
                                          25, 25, 25
                                        )

                                        textButton2.TextColor3 = Color3.new(1, 1, 1)
                                        textButton2.Font = Enum.Font.GothamBold
                                        textButton2.TextScaled = true
                                        textButton2.Parent = frame3

                                        local uiCorner8 = Instance.new("UICorner")
                                        uiCorner8.CornerRadius = UDim.new(0, 10)
                                        uiCorner8.Parent = textButton2

                                        local function f46(p16)
                                          if p16.Name ~= "ServerBoombox" then
                                            return
                                          end

                                          local v93 = false

                                          p16.Activated:Connect(function()
                                            v93 = not v93
                                            boomboxMenu.Enabled = v93
                                          end)

                                          p16.Unequipped:Connect(function()
                                            v93 = false
                                            boomboxMenu.Enabled = false
                                          end)
                                        end

                                        for key4, value32 in pairs(localPlayer15.Backpack:GetChildren()) do
                                          f46(value32)
                                        end

                                        localPlayer15.Backpack.ChildAdded:Connect(f46)
                                        local waitForChild3 = replicatedStorage:WaitForChild("RE"):WaitForChild("1Gu1n")
                                        local sound

                                        textButton.MouseButton1Click:Connect(function()
                                          local text2 = textBox.Text

                                          if text2 == "" then
                                            return
                                          end

                                          sound = Instance.new("Sound")
                                          sound.SoundId = "rbxassetid://" .. text2
                                          sound.Volume = 1
                                          sound.Looped = false
                                          sound.Parent = handle
                                          sound:Play()
                                        end)

                                        textButton2.MouseButton1Click:Connect(function()
                                          local text3 = textBox.Text

                                          if text3 == "" then
                                            return
                                          end

                                          sound = Instance.new("Sound")
                                          sound.SoundId = "rbxassetid://" .. text3
                                          sound.Volume = 1
                                          sound.Looped = false
                                          sound.Parent = handle
                                          sound:Play()

                                          task.delay(3, function() sound:Destroy() end)

                                          for index18, value33 in ipairs(players:GetPlayers()) do
                                            if value33.Character
                                              and value33.Character:FindFirstChild("HumanoidRootPart") then
                                              local humanoidRootPart = value33.Character.HumanoidRootPart

                                              waitForChild3:FireServer(unpack({
                                                humanoidRootPart, humanoidRootPart,
                                                Vector3.new(0, -1, 0), Vector3.zero,
                                                humanoidRootPart, humanoidRootPart, text3,
                                                text3, { true },
                                                {
                                                  25, Vector3.new(0.25, 0.25, 100),
                                                  BrickColor.new(24), 0.25,
                                                  Enum.Material.SmoothPlastic, 0.25,
                                                },
                                                true, false,
                                              }))
                                            end
                                          end
                                        end)
                                      end,
                                    })

                                    tab:AddSection({ "Tocar som com o seu ID" })

                                    v34 = false

                                    function f6(p17)
                                      if not p17 or p17 == "" then
                                        return
                                      end

                                      for index19, value34 in ipairs(players:GetPlayers()) do
                                        if value34.Character
                                          and value34.Character:FindFirstChild("HumanoidRootPart") then
                                          local humanoidRootPart2 = value34.Character.HumanoidRootPart

                                          local v94 = {
                                            humanoidRootPart2, humanoidRootPart2,
                                            Vector3.new(0, -1, 0), Vector3.zero,
                                            humanoidRootPart2, humanoidRootPart2, tostring(p17),
                                            tostring(p17), { true },
                                            {
                                              25, Vector3.new(0.25, 0.25, 100),
                                              BrickColor.new(24), 0.25,
                                              Enum.Material.SmoothPlastic, 0.25,
                                            },
                                            true, false,
                                          }

                                          pcall(function()
                                            waitForChild:FireServer(unpack(v94))
                                          end)
                                        end

                                        task.wait(0.1)
                                      end

                                      local instance = Instance.new("Sound", workspace)
                                      instance.SoundId = "rbxassetid://" .. p17
                                      instance.Volume = 1
                                      instance:Play()

                                      task.delay(3, function() instance:Destroy() end)
                                    end

                                    v35 = ""

                                    tab:AddTextBox({
                                      Name = "Insira o ID Audio All",
                                      Description = "Digite o ID do som que deseja tocar",
                                      Default = "",
                                      PlaceholderText = "Exemplo: 6832470734",
                                      ClearTextOnFocus = true,
                                      Callback = function(value35) v35 = value35 end,
                                    })

                                    tab:AddButton({
                                      Name = "Tocar Som",
                                      Description = "Clique para tocar a música inserida",
                                      Callback = function() f6(v35) end,
                                    })

                                    tab:AddToggle({
                                      Name = "Loop",
                                      Description = "Ative para colocar o som em loop",
                                      Default = false,
                                      Callback = function(value36)
                                        v34 = value36

                                        task.spawn(function()
                                          while v34 do
                                            if v35 ~= "" then
                                              f6(v35)
                                            end

                                            task.wait(1)
                                          end
                                        end)
                                      end,
                                    })

                                    local function f47(name3, p18, p19)
                                      local v95 = {}
                                      local v96 = {}

                                      for key5, value37 in pairs(p18) do
                                        for index20, value38 in ipairs(value37) do
                                          if value38.name ~= "" then
                                            table.insert(v95, value38.name)
                                            v96[value38.name] = value38.id
                                          end
                                        end
                                      end

                                      local v97 = v96[p19] or nil
                                      local v98 = false

                                      tab:AddDropdown({
                                        Name = name3,
                                        Description = "Escolha um som para tocar no servidor",
                                        Default = p19,
                                        Multi = false,
                                        Options = v95,
                                        Callback = function(value39) v97 = v96[value39] end,
                                      })

                                      tab:AddButton({
                                        Name = "Tocar Som Selecionado",
                                        Callback = function() f6(v97) end,
                                      })

                                      tab:AddToggle({
                                        Name = "Loop Som Selecionado",
                                        Default = false,
                                        Callback = function(value40)
                                          v98 = value40

                                          task.spawn(function()
                                            while v98 do
                                              if v97 then
                                                f6(v97)
                                              end

                                              task.wait(1)
                                            end
                                          end)
                                        end,
                                      })
                                    end

                                    tab:AddSection({ "Dropdown de Memes" })

                                    f47("Selecione um meme", {
                                      Memes = {
                                        { name = "pankapakan", id = "122547522269143" },
                                        {
                                          name = "Gemido ultra rápido",
                                          id = "128863565301778",
                                        },
                                        { name = "vai g0z@?", id = "116293771329297" },
                                        { name = "G0z33iiii", id = "93462644278510" },
                                        { name = "Hommmm ", id = "133135656929513" },
                                        { name = "gemido1", id = "105263704862377" },
                                        { name = " gemido2", id = "92186909873950" },
                                        { name = "sus sex", id = "128137573022197" },
                                        { name = "gemido estranho", id = "131219411501419" },
                                        { name = "gemido kawai", id = "100409245129170" },
                                        { name = "Hentai wiaaaaan", id = "88332347208779" },
                                        { name = "iamete cunasai", id = "108494476595033" },
                                        { name = "dodichan onnn...", id = "134640594695384" },
                                        { name = "Loly gemiD0", id = "119277017538197" },
                                        { name = "ai poison", id = "115870718113313" },
                                        { name = "chegachega SUS", id = "77405864184828" },
                                        { name = "uwu", id = "76820720070248" },
                                        { name = "ai meu cuzin", id = "130714479795369" },
                                        { name = "girl audio 2", id = "84207358477461" },
                                        { name = "Hoo ze da manga", id = "106624090319571" },
                                        {
                                          name = "ai alexandre de moraes",
                                          id = "107261471941570",
                                        },
                                        { name = "haaii meme", id = "120006672159037" },
                                        { name = "Get Out", id = "18900008907" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "GoGogo gogogo", id = "103262503950995" },
                                        { name = "Toma jack", id = "132603645477541" },
                                        { name = "Toma jackV2", id = "100446887985203" },
                                        {
                                          name = "Toma jack no sol quente",
                                          id = "97476487963273",
                                        },
                                        { name = "ifood", id = "133843750864059" },
                                        {
                                          name = "pelo geito ela ta querendo ram",
                                          id = "94395705857835",
                                        },
                                        { name = "lula vai todo mundo", id = "136804576009416" },
                                        { name = "coringa", id = "84663543883498" },
                                        { name = "shoope", id = "8747441609" },
                                        { name = "quenojo", id = "103440368630269" },
                                        { name = "sai dai lava prato", id = "101232400175829" },
                                        {
                                          name = "se e loko numconpeça",
                                          id = "78442476709262",
                                        },
                                        {
                                          name = "mita sequer que eu too uma",
                                          id = "94889439372168",
                                        },
                                        {
                                          name = "Hoje vou ser tua mulher e tu",
                                          id = "90844637105538",
                                        },
                                        {
                                          name = "Deita aqui eu mandei vc deitar sirens",
                                          id = "100291188941582",
                                        },
                                        { name = "miau", id = "131804436682424" },
                                        { name = "skibidi", id = "128771670035179" },
                                        { name = "BIRULEIBI", id = "121569761604968" },
                                        {
                                          name = "biseabesjnjkasnakjsndjkafb",
                                          id = "133106998846260",
                                        },
                                        {
                                          name = "vai corinthians!!....",
                                          id = "127012936767471",
                                        },
                                        { name = "my sigman", id = "103431815659907" },
                                        { name = "mama", id = "106850066985594" },
                                        { name = "OH MY GOD", id = "73349649774476" },
                                        { name = "aahhh plankton meme", id = "95982351322190" },
                                        { name = "CHINABOY", id = "84403553163931" },
                                        {
                                          name = "PASTOR MIRIM E A LÍNGUA DOS ANJOS",
                                          id = "71153532555470",
                                        },
                                        { name = "Sai d3sgraç@", id = "106973692977609" },
                                        { name = "opa salve tudo bem?", id = "80870678096428" },
                                        {
                                          name = "OLHA O CARRO DO DANONE",
                                          id = "110493863773948",
                                        },
                                        {
                                          name = "Nãoooo, Nãoooo, Nãooo!!!!!",
                                          id = "95825536480898",
                                        },
                                        {
                                          name = "UM PÉ DE SIRIGUELA KK",
                                          id = "112804043442210",
                                        },
                                        { name = "e o carro da pamonha", id = "94951629392683" },
                                        { name = "BOM DIAAAAAAAAAA", id = "136579844511260" },
                                        { name = "ai-meu-chiclete", id = "92911732806153" },
                                        {
                                          name = "posso te ligar ou tua mulher...",
                                          id = "103211341252816",
                                        },
                                        {
                                          name = "Boa chi joga muito cara",
                                          id = "110707564387669",
                                        },
                                        { name = "Oqueee meme", id = "120092799810101" },
                                        { name = "kkk muito fei", id = "79241074803021" },
                                        {
                                          name = "lula cade o ze gotinha",
                                          id = "86012585992725",
                                        },
                                        { name = "morreu", id = "8872409975" },
                                        {
                                          name = "a-pia-ta-cheia-de-louca",
                                          id = "98076927129047",
                                        },
                                        { name = "Mahito killSong", id = "128669424001766" },
                                        { name = "Sucumba", id = "7946300950" },
                                        { name = "nem clicou o thurzin", id = "84428355313544" },
                                        { name = "fiui OLHA MENSAGEM", id = "121668429878811" },
                                        { name = "tooomeee", id = "128319664118768" },
                                        { name = "risada de ladrao", id = "133065882609605" },
                                        { name = "E o PIX nada ainda", id = "113831443375212" },
                                        { name = "Vo nada vo nada", id = "89093085290586" },
                                        { name = "Eli gosta", id = "105012436535315" },
                                        {
                                          name = "um cavalo de tres pernas?",
                                          id = "8164241439",
                                        },
                                        { name = "voces sao um bado de fdp", id = "8232773326" },
                                        { name = "HAHA TROLLEI ATÉ VOCÊ", id = "7021794555" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" },
                                        { name = "Calaboca Kenga", id = "86494561679259" },
                                        { name = "alvincut", id = "88788640194373" },
                                        {
                                          name = "e a risada faz como?",
                                          id = "140713372459057",
                                        },
                                        { name = "voce deve se m@t4", id = "100227426848009" },
                                        { name = "receba", id = "94142662616215" },
                                        { name = "UUIIII", id = "73210569653520" },
                                        { name = "sai", id = "121169949217007" },
                                        { name = "risada boa dms", id = "127589011971759" },
                                        { name = "vacilo perna de pau", id = "106809680656199" },
                                        { name = "gomo gomo no!!!", id = "137067472449625" },
                                        { name = "arroto", id = "140203378050178" },
                                        { name = "iraaaa", id = "136752451575091" },
                                        {
                                          name = "não fica se achando muito não",
                                          id = "101588606280167",
                                        },
                                        {
                                          name = "WhatsApp notificaçaoV1",
                                          id = "107004225739474",
                                        },
                                        { name = "WhatsApp notificaçaoV2", id = "18850631582" },
                                        { name = "SamsungV1", id = "123767635061073" },
                                        { name = "SamsungV2", id = "96579234730244" },
                                        { name = "Shiiii", id = "120566727202986" },
                                        { name = "ai_tomaa miku", id = "139770074770361" },
                                        { name = "Miku Miku", id = "72812231495047" },
                                        { name = "kuru_kuru", id = "122465710753374" },
                                        { name = "PM ROCAM", id = "96161547081609" },
                                        { name = "cavalo!!", id = "78871573440184" },
                                        {
                                          name = "deixa os garoto brinca",
                                          id = "80291355054807",
                                        },
                                        { name = "flamengo", id = "137774355552052" },
                                        { name = "sai do mei satnas", id = "127944706557246" },
                                        {
                                          name = "namoral agora e a hora",
                                          id = "120677947987369",
                                        },
                                        {
                                          name = "n pode me chutar pq seu celebro e burro",
                                          id = "82284055473737",
                                        },
                                        {
                                          name = "vc ta fudido vou te pegar",
                                          id = "120214772725166",
                                        },
                                        { name = "deley", id = "102906880476838" },
                                        { name = "Tu e um beta", id = "130233956349541" },
                                        {
                                          name = "Porfavor n tira eu nao",
                                          id = "85321374020324",
                                        },
                                        {
                                          name = "Olá beleza vc pode me dá muitos",
                                          id = "74235334504693",
                                        },
                                        { name = "Discord sus", id = "122662798976905" },
                                        { name = "rojao apito", id = "6549021381" },
                                        { name = "off", id = "1778829098" },
                                        { name = "Kazuma kazuma", id = "127954653962405" },
                                        { name = "sometourado", id = "123592956882621" },
                                        { name = "Estouradoespad", id = "136179020015211" },
                                        { name = "Alaku bommm", id = "110796593805268" },
                                        { name = "busss", id = "139841197791567" },
                                        { name = "Estourado wItb", id = "137478052262430" },
                                        { name = "sla", id = "116672405522828" },
                                        { name = "HA HA HA", id = "138236682866721" },
                                      },
                                    }, "pankapakan")

                                    tab:AddSection({ " tacar o terror ou efeito no server" })

                                    f47("Selecione um terror ou efeito", {
                                      ["efeito/terror"] = {
                                        { name = "jumpscar", id = "91784486966761" },
                                        { name = "n se preocupe", id = "87041057113780" },
                                        {
                                          name = "eles estao todos mortos",
                                          id = "70605158718179",
                                        },
                                        { name = "gritoestourado", id = "7520729342" },
                                        { name = "gritomedo", id = "113029085566978" },
                                        { name = "Nukesiren", id = "9067330158" },
                                        { name = "nuclear sirenv2", id = "675587093" },
                                        { name = "Alertescola", id = "6607047008" },
                                        { name = "Memealertsiren", id = "8379374771" },
                                        { name = "sirenv3", id = "6766811806" },
                                        { name = "Alarm estourAAAA...", id = "93354528379052" },
                                        { name = "MegaMan Alarm", id = "1442382907" },
                                        { name = "Alarm bookhaven", id = "1526192493" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "alet malaysia", id = "7714172940" },
                                        { name = "Risada", id = "79191730206814" },
                                        { name = "Hahahah", id = "90096947219465" },
                                        { name = "scream", id = "314568939" },
                                        { name = "Terrified meme scream", id = "5853668794" },
                                        { name = "Sonic.exe Scream Effect", id = "146563959" },
                                        { name = "Demon Scream", id = "2738830850" },
                                        { name = "SCP-096 Scream (raging)", id = "343430735" },
                                        { name = "Nightmare Yelling Bursts", id = "9125713501" },
                                        { name = "HORROR SCREAM 07", id = "9043345732" },
                                        {
                                          name = "Female Scream Woman Screams",
                                          id = "9114397912",
                                        },
                                        { name = "Scream1", id = "1319496541" },
                                        { name = "Scream2", id = "199978176" },
                                        { name = "scary maze scream", id = "270145703" },
                                        {
                                          name = "SammyClassicSonicFan's Scream",
                                          id = "143942090",
                                        },
                                        { name = "FNAF 2 Death Scream", id = "1572549161" },
                                        { name = "cod zombie scream", id = "8566359672" },
                                        {
                                          name = "Slendytubbies- CaveTubby Scream",
                                          id = "1482639185",
                                        },
                                        { name = "FNAF 2 Death Scream", id = "5537531920" },
                                        { name = "HORROR SCREAM 15", id = "9043346574" },
                                        { name = "Jumpscare Scream", id = "6150329916" },
                                        { name = "FNaF: Security Breach", id = "2050522547" },
                                        { name = "llllllll", id = "5029269312" },
                                        { name = "loud jumpscare", id = "7236490488" },
                                        { name = "fnaf", id = "6982454389" },
                                        { name = "Pinkamena Jumpscare 1", id = "192334186" },
                                        { name = "Ennard Jumpscare 2", id = "629526707" },
                                        { name = "a sla medo dino", id = "125506416092123" },
                                        {
                                          name = "Backrooms Bacteria Pitfalls ",
                                          id = "81325342128575",
                                        },
                                        { name = "error Infinite", id = "3893790326" },
                                        { name = "Screaming Meme", id = "107732411055226" },
                                        { name = "Jumpscare - SCP CB", id = "97098997494905" },
                                        { name = "mirror jumpscare", id = "80005164589425" },
                                        { name = "PTLD-39 Jumpscare", id = "5581462381" },
                                        { name = "jumpscare:Play()", id = "121519648044128" },
                                        { name = "mimic jumpscare", id = "91998575878959" },
                                        {
                                          name = "DOORS Glitch Jumpscare Sound",
                                          id = "96377507894391",
                                        },
                                        {
                                          name = "FNAS 4 Nightmare Mario",
                                          id = "99804224106385",
                                        },
                                        {
                                          name = "Death House I Jumpscare Sound",
                                          id = "8151488745",
                                        },
                                        { name = "Shinky Jumpscare", id = "123447772144411" },
                                        {
                                          name = "FNaTI Jumpscare Oblitus casa",
                                          id = "18338717319",
                                        },
                                        { name = "fnaf jumpscare loadmode", id = "18911896588" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                        { name = "", id = "" }, { name = "", id = "" },
                                      },
                                    }, "jumpscar")

                                    local scriptsTrollsTab = window:MakeTab({
                                      Title = "Scripts Trolls",
                                      Icon = "rbxassetid://13364900349",
                                    })

                                    scriptsTrollsTab:AddSection({ "Black Hole" })

                                    scriptsTrollsTab:AddButton({
                                      Name = "Black Hole",
                                      Description = " Ativando isso você puxa Parts até o seu personagem",
                                      Callback = function()
                                        local localPlayer16 = players.LocalPlayer
                                        local v99 = 1
                                        local v100 = 10
                                        local v101 = false

                                        local function f48()
                                          local humanoidRootPart3 = (localPlayer16.Character
                                            or localPlayer16.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")

                                          local instance2 = Instance.new("Folder", v1)
                                          local instance3 = Instance.new("Part", instance2)

                                          local instance4 = Instance.new(
                                            "Attachment", instance3
                                          )

                                          instance3.Anchored = true
                                          instance3.CanCollide = false
                                          instance3.Transparency = 1

                                          return humanoidRootPart3, instance4
                                        end

                                        local v102, v103 = f48()
                                        local v104 = v103

                                        if not getgenv().Network then
                                          getgenv().Network = {
                                            BaseParts = {},
                                            Velocity = Vector3.new(
                                              14.46262424, 14.46262424, 14.46262424
                                            ),
                                          }

                                          function Network.RetainPart(p20)
                                            if typeof(p20) == "Instance" and p20:IsA("BasePart")
                                              and p20:IsDescendantOf(v1) then
                                              table.insert(Network.BaseParts, p20)

                                              p20.CustomPhysicalProperties = PhysicalProperties.new(
                                                0, 0, 0, 0, 0
                                              )

                                              p20.CanCollide = false
                                            end
                                          end

                                          local function f49()
                                            localPlayer16.ReplicationFocus = v1

                                            runService.Heartbeat:Connect(function()
                                              sethiddenproperty(
                                                localPlayer16, "SimulationRadius", math.huge
                                              )

                                              for key6, value41 in pairs(Network.BaseParts) do
                                                if value41:IsDescendantOf(v1) then
                                                  value41.Velocity = Network.Velocity
                                                end
                                              end
                                            end)
                                          end

                                          f49()
                                        end

                                        local function f50(p21)
                                          if p21:IsA("Part") and not p21.Anchored
                                            and not p21.Parent:FindFirstChild("Humanoid")
                                            and not p21.Parent:FindFirstChild("Head")
                                            and p21.Name ~= "Handle" then
                                            local v105, v106 = p21:GetChildren()

                                            for key7, value42 in next, v105, v106 do
                                              local bodyAngularVelocity = value42:IsA("BodyAngularVelocity")
                                              local v107 = bodyAngularVelocity

                                              if bodyAngularVelocity then
                                                ::L10433212::

                                                if v107 then
                                                  value42:Destroy()
                                                end
                                              else
                                                local bodyForce = value42:IsA("BodyForce")
                                                local v108 = bodyForce

                                                if bodyForce then
                                                  ::L496074::
                                                  v107 = v108
                                                  goto L10433212
                                                else
                                                  local bodyGyro = value42:IsA("BodyGyro")
                                                  local v109 = bodyGyro

                                                  if bodyGyro then
                                                    ::L10646540::
                                                    v108 = v109
                                                    goto L496074
                                                  else
                                                    local bodyPosition = value42:IsA("BodyPosition")

                                                    if bodyPosition then
                                                      v109 = bodyPosition
                                                      goto L10646540
                                                    else
                                                      if value42:IsA("BodyThrust") then
                                                      end

                                                      local bodyVelocity = value42:IsA("BodyVelocity")
                                                        or value42:IsA("RocketPropulsion")
                                                    end
                                                  end
                                                end
                                              end
                                            end

                                            if p21:FindFirstChild("Attachment") then
                                              p21:FindFirstChild("Attachment"):Destroy()
                                            end

                                            if p21:FindFirstChild("AlignPosition") then
                                              p21:FindFirstChild("AlignPosition"):Destroy()
                                            end

                                            if p21:FindFirstChild("Torque") then
                                              p21:FindFirstChild("Torque"):Destroy()
                                            end

                                            p21.CanCollide = false

                                            local instance5 = Instance.new("Torque", p21)

                                            instance5.Torque = Vector3.new(
                                              1000000, 1000000, 1000000
                                            )

                                            local instance6 = Instance.new("AlignPosition", p21)
                                            local instance7 = Instance.new("Attachment", p21)
                                            instance5.Attachment0 = instance7

                                            instance6.MaxForce = math.huge
                                            instance6.MaxVelocity = math.huge
                                            instance6.Responsiveness = 500
                                            instance6.Attachment0 = instance7
                                            instance6.Attachment1 = v104

                                            return
                                          end
                                        end

                                        local function f51()
                                          v101 = not v101

                                          if v101 then
                                            local v110, v111 = v1:GetDescendants()

                                            for key8, value43 in next, v110, v111 do
                                              f50(value43)
                                            end

                                            v1.DescendantAdded:Connect(function(descendant)
                                              if v101 then
                                                f50(descendant)
                                              end
                                            end)

                                            spawn(function()
                                              while v101 and runService.RenderStepped:Wait() do
                                                v99 = v99 + math.rad(2)
                                                local v112 = math.cos(v99)
                                                local v113 = math.sin(v99)

                                                v104.WorldCFrame = v102.CFrame * CFrame.new(
                                                  v112 * v100, 0, v113 * v100
                                                )
                                              end
                                            end)
                                          else
                                            v104.WorldCFrame = CFrame.new(0, -1000, 0)
                                          end
                                        end

                                        localPlayer16.CharacterAdded:Connect(function()
                                          local v114
                                          v102, v114 = f48()
                                          v104 = v114

                                          if v101 then
                                            f51()
                                          end
                                        end)

                                        local projetoLKB = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))():Window("Projeto LKB")

                                        projetoLKB:Slider("Radius Blackhole", 1, 100, 10, function(p22)
                                          v100 = p22
                                        end)

                                        projetoLKB:Toggle("Blackhole", true, function(p23)
                                          if p23 then
                                            f51()
                                          else
                                            v101 = false
                                          end
                                        end)

                                        spawn(function()
                                          while true do
                                            runService.RenderStepped:Wait()

                                            if v101 then
                                              v99 = v99 + math.rad(angleSpeed)
                                            end
                                          end
                                        end)

                                        f51()
                                      end,
                                    })

                                    scriptsTrollsTab:AddSection({ "Puxar Parts" })

                                    scriptsTrollsTab:AddButton({
                                      Name = "Puxar Parts",
                                      Description = "Para usar, chegue perto do Player Selecionado",
                                      Callback = function()
                                        local gui = Instance.new("ScreenGui")
                                        local main = Instance.new("Frame")
                                        local box = Instance.new("TextBox")
                                        local uiTextSizeConstraint = Instance.new("UITextSizeConstraint")
                                        local label = Instance.new("TextLabel")
                                        local uiTextSizeConstraint2 = Instance.new("UITextSizeConstraint")
                                        local button = Instance.new("TextButton")
                                        local uiTextSizeConstraint3 = Instance.new("UITextSizeConstraint")

                                        gui.Name = "Gui"
                                        gui.Parent = gethui()
                                        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

                                        main.Name = "Main"
                                        main.Parent = gui
                                        main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
                                        main.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                        main.BorderSizePixel = 0

                                        main.Position = UDim2.new(
                                          0.335954279, 0, 0.542361975, 0
                                        )

                                        main.Size = UDim2.new(0.240350261, 0, 0.166880623, 0)
                                        main.Active = true
                                        main.Draggable = true

                                        box.Name = "Box"
                                        box.Parent = main
                                        box.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
                                        box.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                        box.BorderSizePixel = 0

                                        box.Position = UDim2.new(
                                          0.0980926454, 0, 0.218712583, 0
                                        )

                                        box.Size = UDim2.new(0.801089942, 0, 0.364963502, 0)

                                        box.FontFace = Font.new(
                                          "rbxasset://fonts/families/SourceSansSemibold.json",
                                          Enum.FontWeight.Bold, Enum.FontStyle.Normal
                                        )

                                        box.PlaceholderText = "Player here"
                                        box.Text = ""
                                        box.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        box.TextScaled = true
                                        box.TextSize = 31
                                        box.TextWrapped = true

                                        uiTextSizeConstraint.Parent = box
                                        uiTextSizeConstraint.MaxTextSize = 31

                                        label.Name = "Label"
                                        label.Parent = main
                                        label.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
                                        label.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                        label.BorderSizePixel = 0
                                        label.Size = UDim2.new(1, 0, 0.160583943, 0)

                                        label.FontFace = Font.new(
                                          "rbxasset://fonts/families/Nunito.json",
                                          Enum.FontWeight.Bold, Enum.FontStyle.Normal
                                        )

                                        label.Text = "Bring Parts | Made by: Lusquinha_067"
                                        label.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        label.TextScaled = true
                                        label.TextSize = 14
                                        label.TextWrapped = true

                                        uiTextSizeConstraint2.Parent = label
                                        uiTextSizeConstraint2.MaxTextSize = 21

                                        button.Name = "Button"
                                        button.Parent = main
                                        button.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
                                        button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                        button.BorderSizePixel = 0

                                        button.Position = UDim2.new(
                                          0.183284417, 0, 0.656760991, 0
                                        )

                                        button.Size = UDim2.new(0.629427791, 0, 0.277372271, 0)
                                        button.Font = Enum.Font.Nunito
                                        button.Text = "Bring | Off"
                                        button.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        button.TextScaled = true
                                        button.TextSize = 28
                                        button.TextWrapped = true

                                        uiTextSizeConstraint3.Parent = button
                                        uiTextSizeConstraint3.MaxTextSize = 28

                                        local localPlayer17 = players.LocalPlayer
                                        mainStatus = true

                                        userInputService.InputBegan:Connect(function(input, p24)
                                          if input.KeyCode == Enum.KeyCode.RightControl
                                            and not p24 then
                                            mainStatus = not mainStatus
                                            main.Visible = mainStatus
                                          end
                                        end)

                                        local instance8 = Instance.new("Folder", v1)
                                        local instance9 = Instance.new("Part", instance8)
                                        local instance10 = Instance.new("Attachment", instance9)

                                        instance9.Anchored = true
                                        instance9.CanCollide = false
                                        instance9.Transparency = 1

                                        if not getgenv().Network then
                                          getgenv().Network = {
                                            BaseParts = {},
                                            Velocity = Vector3.new(
                                              14.46262424, 14.46262424, 14.46262424
                                            ),
                                          }

                                          function Network.RetainPart(p25)
                                            if p25:IsA("BasePart") and p25:IsDescendantOf(v1) then
                                              table.insert(Network.BaseParts, p25)

                                              p25.CustomPhysicalProperties = PhysicalProperties.new(
                                                0, 0, 0, 0, 0
                                              )

                                              p25.CanCollide = false
                                            end
                                          end

                                          local function f52()
                                            localPlayer17.ReplicationFocus = v1

                                            runService.Heartbeat:Connect(function()
                                              sethiddenproperty(
                                                localPlayer17, "SimulationRadius", math.huge
                                              )

                                              for key9, value44 in pairs(Network.BaseParts) do
                                                if value44:IsDescendantOf(v1) then
                                                  value44.Velocity = Network.Velocity
                                                end
                                              end
                                            end)
                                          end

                                          f52()
                                        end

                                        local function f53(p26)
                                          if p26:IsA("BasePart") and not p26.Anchored
                                            and not p26.Parent:FindFirstChildOfClass("Humanoid")
                                            and not p26.Parent:FindFirstChild("Head")
                                            and p26.Name ~= "Handle" then
                                            for index21, value45 in ipairs(p26:GetChildren()) do
                                              if value45:IsA("BodyMover")
                                                or value45:IsA("RocketPropulsion") then
                                                value45:Destroy()
                                              end
                                            end

                                            if p26:FindFirstChild("Attachment") then
                                              p26:FindFirstChild("Attachment"):Destroy()
                                            end

                                            if p26:FindFirstChild("AlignPosition") then
                                              p26:FindFirstChild("AlignPosition"):Destroy()
                                            end

                                            if p26:FindFirstChild("Torque") then
                                              p26:FindFirstChild("Torque"):Destroy()
                                            end

                                            p26.CanCollide = false

                                            local instance11 = Instance.new("Torque", p26)

                                            instance11.Torque = Vector3.new(
                                              100000, 100000, 100000
                                            )

                                            local instance12 = Instance.new(
                                              "AlignPosition", p26
                                            )

                                            local instance13 = Instance.new("Attachment", p26)
                                            instance11.Attachment0 = instance13

                                            instance12.MaxForce = math.huge
                                            instance12.MaxVelocity = math.huge
                                            instance12.Responsiveness = 200
                                            instance12.Attachment0 = instance13
                                            instance12.Attachment1 = instance10
                                          end
                                        end

                                        local v115 = false
                                        local humanoidRootPart4, connect2

                                        local function f54()
                                          v115 = not v115

                                          if v115 then
                                            button.Text = "Bring Parts | On"

                                            for index22, value46 in ipairs(v1:GetDescendants()) do
                                              f53(value46)
                                            end

                                            connect2 = v1.DescendantAdded:Connect(function(descendant2)
                                              if v115 then
                                                f53(descendant2)
                                              end
                                            end)

                                            spawn(function()
                                              while v115 and runService.RenderStepped:Wait() do
                                                instance10.WorldCFrame = humanoidRootPart4.CFrame
                                              end
                                            end)
                                          else
                                            button.Text = "Bring Parts | Off"

                                            if connect2 then
                                              connect2:Disconnect()
                                            end
                                          end
                                        end

                                        local function f55(p27)
                                          local v116 = string.lower(p27)

                                          for key10, value47 in pairs(players:GetPlayers()) do
                                            local v117 = string.lower(value47.Name)

                                            if string.find(v117, v116) then
                                              return value47
                                            elseif string.find(
                                              string.lower(value47.DisplayName), v116
                                            ) then
                                              return value47
                                            end
                                          end
                                        end

                                        local v118

                                        coroutine.wrap(function()
                                          Instance.new("Script", box).Parent.FocusLost:Connect(function(p28)
                                            if p28 then
                                              v118 = f55(box.Text)

                                              if v118 then
                                                box.Text = v118.Name
                                                print("Player found:", v118.Name)
                                              else
                                                print("Player not found")
                                              end
                                            end
                                          end)
                                        end)()

                                        coroutine.wrap(function()
                                          Instance.new("Script", button).Parent.MouseButton1Click:Connect(function()
                                            if v118 then
                                              humanoidRootPart4 = (v118.Character
                                                or v118.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")

                                              f54()
                                            else
                                              print("Player is not selected")
                                            end
                                          end)
                                        end)()
                                      end,
                                    })

                                    scriptsTrollsTab:AddSection({ "Invisível" })

                                    scriptsTrollsTab:AddButton({
                                      Name = "Ficar Invisível",
                                      Description = "Ficar invisível FE",
                                      Callback = function()
                                        replicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
                                          [1] = {
                                            [1] = 102344834840950,
                                            [2] = 70400527171038,
                                            [3] = 0,
                                            [4] = 0,
                                            [5] = 0,
                                            [6] = 0,
                                          },
                                        }))

                                        replicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(111858803548720)

                                        local v119 = {}

                                        for index23, value48 in ipairs({
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.BackAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FaceAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FrontAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.NeckAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HatAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HairAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.ShouldersAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.WaistAccessory,
                                          game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.GraphicTShirt,
                                        }) do
                                          for match in string.gmatch(value48, "%d+") do
                                            table.insert(v119, tonumber(match))
                                          end
                                        end

                                        wait()

                                        for index24, value49 in ipairs(v119) do
                                          local v120 = value49

                                          task.spawn(function()
                                            replicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(v120)
                                            print(v120)
                                          end)
                                        end
                                      end,
                                    })

                                    scriptsTrollsTab:AddSection({ "Avatar RGB" })

                                    v36 = {
                                      "Bright red", "Lime green", "Bright blue",
                                      "Bright yellow", "Bright cyan", "Hot pink",
                                      "Royal purple",
                                    }

                                    function f7(p29)
                                      replicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(p29)
                                    end

                                    v37 = false

                                    function f28(p30)
                                      v37 = p30

                                      if v37 then
                                        while v37 do
                                          for index25, value50 in ipairs(v36) do
                                            if not v37 then
                                              return
                                            end

                                            f7(value50)
                                            wait(0.5)
                                          end
                                        end

                                        return
                                      end
                                    end

                                    scriptsTrollsTab:AddToggle({
                                      Name = "RGB Character",
                                      Description = "Deixa seu personagem RGB",
                                      Default = false,
                                      Callback = function(value51) f28(value51) end,
                                    })

                                    scriptsTrollsTab:AddSection({ "Cabelo RGB" })

                                    v38 = {
                                      Color3.new(1, 1, 0), Color3.new(0, 0, 1),
                                      Color3.new(1, 0, 1), Color3.new(1, 1, 1),
                                      Color3.new(0, 1, 0), Color3.new(0.5, 0, 1),
                                      Color3.new(1, 0.647, 0), Color3.new(0, 1, 1),
                                    }

                                    v39 = false

                                    function f29()
                                      local v121 = 1

                                      while v39 do
                                        if not v39 then
                                          break
                                        end

                                        replicatedStorage:WaitForChild("RE"):WaitForChild("1Max1y"):FireServer(unpack({
                                          [1] = "ChangeHairColor2",
                                          [2] = v38[v121],
                                        }))

                                        wait(0.1)
                                        v121 = v121 % #v38 + 1
                                      end
                                    end

                                    scriptsTrollsTab:AddToggle({
                                      Name = "Cabelo RGB",
                                      Description = "Deixa Seu Cabelo RGB",
                                      Default = false,
                                      Callback = function(value52)
                                        v39 = value52

                                        if v39 then
                                          f29()
                                        end
                                      end,
                                    })

                                    local trollPlayersTab = window:MakeTab({
                                      Title = "Troll Players",
                                      Icon = "rbxassetid://131153193945220",
                                    })

                                    localPlayer6 = players.LocalPlayer
                                    currentCamera = workspace.CurrentCamera
                                    v40 = nil
                                    v41 = nil
                                    getgenv().Target = nil
                                    character = localPlayer6.Character
                                    humanoid2 = character and character:WaitForChild("Humanoid")

                                    if character then
                                      character:WaitForChild("HumanoidRootPart")
                                    end

                                    function f8()
                                      local character5 = localPlayer6.Character

                                      if character5 then
                                        local chaosCouch = character5:FindFirstChild("Chaos.Couch")
                                          or localPlayer6.Backpack:FindFirstChild("Chaos.Couch")

                                        if chaosCouch then
                                          chaosCouch:Destroy()
                                        end
                                      end

                                      replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                                    end

                                    localPlayer6.CharacterAdded:Connect(function(character6)
                                      local waitForChild4 = character6.WaitForChild
                                      character = character6
                                      humanoid2 = waitForChild4(character6, "Humanoid")
                                      character6:WaitForChild("HumanoidRootPart")
                                      f8()
                                      humanoid2.Died:Connect(function() f8() end)
                                    end)

                                    if humanoid2 then
                                      humanoid2.Died:Connect(function() f8() end)
                                    end

                                    function f30()
                                      if not v40 then
                                        warn("Erro: Nenhum jogador selecionado")
                                        return
                                      end

                                      local findFirstChild6 = players:FindFirstChild(v40)

                                      if not findFirstChild6 or not findFirstChild6.Character then
                                        warn("Erro: Jogador alvo não encontrado ou sem personagem")
                                        return
                                      end

                                      local character7 = localPlayer6.Character

                                      local humanoid3, humanoidRootPart5, position, vector,
                                        bringPosition

                                      if not character7 then
                                        warn("Erro: Personagem do jogador local não encontrado")
                                        return
                                      else
                                        humanoid3 = character7:FindFirstChildOfClass("Humanoid")
                                        humanoidRootPart5 = character7:FindFirstChild("HumanoidRootPart")

                                        local humanoidRootPart6 = findFirstChild6.Character
                                          and findFirstChild6.Character:FindFirstChild("HumanoidRootPart")

                                        if not humanoid3 or not humanoidRootPart5
                                          or not humanoidRootPart6 then
                                          warn("Erro: Componentes necessários não encontrados")
                                          return
                                        else
                                          position = humanoidRootPart5.Position
                                          vector = Vector3.new(145.51, -350.09, 21.58)
                                          replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                                          task.wait(0.2)

                                          replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                            "PickingTools", "Couch"
                                          )

                                          task.wait(0.3)
                                          local couch = localPlayer6.Backpack:FindFirstChild("Couch")

                                          if couch then
                                            couch.Parent = character7
                                          end

                                          task.wait(0.1)

                                          virtualInputManager:SendKeyEvent(
                                            true, Enum.KeyCode.F, false, game
                                          )

                                          task.wait(0.1)

                                          humanoid3:SetStateEnabled(
                                            Enum.HumanoidStateType.Seated, false
                                          )

                                          humanoid3.PlatformStand = false

                                          currentCamera.CameraSubject = findFirstChild6.Character:FindFirstChild("Head")
                                            or humanoidRootPart6 or humanoid3

                                          bringPosition = Instance.new("BodyPosition")
                                          bringPosition.Name = "BringPosition"

                                          bringPosition.MaxForce = Vector3.new(
                                            math.huge, math.huge, math.huge
                                          )

                                          bringPosition.D = 10
                                          bringPosition.P = 30000
                                          bringPosition.Position = humanoidRootPart5.Position
                                          bringPosition.Parent = humanoidRootPart6

                                          task.spawn(function()
                                            local total = 0
                                            local v122 = tick()

                                            while tick() - v122 < 5 and findFirstChild6
                                              and findFirstChild6.Character
                                              and findFirstChild6.Character:FindFirstChildOfClass("Humanoid") do
                                              local humanoid4 = findFirstChild6.Character:FindFirstChildOfClass("Humanoid")

                                              if not humanoid4 or humanoid4.Sit then
                                                break
                                              else
                                                local humanoidRootPart7 = findFirstChild6.Character.HumanoidRootPart
                                                total = total + 50

                                                humanoidRootPart5.CFrame = CFrame.new(humanoidRootPart7.Position + humanoidRootPart7.Velocity / 1.5 + Vector3.new(
                                                  0, 2, 0
                                                )) * CFrame.Angles(
                                                  math.rad(total), 0, 0
                                                )

                                                bringPosition.Position = humanoidRootPart5.Position
                                                  + Vector3.new(2, 0, 0)

                                                task.wait()
                                              end
                                            end

                                            bringPosition:Destroy()

                                            humanoid3:SetStateEnabled(
                                              Enum.HumanoidStateType.Seated, true
                                            )

                                            humanoid3.PlatformStand = false

                                            currentCamera.CameraSubject = humanoid3

                                            for key11, value53 in pairs(character7:GetDescendants()) do
                                              if value53:IsA("BasePart") then
                                                value53.Velocity = Vector3.zero
                                                value53.RotVelocity = Vector3.zero
                                              end
                                            end

                                            task.wait(0.1)
                                            humanoidRootPart5.CFrame = CFrame.new(vector)
                                            task.wait(0.3)
                                            local couch2 = character7:FindFirstChild("Couch")

                                            if couch2 then
                                              couch2.Parent = localPlayer6.Backpack
                                            end

                                            task.wait(0.01)

                                            replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                              "PickingTools", "Couch"
                                            )

                                            task.wait(0.2)
                                            humanoidRootPart5.CFrame = CFrame.new(position)
                                          end)

                                          return
                                        end
                                      end
                                    end

                                    function f31()
                                      if not v40 then
                                        warn("Erro: Nenhum jogador selecionado")
                                        return
                                      end

                                      local findFirstChild7 = players:FindFirstChild(v40)

                                      if not findFirstChild7 or not findFirstChild7.Character then
                                        warn("Erro: Jogador alvo não encontrado ou sem personagem")
                                        return
                                      end

                                      local character8 = localPlayer6.Character

                                      local humanoid5, humanoidRootPart8, position2,
                                        bringPosition2

                                      if not character8 then
                                        warn("Erro: Personagem do jogador local não encontrado")
                                        return
                                      else
                                        humanoid5 = character8:FindFirstChildOfClass("Humanoid")
                                        humanoidRootPart8 = character8:FindFirstChild("HumanoidRootPart")
                                        local character9 = findFirstChild7.Character

                                        local humanoidRootPart9 = character9

                                        humanoidRootPart9 = character9
                                          and findFirstChild7.Character:FindFirstChild("HumanoidRootPart")

                                        local v123 = not humanoid5
                                        local v124 = humanoidRootPart9

                                        if v123 or not humanoidRootPart8 or not v124 then
                                          warn("Erro: Componentes necessários não encontrados")
                                          return
                                        else
                                          position2 = humanoidRootPart8.Position
                                          replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                                          task.wait(0.2)

                                          replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                            "PickingTools", "Couch"
                                          )

                                          task.wait(0.3)
                                          local couch3 = localPlayer6.Backpack:FindFirstChild("Couch")

                                          if couch3 then
                                            couch3.Parent = character8
                                          end

                                          task.wait(0.1)

                                          virtualInputManager:SendKeyEvent(
                                            true, Enum.KeyCode.F, false, game
                                          )

                                          task.wait(0.1)

                                          humanoid5:SetStateEnabled(
                                            Enum.HumanoidStateType.Seated, false
                                          )

                                          humanoid5.PlatformStand = false

                                          currentCamera.CameraSubject = findFirstChild7.Character:FindFirstChild("Head")
                                            or v124 or humanoid5

                                          bringPosition2 = Instance.new("BodyPosition")
                                          bringPosition2.Name = "BringPosition"

                                          bringPosition2.MaxForce = Vector3.new(
                                            math.huge, math.huge, math.huge
                                          )

                                          bringPosition2.D = 10
                                          bringPosition2.P = 30000
                                          bringPosition2.Position = humanoidRootPart8.Position
                                          bringPosition2.Parent = v124

                                          task.spawn(function()
                                            local total2 = 0
                                            local v125 = tick()

                                            while tick() - v125 < 5 and findFirstChild7
                                              and findFirstChild7.Character
                                              and findFirstChild7.Character:FindFirstChildOfClass("Humanoid") do
                                              local humanoid6 = findFirstChild7.Character:FindFirstChildOfClass("Humanoid")

                                              if not humanoid6 or humanoid6.Sit then
                                                break
                                              else
                                                local humanoidRootPart10 = findFirstChild7.Character.HumanoidRootPart
                                                total2 = total2 + 50

                                                humanoidRootPart8.CFrame = CFrame.new(humanoidRootPart10.Position + humanoidRootPart10.Velocity / 1.5 + Vector3.new(
                                                  0, 2, 0
                                                )) * CFrame.Angles(
                                                  math.rad(total2), 0, 0
                                                )

                                                bringPosition2.Position = humanoidRootPart8.Position
                                                  + Vector3.new(2, 0, 0)

                                                task.wait()
                                              end
                                            end

                                            bringPosition2:Destroy()

                                            humanoid5:SetStateEnabled(
                                              Enum.HumanoidStateType.Seated, true
                                            )

                                            humanoid5.PlatformStand = false

                                            currentCamera.CameraSubject = humanoid5

                                            for key12, value54 in pairs(character8:GetDescendants()) do
                                              if value54:IsA("BasePart") then
                                                value54.Velocity = Vector3.zero
                                                value54.RotVelocity = Vector3.zero
                                              end
                                            end

                                            task.wait(0.1)

                                            humanoidRootPart8.Anchored = true
                                            humanoidRootPart8.CFrame = CFrame.new(position2)

                                            task.wait(0.001)
                                            humanoidRootPart8.Anchored = false
                                            task.wait(0.7)
                                            local couch4 = character8:FindFirstChild("Couch")

                                            if couch4 then
                                              couch4.Parent = localPlayer6.Backpack
                                            end

                                            task.wait(0.001)

                                            replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                              "PickingTools", "Couch"
                                            )
                                          end)

                                          return
                                        end
                                      end
                                    end

                                    function f32()
                                      local findFirstChild8 = players:FindFirstChild(getgenv().Target)

                                      if not findFirstChild8 then
                                        warn("Erro: Nenhum jogador alvo selecionado")
                                        return
                                      end

                                      local humanoid7

                                      if not findFirstChild8.Character
                                        or not findFirstChild8.Character:FindFirstChild("HumanoidRootPart") then
                                        warn("Erro: Jogador alvo sem personagem ou HumanoidRootPart")
                                        return
                                      else
                                        replicatedStorage.RE["1Clea1rTool1s"]:FireServer(unpack({
                                          [1] = "ClearAllTools",
                                        }))

                                        replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                                          [1] = "PickingTools",
                                          [2] = "Couch",
                                        }))

                                        local chaosCouch2 = localPlayer6.Backpack:WaitForChild(
                                          "Couch", 2
                                        )

                                        if not chaosCouch2 then
                                          warn("Erro: Sofá não encontrado no Backpack")
                                          return
                                        else
                                          chaosCouch2.Name = "Chaos.Couch"
                                          local seat1 = chaosCouch2:FindFirstChild("Seat1")
                                          local seat2 = chaosCouch2:FindFirstChild("Seat2")
                                          local handle2 = chaosCouch2:FindFirstChild("Handle")

                                          if seat1 and seat2 and handle2 then
                                            seat1.Disabled = true
                                            seat2.Disabled = true
                                            handle2.Name = "Handle "
                                            chaosCouch2.Parent = localPlayer6.Character

                                            local mOVOOEPFFGEREVEWVW = Instance.new(
                                              "BodyVelocity", seat1
                                            )

                                            mOVOOEPFFGEREVEWVW.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            mOVOOEPFFGEREVEWVW.P = 1250
                                            mOVOOEPFFGEREVEWVW.Velocity = Vector3.new(0, 0, 0)
                                            mOVOOEPFFGEREVEWVW.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                            repeat
                                              for j = 1, 35 do
                                                local v126 = { x = 0, y = 0, z = 0 }

                                                local humanoidRootPart11 = findFirstChild8.Character
                                                  and findFirstChild8.Character.HumanoidRootPart

                                                if not humanoidRootPart11 then
                                                  break
                                                end

                                                v126.x = humanoidRootPart11.Position.X
                                                  + humanoidRootPart11.Velocity.X / 2

                                                v126.y = humanoidRootPart11.Position.Y
                                                  + humanoidRootPart11.Velocity.Y / 2

                                                v126.z = humanoidRootPart11.Position.Z
                                                  + humanoidRootPart11.Velocity.Z / 2

                                                seat1.CFrame = CFrame.new(Vector3.new(
                                                  v126.x, v126.y, v126.z
                                                )) * CFrame.new(-2, 2, 0)

                                                task.wait()
                                              end

                                              mOVOOEPFFGEREVEWVW:Destroy()
                                              chaosCouch2.Parent = localPlayer6.Backpack
                                              task.wait()
                                              chaosCouch2:FindFirstChild("Handle ").Name = "Handle"
                                              task.wait(0.2)
                                              chaosCouch2.Parent = localPlayer6.Character
                                              task.wait()

                                              chaosCouch2.Parent = localPlayer6.Backpack
                                              chaosCouch2.Handle.Name = "Handle "

                                              task.wait(0.2)
                                              chaosCouch2.Parent = localPlayer6.Character

                                              mOVOOEPFFGEREVEWVW = Instance.new(
                                                "BodyVelocity", seat1
                                              )

                                              mOVOOEPFFGEREVEWVW.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              mOVOOEPFFGEREVEWVW.P = 1250
                                              mOVOOEPFFGEREVEWVW.Velocity = Vector3.new(0, 0, 0)
                                              mOVOOEPFFGEREVEWVW.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                              local character10 = findFirstChild8.Character

                                              humanoid7 = character10

                                              humanoid7 = character10
                                                and findFirstChild8.Character.Humanoid
                                                and findFirstChild8.Character.Humanoid.Sit
                                                  == true
                                            until humanoid7

                                            task.wait()
                                            mOVOOEPFFGEREVEWVW:Destroy()
                                            chaosCouch2.Parent = localPlayer6.Backpack
                                            task.wait()
                                            chaosCouch2:FindFirstChild("Handle ").Name = "Handle"
                                            task.wait(0.3)
                                            chaosCouch2.Parent = localPlayer6.Character
                                            task.wait(0.3)
                                            chaosCouch2.Grip = CFrame.new(Vector3.new(0, 0, 0))
                                            task.wait(0.3)
                                            replicatedStorage.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
                                            return
                                          end

                                          warn("Erro: Componentes do sofá não encontrados")
                                          return
                                        end
                                      end
                                    end

                                    function f33()
                                      local findFirstChild9 = players:FindFirstChild(getgenv().Target)

                                      if not findFirstChild9 then
                                        warn("Erro: Nenhum jogador alvo selecionado")
                                        return
                                      end

                                      local humanoid8

                                      if not findFirstChild9.Character
                                        or not findFirstChild9.Character:FindFirstChild("HumanoidRootPart") then
                                        warn("Erro: Jogador alvo sem personagem ou HumanoidRootPart")
                                        return
                                      else
                                        replicatedStorage.RE["1Clea1rTool1s"]:FireServer(unpack({
                                          [1] = "ClearAllTools",
                                        }))

                                        replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                                          [1] = "PickingTools",
                                          [2] = "Couch",
                                        }))

                                        local chaosCouch3 = localPlayer6.Backpack:WaitForChild(
                                          "Couch", 2
                                        )

                                        if not chaosCouch3 then
                                          warn("Erro: Sofá não encontrado no Backpack")
                                          return
                                        else
                                          chaosCouch3.Name = "Chaos.Couch"
                                          local seat12 = chaosCouch3:FindFirstChild("Seat1")
                                          local seat22 = chaosCouch3:FindFirstChild("Seat2")
                                          local handle3 = chaosCouch3:FindFirstChild("Handle")

                                          if seat12 and seat22 and handle3 then
                                            seat12.Disabled = true
                                            seat22.Disabled = true
                                            handle3.Name = "Handle "
                                            chaosCouch3.Parent = localPlayer6.Character

                                            local mOVOOEPFFGEREVEWVW2 = Instance.new(
                                              "BodyVelocity", seat12
                                            )

                                            mOVOOEPFFGEREVEWVW2.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            mOVOOEPFFGEREVEWVW2.P = 1250
                                            mOVOOEPFFGEREVEWVW2.Velocity = Vector3.new(0, 0, 0)
                                            mOVOOEPFFGEREVEWVW2.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                            repeat
                                              local count2 = 0

                                              while true do
                                                count2 = 1 + count2

                                                if not (count2 <= 35) then
                                                  break
                                                end

                                                local v127 = { x = 0, y = 0, z = 0 }

                                                local humanoidRootPart12 = findFirstChild9.Character
                                                  and findFirstChild9.Character.HumanoidRootPart

                                                if not humanoidRootPart12 then
                                                  break
                                                end

                                                v127.x = humanoidRootPart12.Position.X
                                                  + humanoidRootPart12.Velocity.X / 2

                                                v127.y = humanoidRootPart12.Position.Y
                                                  + humanoidRootPart12.Velocity.Y / 2

                                                v127.z = humanoidRootPart12.Position.Z
                                                  + humanoidRootPart12.Velocity.Z / 2

                                                seat12.CFrame = CFrame.new(Vector3.new(
                                                  v127.x, v127.y, v127.z
                                                )) * CFrame.new(-2, 2, 0)

                                                task.wait()
                                              end

                                              mOVOOEPFFGEREVEWVW2:Destroy()
                                              chaosCouch3.Parent = localPlayer6.Backpack
                                              task.wait()
                                              chaosCouch3:FindFirstChild("Handle ").Name = "Handle"
                                              task.wait(0.2)
                                              chaosCouch3.Parent = localPlayer6.Character
                                              task.wait()

                                              chaosCouch3.Parent = localPlayer6.Backpack
                                              chaosCouch3.Handle.Name = "Handle "

                                              task.wait(0.2)
                                              chaosCouch3.Parent = localPlayer6.Character

                                              mOVOOEPFFGEREVEWVW2 = Instance.new(
                                                "BodyVelocity", seat12
                                              )

                                              mOVOOEPFFGEREVEWVW2.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              mOVOOEPFFGEREVEWVW2.P = 1250

                                              mOVOOEPFFGEREVEWVW2.Velocity = Vector3.new(
                                                0, 0, 0
                                              )

                                              mOVOOEPFFGEREVEWVW2.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                              local character11 = findFirstChild9.Character

                                              humanoid8 = character11

                                              humanoid8 = character11
                                                and findFirstChild9.Character.Humanoid
                                                and findFirstChild9.Character.Humanoid.Sit
                                                  == true
                                            until humanoid8

                                            task.wait()
                                            chaosCouch3.Parent = localPlayer6.Backpack

                                            seat12.CFrame = CFrame.new(Vector3.new(
                                              9999, -450, 9999
                                            ))

                                            seat22.CFrame = CFrame.new(Vector3.new(
                                              9999, -450, 9999
                                            ))

                                            chaosCouch3.Parent = localPlayer6.Character
                                            task.wait(0.1)
                                            chaosCouch3.Parent = localPlayer6.Backpack
                                            task.wait(2)
                                            local mOVOOEPFFGEREVEWVW3 = seat12:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W")

                                            if mOVOOEPFFGEREVEWVW3 then
                                              mOVOOEPFFGEREVEWVW3:Destroy()
                                            end

                                            replicatedStorage.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
                                            return
                                          end

                                          warn("Erro: Componentes do sofá não encontrados")
                                          return
                                        end
                                      end
                                    end

                                    trollPlayersTab:AddSection({ Name = "Troll Player" })

                                    local function f56()
                                      local v128 = {}

                                      for index26, value55 in ipairs((players:GetPlayers())) do
                                        if value55 ~= localPlayer6 then
                                          table.insert(v128, value55.Name)
                                        end
                                      end

                                      return v128
                                    end

                                    selecionarJogadorAddDropdown = trollPlayersTab:AddDropdown({
                                      Name = "Selecionar Jogador",
                                      Options = f56(),
                                      Default = "",
                                      Callback = function(value56)
                                        v40 = value56
                                        getgenv().Target = value56
                                        print("Jogador selecionado: " .. tostring(value56))
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Atualizar Player List",
                                      Callback = function()
                                        local getPlayers2 = players:GetPlayers()
                                        local v129 = {}

                                        if selecionarJogadorAddDropdown and #getPlayers2 > 0 then
                                          for index27, value57 in ipairs(getPlayers2) do
                                            if value57.Name ~= localPlayer6.Name then
                                              table.insert(v129, value57.Name)
                                            end
                                          end

                                          selecionarJogadorAddDropdown:Set(v129)

                                          print(
                                            "Lista de jogadores atualizada: ",
                                            table.concat(v129, ", ")
                                          )

                                          if v40 and not players:FindFirstChild(v40) then
                                            v40 = nil
                                            getgenv().Target = nil
                                            selecionarJogadorAddDropdown:SetValue("")
                                            print("Seleção resetada, jogador não está mais no servidor.")
                                          end
                                        else
                                          print("Erro: Dropdown não encontrado ou nenhum jogador disponível.")
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Teleportar até o Player",
                                      Callback = function()
                                        if not v40 or not players:FindFirstChild(v40) then
                                          print("Erro: Player não selecionado ou não existe")
                                          return
                                        else
                                          local character12 = localPlayer6.Character

                                          local humanoidRootPart13 = character12
                                            and character12:FindFirstChild("HumanoidRootPart")

                                          if not humanoidRootPart13 then
                                            warn("Erro: HumanoidRootPart do jogador local não encontrado")
                                            return
                                          else
                                            local findFirstChild10 = players:FindFirstChild(v40)

                                            if findFirstChild10 and findFirstChild10.Character
                                              and findFirstChild10.Character:FindFirstChild("HumanoidRootPart") then
                                              humanoidRootPart13.CFrame = findFirstChild10.Character.HumanoidRootPart.CFrame
                                            else
                                              print("Erro: Player alvo não encontrado ou sem HumanoidRootPart")
                                            end

                                            return
                                          end
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddToggle({
                                      Name = "Spectar Player",
                                      Default = false,
                                      Callback = function(value58)
                                        local currentCamera4 = workspace.CurrentCamera

                                        local function f57()
                                          if value58 then
                                            local findFirstChild11 = players:FindFirstChild(v40)

                                            if findFirstChild11 and findFirstChild11.Character then
                                              local humanoid9 = findFirstChild11.Character:FindFirstChild("Humanoid")

                                              if humanoid9 then
                                                currentCamera4.CameraSubject = humanoid9
                                              end
                                            end
                                          elseif localPlayer6.Character then
                                            local humanoid10 = localPlayer6.Character:FindFirstChild("Humanoid")

                                            if humanoid10 then
                                              currentCamera4.CameraSubject = humanoid10
                                            end
                                          end
                                        end

                                        if value58 then
                                          if not getgenv().CameraConnection then
                                            local v130 = getgenv()
                                            v130.CameraConnection = runService.Heartbeat:Connect(f57)
                                          end
                                        else
                                          if getgenv().CameraConnection then
                                            getgenv().CameraConnection:Disconnect()
                                            getgenv().CameraConnection = nil
                                          end

                                          f57()
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddSection({ Name = "Métodos" })

                                    trollPlayersTab:AddDropdown({
                                      Name = "Selecionar Método para Matar",
                                      Options = {
                                        "Bus", "Couch", "Couch Sem ir até o alvo [BETA]",
                                      },
                                      Default = "",
                                      Callback = function(value59)
                                        v41 = value59
                                        print("Método selecionado: " .. tostring(value59))
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Matar Player",
                                      Callback = function()
                                        local v131 = not v40 or not players:FindFirstChild(v40)
                                        local sit, character13, cframe, v132

                                        if v131 then
                                          print("Erro: Player não selecionado ou não existe")
                                          return
                                        elseif v41 == "Couch" then
                                          f30()
                                          return
                                        elseif v41 == "Couch Sem ir até o alvo [BETA]" then
                                          f33()
                                          return
                                        else
                                          character13 = localPlayer6.Character

                                          local humanoidRootPart14 = character13
                                            and character13:FindFirstChild("HumanoidRootPart")

                                          if not humanoidRootPart14 then
                                            warn("Erro: HumanoidRootPart do jogador local não encontrado")
                                            return
                                          else
                                            cframe = humanoidRootPart14.CFrame

                                            local function f58()
                                              local vehicles3 = game.Workspace:FindFirstChild("Vehicles")

                                              if vehicles3 then
                                                return vehicles3:FindFirstChild(localPlayer6.Name
                                                  .. "Car")
                                              end

                                              return nil
                                            end

                                            v132 = f58()

                                            if not v132 then
                                              humanoidRootPart14.CFrame = CFrame.new(
                                                1118.81, 75.998, -1138.61
                                              )

                                              task.wait(0.5)
                                              local re3 = replicatedStorage:FindFirstChild("RE")

                                              if re3 and re3:FindFirstChild("1Ca1r") then
                                                re3["1Ca1r"]:FireServer(
                                                  "PickingCar", "SchoolBus"
                                                )
                                              end

                                              task.wait(1)
                                              v132 = f58()
                                            end

                                            if v132 then
                                              local vehicleSeat = v132:FindFirstChild("Body")
                                                and v132.Body:FindFirstChild("VehicleSeat")

                                              if vehicleSeat
                                                and character13:FindFirstChildOfClass("Humanoid")
                                                and not character13.Humanoid.Sit then
                                                repeat
                                                  humanoidRootPart14.CFrame = vehicleSeat.CFrame * CFrame.new(
                                                    0, 2, 0
                                                  )

                                                  task.wait()

                                                  sit = character13.Humanoid.Sit
                                                    or not v132.Parent
                                                until sit

                                                if character13.Humanoid.Sit or not v132.Parent then
                                                  for key13, value60 in pairs(v132.Body:GetChildren()) do
                                                    if value60:IsA("Seat") then
                                                      value60.CanTouch = false
                                                    end
                                                  end
                                                end
                                              end
                                            end

                                            spawn(function()
                                              while true do
                                                if v40 then
                                                  local findFirstChild12 = players:FindFirstChild(v40)

                                                  if findFirstChild12
                                                    and findFirstChild12.Character
                                                    and findFirstChild12.Character:FindFirstChild("HumanoidRootPart") then
                                                    local humanoid11 = findFirstChild12.Character:FindFirstChildOfClass("Humanoid")

                                                    if humanoid11 and humanoid11.Sit then
                                                      if character13.Humanoid then
                                                        v132:SetPrimaryPartCFrame(CFrame.new(Vector3.new(
                                                          9999, -450, 9999
                                                        )))

                                                        print("Jogador sentou, levando ônibus para o void!")
                                                        task.wait(0.2)

                                                        local function f59()
                                                          local humanoid12 = character13
                                                            and character13:FindFirstChildWhichIsA("Humanoid")

                                                          if humanoid12 then
                                                            humanoid12:ChangeState(Enum.HumanoidStateType.Jumping)
                                                          end
                                                        end

                                                        f59()

                                                        print("Simulando pulo!")
                                                        task.wait(0.5)
                                                        humanoidRootPart14.CFrame = cframe
                                                        print("Player voltou para a posição inicial.")
                                                      end

                                                      break
                                                    end

                                                    local v133 = tick() * 35
                                                    local v134 = math.sin(v133)
                                                    local v135 = math.cos(v133)

                                                    v132:SetPrimaryPartCFrame(findFirstChild12.Character.HumanoidRootPart.CFrame * CFrame.new(
                                                      v134 * 4, 0, v135 * 20
                                                    ))
                                                  end
                                                end

                                                runService.RenderStepped:Wait()
                                              end
                                            end)

                                            return
                                          end
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Puxar Player",
                                      Callback = function()
                                        local v136 = not v40 or not players:FindFirstChild(v40)
                                        local sit2, character14, cframe2, v137

                                        if v136 then
                                          print("Erro: Player não selecionado ou não existe")
                                          return
                                        elseif v41 == "Couch" then
                                          f31()
                                          return
                                        elseif v41 == "Couch Sem ir até o alvo [BETA]" then
                                          f32()
                                          return
                                        else
                                          character14 = localPlayer6.Character

                                          local humanoidRootPart15 = character14
                                            and character14:FindFirstChild("HumanoidRootPart")

                                          if not humanoidRootPart15 then
                                            warn("Erro: HumanoidRootPart do jogador local não encontrado")
                                            return
                                          else
                                            cframe2 = humanoidRootPart15.CFrame

                                            local function f60()
                                              local vehicles4 = game.Workspace:FindFirstChild("Vehicles")

                                              if vehicles4 then
                                                return vehicles4:FindFirstChild(localPlayer6.Name
                                                  .. "Car")
                                              end

                                              return nil
                                            end

                                            v137 = f60()

                                            if not v137 then
                                              humanoidRootPart15.CFrame = CFrame.new(
                                                1118.81, 75.998, -1138.61
                                              )

                                              task.wait(0.5)
                                              local re4 = replicatedStorage:FindFirstChild("RE")

                                              if re4 and re4:FindFirstChild("1Ca1r") then
                                                re4["1Ca1r"]:FireServer(
                                                  "PickingCar", "SchoolBus"
                                                )
                                              end

                                              task.wait(1)
                                              v137 = f60()
                                            end

                                            if v137 then
                                              local vehicleSeat2 = v137:FindFirstChild("Body")
                                                and v137.Body:FindFirstChild("VehicleSeat")

                                              if vehicleSeat2
                                                and character14:FindFirstChildOfClass("Humanoid")
                                                and not character14.Humanoid.Sit then
                                                repeat
                                                  humanoidRootPart15.CFrame = vehicleSeat2.CFrame * CFrame.new(
                                                    0, 2, 0
                                                  )

                                                  task.wait()

                                                  sit2 = character14.Humanoid.Sit
                                                    or not v137.Parent
                                                until sit2
                                              end
                                            end

                                            spawn(function()
                                              while true do
                                                if v40 then
                                                  local findFirstChild13 = players:FindFirstChild(v40)

                                                  if findFirstChild13
                                                    and findFirstChild13.Character
                                                    and findFirstChild13.Character:FindFirstChild("HumanoidRootPart") then
                                                    local humanoid13 = findFirstChild13.Character:FindFirstChildOfClass("Humanoid")

                                                    if humanoid13 and humanoid13.Sit then
                                                      if character14.Humanoid then
                                                        v137:SetPrimaryPartCFrame(cframe2)
                                                        task.wait(0.7)

                                                        replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                                                          [1] = "DeleteAllVehicles",
                                                        }))
                                                      end

                                                      break
                                                    end

                                                    local v138 = tick() * 35
                                                    local v139 = math.sin(v138)
                                                    local v140 = math.cos(v138)

                                                    v137:SetPrimaryPartCFrame(findFirstChild13.Character.HumanoidRootPart.CFrame * CFrame.new(
                                                      v139 * 4, 0, v140 * 20
                                                    ))
                                                  end
                                                end

                                                runService.RenderStepped:Wait()
                                              end
                                            end)

                                            return
                                          end
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "House Ban Kill",
                                      Callback = function()
                                        local localPlayer18, character15, humanoid14,
                                          humanoidRootPart16, vehicles5, findFirstChild14

                                        if not v40 then
                                          print("Nenhum jogador selecionado!")
                                          return
                                        else
                                          localPlayer18 = game.Players.LocalPlayer
                                          local backpack2 = localPlayer18.Backpack
                                          character15 = localPlayer18.Character
                                          humanoid14 = character15:FindFirstChildOfClass("Humanoid")
                                          humanoidRootPart16 = character15:FindFirstChild("HumanoidRootPart")
                                          local findFirstChild15 = game.Workspace:FindFirstChild("001_Lots")
                                          local cframe3 = humanoidRootPart16.CFrame
                                          local total3 = 0
                                          vehicles5 = v1.Vehicles

                                          function Check()
                                            if localPlayer18 and character15 and humanoid14
                                              and humanoidRootPart16 and vehicles5 then
                                              return true
                                            end

                                            return false
                                          end

                                          local findFirstChild16 = game.Players:FindFirstChild(v40)

                                          if findFirstChild16 and findFirstChild16.Character then
                                            if Check() then
                                              if not findFirstChild15:FindFirstChild(localPlayer18.Name
                                                .. "House") then
                                                local v141 = {}

                                                for key14, value61 in pairs(findFirstChild15:GetChildren()) do
                                                  if value61.Name == "For Sale" then
                                                    for key15, value62 in pairs(value61:GetDescendants()) do
                                                      if value62:IsA("NumberValue")
                                                        and value62.Name == "Number"
                                                        and value62.Value < 25
                                                        and value62.Value > 10 then
                                                        table.insert(v141, {
                                                          Lot = value61,
                                                          Number = value62.Value,
                                                        })

                                                        break
                                                      end
                                                    end
                                                  end
                                                end

                                                if #v141 > 0 then
                                                  local v142 = v141[math.random(1, #v141)]
                                                  local lot = v142.Lot
                                                  local number = v142.Number
                                                  local buyHouse = lot:FindFirstChild("BuyHouse")
                                                  local position3 = buyHouse.Position

                                                  if buyHouse and buyHouse:IsA("BasePart") then
                                                    humanoidRootPart16.CFrame = buyHouse.CFrame + Vector3.new(
                                                      0, -6, 0
                                                    )

                                                    task.wait(0.5)
                                                    local clickDetector = buyHouse:FindFirstChild("ClickDetector")

                                                    if clickDetector then
                                                      fireclickdetector(clickDetector)
                                                    end
                                                  end

                                                  task.wait(0.5)

                                                  replicatedStorage:WaitForChild("Remotes"):WaitForChild("Lot:BuildProperty"):FireServer(unpack({
                                                    number, "056_House",
                                                  }))
                                                else
                                                  print("Nenhuma casa disponÃ\194\173vel para compra!")
                                                  return
                                                end
                                              end

                                              task.wait(0.5)

                                              local findFirstChild17 = findFirstChild15:FindFirstChild(localPlayer18.Name
                                                .. "House")

                                              if findFirstChild17 then
                                                task.wait(0.5)
                                                local v143 = nil

                                                for key16, value63 in pairs(findFirstChild17:GetDescendants()) do
                                                  if value63.Name == "Number"
                                                    and value63:IsA("NumberValue") then
                                                    v143 = value63
                                                  end
                                                end

                                                task.wait(0.5)

                                                replicatedStorage.RE:FindFirstChild("1Gettin1gHous1e"):FireServer(
                                                  "PickingCustomHouse", "049_House", v143.Value
                                                )
                                              end

                                              task.wait(0.5)

                                              if not vehicles5:FindFirstChild(localPlayer18.Name
                                                .. "Car") then
                                                if Check() then
                                                  humanoidRootPart16.CFrame = CFrame.new(
                                                    1118.81, 75.998, -1138.61
                                                  )

                                                  task.wait(0.5)

                                                  replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(
                                                    "PickingCar", "SchoolBus"
                                                  )

                                                  task.wait(0.5)

                                                  local findFirstChild18 = vehicles5:FindFirstChild(localPlayer18.Name
                                                    .. "Car")

                                                  task.wait(0.5)
                                                  local body = findFirstChild18:FindFirstChild("Body")

                                                  local vehicleSeat3 = body

                                                  vehicleSeat3 = body
                                                    and findFirstChild18.Body:FindFirstChild("VehicleSeat")

                                                  if vehicleSeat3 then
                                                    while true do
                                                      task.wait()

                                                      humanoidRootPart16.CFrame = vehicleSeat3.CFrame * CFrame.new(0, math.random(
                                                        -1, 1
                                                      ), 0)

                                                      if humanoid14.Sit then
                                                        break
                                                      end
                                                    end
                                                  end
                                                end
                                              end

                                              task.wait(0.5)

                                              findFirstChild14 = vehicles5:FindFirstChild(localPlayer18.Name
                                                .. "Car")

                                              if findFirstChild14 then
                                                if not humanoid14.Sit then
                                                  local body2 = findFirstChild14:FindFirstChild("Body")

                                                  local vehicleSeat4 = body2

                                                  vehicleSeat4 = body2
                                                    and findFirstChild14.Body:FindFirstChild("VehicleSeat")

                                                  if vehicleSeat4 then
                                                    while true do
                                                      task.wait()

                                                      humanoidRootPart16.CFrame = vehicleSeat4.CFrame * CFrame.new(0, math.random(
                                                        -1, 1
                                                      ), 0)

                                                      if humanoid14.Sit then
                                                        break
                                                      end
                                                    end
                                                  end
                                                end

                                                local character16 = findFirstChild16.Character
                                                local humanoid15 = character16:FindFirstChildOfClass("Humanoid")
                                                local humanoidRootPart17 = character16:FindFirstChild("HumanoidRootPart")

                                                if character16 and humanoid15
                                                  and humanoidRootPart17 then
                                                  if not humanoid15.Sit then
                                                    while not humanoid15.Sit do
                                                      task.wait()

                                                      local function f61(p31, p32, p33)
                                                        findFirstChild14:SetPrimaryPartCFrame(CFrame.new(p31.Position)
                                                          * p32 * p33)
                                                      end

                                                      total3 = total3 + 100

                                                      f61(humanoidRootPart17, CFrame.new(0, 1.5, 0)
                                                        + humanoid15.MoveDirection
                                                            * humanoidRootPart17.Velocity.Magnitude
                                                          / 1.1, CFrame.Angles(math.rad(total3), 0, 0))

                                                      f61(humanoidRootPart17, CFrame.new(0, -1.5, 0)
                                                        + humanoid15.MoveDirection
                                                            * humanoidRootPart17.Velocity.Magnitude
                                                          / 1.1, CFrame.Angles(math.rad(total3), 0, 0))

                                                      f61(humanoidRootPart17, CFrame.new(2.25, 1.5, -2.25)
                                                        + humanoid15.MoveDirection
                                                            * humanoidRootPart17.Velocity.Magnitude
                                                          / 1.1, CFrame.Angles(math.rad(total3), 0, 0))

                                                      f61(humanoidRootPart17, CFrame.new(-2.25, -1.5, 2.25)
                                                        + humanoid15.MoveDirection
                                                            * humanoidRootPart17.Velocity.Magnitude
                                                          / 1.1, CFrame.Angles(math.rad(total3), 0, 0))

                                                      f61(humanoidRootPart17, CFrame.new(0, 1.5, 0)
                                                        + humanoid15.MoveDirection
                                                            * humanoidRootPart17.Velocity.Magnitude
                                                          / 1.1, CFrame.Angles(math.rad(total3), 0, 0))

                                                      f61(humanoidRootPart17, CFrame.new(0, -1.5, 0)
                                                        + humanoid15.MoveDirection
                                                            * humanoidRootPart17.Velocity.Magnitude
                                                          / 1.1, CFrame.Angles(math.rad(total3), 0, 0))
                                                    end

                                                    task.wait(0.2)

                                                    local findFirstChild19 = findFirstChild15:FindFirstChild(localPlayer18.Name
                                                      .. "House")

                                                    findFirstChild14:SetPrimaryPartCFrame(CFrame.new(findFirstChild19.HouseSpawnPosition.Position))
                                                    task.wait(0.2)

                                                    for key17, value64 in pairs((workspace:FindPartsInRegion3(Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(
                                                      30, 30, 30
                                                    ), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(
                                                      30, 30, 30
                                                    )), game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge))) do
                                                      if value64.Name == "HumanoidRootPart" then
                                                        local findFirstChild20 = players:FindFirstChild(value64.Parent.Name)

                                                        replicatedStorage.RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack({
                                                          [1] = "BanPlayerFromHouse",
                                                          [2] = findFirstChild20,
                                                          [3] = value64.Parent,
                                                        }))

                                                        replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                                                          [1] = "DeleteAllVehicles",
                                                        }))
                                                      end
                                                    end
                                                  end
                                                end
                                              end

                                              return
                                            end

                                            return
                                          end

                                          return
                                        end
                                      end,
                                    })

                                    localPlayer7 = players.LocalPlayer
                                    currentCamera2 = workspace.CurrentCamera
                                    v42 = false

                                    trollPlayersTab:AddToggle({
                                      Name = "Auto Fling ",
                                      Default = false,
                                      Callback = function(value65)
                                        v42 = value65

                                        local findFirstChild21, humanoidRootPart18, character17,
                                          humanoid16, cframe4, v144, flingForce

                                        if value65 and v40 then
                                          findFirstChild21 = players:FindFirstChild(v40)

                                          if not findFirstChild21
                                            or not findFirstChild21.Character then
                                            return
                                          else
                                            humanoidRootPart18 = localPlayer7.Character
                                              and localPlayer7.Character:FindFirstChild("HumanoidRootPart")

                                            local humanoidRootPart19 = findFirstChild21.Character
                                              and findFirstChild21.Character:FindFirstChild("HumanoidRootPart")

                                            if not humanoidRootPart18 or not humanoidRootPart19 then
                                              return
                                            end

                                            character17 = localPlayer7.Character
                                            humanoid16 = character17:FindFirstChildOfClass("Humanoid")
                                            cframe4 = humanoidRootPart18.CFrame
                                            replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                                            task.wait(0.2)
                                            v144 = { [1] = "PickingTools", [2] = "Couch" }
                                            replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(v144))
                                            task.wait(0.3)
                                            local couch5 = localPlayer7.Backpack:FindFirstChild("Couch")

                                            if couch5 then
                                              couch5.Parent = character17
                                            end

                                            task.wait(0.2)

                                            virtualInputManager:SendKeyEvent(
                                              true, Enum.KeyCode.F, false, game
                                            )

                                            task.wait(0.25)
                                            workspace.FallenPartsDestroyHeight = (0 / 0)

                                            flingForce = Instance.new("BodyVelocity")
                                            flingForce.Name = "FlingForce"

                                            flingForce.Velocity = Vector3.new(
                                              900000000, 900000000, 900000000
                                            )

                                            flingForce.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            flingForce.Parent = humanoidRootPart18

                                            humanoid16:SetStateEnabled(
                                              Enum.HumanoidStateType.Seated, false
                                            )

                                            humanoid16.PlatformStand = false

                                            currentCamera2.CameraSubject = findFirstChild21.Character:FindFirstChild("Head")
                                              or humanoidRootPart19 or humanoid16

                                            task.spawn(function()
                                              local total4 = 0
                                              local v145 = { humanoidRootPart18 }

                                              while v42 and findFirstChild21
                                                and findFirstChild21.Character
                                                and findFirstChild21.Character:FindFirstChildOfClass("Humanoid") do
                                                if findFirstChild21.Character:FindFirstChildOfClass("Humanoid").Sit then
                                                  break
                                                end

                                                total4 = total4 + 50

                                                for index28, value66 in ipairs(v145) do
                                                  humanoidRootPart18.CFrame = CFrame.new(
                                                    findFirstChild21.Character.HumanoidRootPart.Position.X + findFirstChild21.Character.HumanoidRootPart.Velocity.X / 1.5,
                                                    findFirstChild21.Character.HumanoidRootPart.Position.Y + findFirstChild21.Character.HumanoidRootPart.Velocity.Y / 1.5,
                                                    findFirstChild21.Character.HumanoidRootPart.Position.Z + findFirstChild21.Character.HumanoidRootPart.Velocity.Z / 1.5
                                                  ) * CFrame.Angles(
                                                    math.rad(total4), 0, 0
                                                  )
                                                end

                                                humanoidRootPart18.Velocity = Vector3.new(
                                                  900000000, 900000000, 900000000
                                                )

                                                humanoidRootPart18.RotVelocity = Vector3.new(
                                                  900000000, 900000000, 900000000
                                                )

                                                task.wait()
                                              end

                                              v42 = false
                                              flingForce:Destroy()

                                              humanoid16:SetStateEnabled(
                                                Enum.HumanoidStateType.Seated, true
                                              )

                                              humanoid16.PlatformStand = false

                                              humanoidRootPart18.CFrame = cframe4
                                              currentCamera2.CameraSubject = humanoid16

                                              for key18, value67 in pairs(character17:GetDescendants()) do
                                                if value67:IsA("BasePart") then
                                                  value67.Velocity = Vector3.zero
                                                  value67.RotVelocity = Vector3.zero
                                                end
                                              end

                                              humanoid16:UnequipTools()
                                              replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(v144))
                                            end)

                                            return
                                          end
                                        else
                                          return
                                        end
                                      end,
                                    })

                                    function f34(p34)
                                      local localPlayer19 = players.LocalPlayer

                                      local character18 = localPlayer19.Character
                                        or localPlayer19.CharacterAdded:Wait()

                                      local humanoid17 = character18:WaitForChild("Humanoid")
                                      character18:WaitForChild("HumanoidRootPart")
                                      local backpack3 = localPlayer19:WaitForChild("Backpack")
                                      local waitForChild5 = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")

                                      local function f62()
                                        if not backpack3:FindFirstChild("SoccerBall") then
                                          replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                            "PickingTools", "SoccerBall"
                                          )
                                        end

                                        while true do
                                          task.wait()

                                          if backpack3:FindFirstChild("SoccerBall") then
                                            break
                                          end
                                        end

                                        backpack3.SoccerBall.Parent = character18

                                        while true do
                                          task.wait()

                                          if waitForChild5:FindFirstChild("Soccer"
                                            .. localPlayer19.Name) then
                                            break
                                          end
                                        end

                                        character18.SoccerBall.Parent = backpack3

                                        return waitForChild5:FindFirstChild("Soccer"
                                          .. localPlayer19.Name)
                                      end

                                      local findFirstChild22 = waitForChild5:FindFirstChild("Soccer"
                                          .. localPlayer19.Name)
                                        or f62()

                                      findFirstChild22.CanCollide = false
                                      findFirstChild22.Massless = true

                                      findFirstChild22.CustomPhysicalProperties = PhysicalProperties.new(
                                        0.0001, 0, 0
                                      )

                                      local v146

                                      if p34 ~= localPlayer19 then
                                        local character19 = p34.Character

                                        if character19
                                          and character19:FindFirstChild("HumanoidRootPart")
                                          and character19:FindFirstChild("Humanoid") then
                                          local humanoidRootPart20 = character19.HumanoidRootPart
                                          local humanoid18 = character19.Humanoid
                                          local bodyVelocity2 = findFirstChild22:FindFirstChildWhichIsA("BodyVelocity")

                                          if bodyVelocity2 then
                                            bodyVelocity2:Destroy()
                                          end

                                          local flingPower = Instance.new("BodyVelocity")
                                          flingPower.Name = "FlingPower"

                                          flingPower.Velocity = Vector3.new(
                                            9000000, 9000000, 9000000
                                          )

                                          flingPower.MaxForce = Vector3.new(
                                            math.huge, math.huge, math.huge
                                          )

                                          flingPower.P = math.huge
                                          flingPower.Parent = findFirstChild22

                                          workspace.CurrentCamera.CameraSubject = humanoid18

                                          repeat
                                            local vector2 = Vector3.new(humanoidRootPart20.Position.X
                                              + humanoidRootPart20.Velocity.X * 0.15, humanoidRootPart20.Position.Y
                                              + humanoidRootPart20.Velocity.Y * 0.15, humanoidRootPart20.Position.Z
                                              + humanoidRootPart20.Velocity.Z * 0.15)

                                            findFirstChild22.CFrame = CFrame.new(vector2)

                                            findFirstChild22.Orientation = findFirstChild22.Orientation + Vector3.new(
                                              45, 60, 30
                                            )

                                            task.wait()

                                            local v147 = humanoidRootPart20.Velocity.Magnitude
                                              > 1000

                                            v146 = v147

                                            v146 = v147 or humanoid18.Health <= 0
                                              or not character19:IsDescendantOf(workspace)
                                              or p34.Parent ~= players
                                          until v146

                                          workspace.CurrentCamera.CameraSubject = humanoid17
                                        end
                                      end
                                    end

                                    trollPlayersTab:AddButton({
                                      Name = "Fling Ball",
                                      Callback = function()
                                        f34(players[v40])

                                        task.delay(2, function()
                                          localPlayer7.Character.SoccerBall.FootballInteraction:FireServer(CFrame.new(
                                            1, 1, 1
                                          ))
                                        end)
                                      end,
                                    })

                                    local localPlayer20 = players.LocalPlayer

                                    trollPlayersTab:AddSection({ Name = "Fling Boat" })

                                    trollPlayersTab:AddButton({
                                      Name = "Fling - Boat",
                                      Callback = function()
                                        local v148 = not v40
                                          or not game.Players:FindFirstChild(v40)

                                        local findFirstChild23, localPlayer21,
                                          humanoidRootPart21, vehicles6, humanoidRootPart22,
                                          spinning, f63

                                        if v148 then
                                          warn("Nenhum jogador selecionado ou não existe")
                                          return
                                        else
                                          localPlayer21 = game.Players.LocalPlayer
                                          local character20 = localPlayer21.Character

                                          local humanoid19 = character20
                                            and character20:FindFirstChildOfClass("Humanoid")

                                          humanoidRootPart21 = character20
                                            and character20:FindFirstChild("HumanoidRootPart")

                                          vehicles6 = game.Workspace:FindFirstChild("Vehicles")

                                          if not humanoid19 or not humanoidRootPart21 then
                                            warn("Humanoid ou RootPart inválido")
                                            return
                                          else
                                            local function f64()
                                              humanoidRootPart21.CFrame = CFrame.new(
                                                1754, -2, 58
                                              )

                                              task.wait(0.5)

                                              replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(
                                                "PickingBoat", "MilitaryBoatFree"
                                              )

                                              task.wait(1)

                                              return vehicles6:FindFirstChild(localPlayer21.Name
                                                .. "Car")
                                            end

                                            findFirstChild23 = vehicles6:FindFirstChild(localPlayer21.Name
                                                .. "Car")
                                              or f64()

                                            if not findFirstChild23 then
                                              warn("Falha ao spawnar o barco")
                                              return
                                            else
                                              local vehicleSeat5 = findFirstChild23:FindFirstChild("Body")
                                                and findFirstChild23.Body:FindFirstChild("VehicleSeat")

                                              if not vehicleSeat5 then
                                                warn("Assento não encontrado")
                                                return
                                              else
                                                while true do
                                                  task.wait(0.1)

                                                  humanoidRootPart21.CFrame = vehicleSeat5.CFrame * CFrame.new(
                                                    0, 1, 0
                                                  )

                                                  if humanoid19.SeatPart == vehicleSeat5 then
                                                    break
                                                  end
                                                end

                                                print("Barco spawnado!")
                                                local findFirstChild24 = game.Players:FindFirstChild(v40)

                                                if not findFirstChild24
                                                  or not findFirstChild24.Character then
                                                  warn("Jogador não encontrado")
                                                  return
                                                else
                                                  local character21 = findFirstChild24.Character
                                                  local humanoid20 = character21:FindFirstChildOfClass("Humanoid")
                                                  humanoidRootPart22 = character21:FindFirstChild("HumanoidRootPart")

                                                  if not humanoidRootPart22 or not humanoid20 then
                                                    warn("Humanoid ou RootPart do alvo não encontrado")
                                                    return
                                                  end

                                                  spinning = Instance.new("BodyAngularVelocity")
                                                  spinning.Name = "Spinning"
                                                  spinning.Parent = findFirstChild23.PrimaryPart

                                                  spinning.MaxTorque = Vector3.new(
                                                    0, math.huge, 0
                                                  )

                                                  spinning.AngularVelocity = Vector3.new(
                                                    0, 369, 0
                                                  )

                                                  print("Fling ativo!")

                                                  function f63(p35, p36)
                                                    if findFirstChild23
                                                      and findFirstChild23.PrimaryPart then
                                                      findFirstChild23:SetPrimaryPartCFrame(CFrame.new(p35.Position
                                                        + p36))
                                                    end
                                                  end

                                                  task.spawn(function()
                                                    while findFirstChild23
                                                      and findFirstChild23.Parent
                                                      and humanoidRootPart22
                                                      and humanoidRootPart22.Parent do
                                                      task.wait(0.01)

                                                      f63(
                                                        humanoidRootPart22, Vector3.new(0, 1, 0)
                                                      )

                                                      f63(
                                                        humanoidRootPart22,
                                                        Vector3.new(0, -2.25, 5)
                                                      )

                                                      f63(
                                                        humanoidRootPart22,
                                                        Vector3.new(0, 2.25, 0.25)
                                                      )

                                                      f63(
                                                        humanoidRootPart22,
                                                        Vector3.new(-2.25, -1.5, 2.25)
                                                      )

                                                      f63(
                                                        humanoidRootPart22,
                                                        Vector3.new(0, 1.5, 0)
                                                      )

                                                      f63(
                                                        humanoidRootPart22,
                                                        Vector3.new(0, -1.5, 0)
                                                      )

                                                      if findFirstChild23
                                                        and findFirstChild23.PrimaryPart then
                                                        local v149 = math.rad(math.random(
                                                          -369, 369
                                                        ))

                                                        local v150 = math.rad(math.random(
                                                          -369, 369
                                                        ))

                                                        local cframe5 = CFrame.Angles(v149, v150, math.rad(math.random(
                                                          -369, 369
                                                        )))

                                                        findFirstChild23:SetPrimaryPartCFrame(CFrame.new(humanoidRootPart22.Position + Vector3.new(
                                                          0, 1.5, 0
                                                        )) * cframe5)
                                                      end
                                                    end

                                                    if spinning and spinning.Parent then
                                                      spinning:Destroy()
                                                      print("Fling desativado")
                                                    end
                                                  end)

                                                  return
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end,
                                    })

                                    print("Fling - Boat button created")

                                    trollPlayersTab:AddButton({
                                      Name = "Desligar Fling - Boat",
                                      Callback = function()
                                        local localPlayer22 = game.Players.LocalPlayer
                                        local character22 = localPlayer22.Character

                                        local humanoidRootPart23 = character22
                                          and character22:FindFirstChild("HumanoidRootPart")

                                        local humanoid21 = character22
                                          and character22:FindFirstChildOfClass("Humanoid")

                                        local vehicles7 = game.Workspace:FindFirstChild("Vehicles")

                                        if not humanoidRootPart23 or not humanoid21 then
                                          warn("Nenhum RootPart ou Humanoid encontrado!")
                                          return
                                        else
                                          humanoid21.PlatformStand = true
                                          print("Jogador paralisado para reduzir efeitos do spin.")

                                          for key19, value68 in pairs(humanoidRootPart23:GetChildren()) do
                                            if value68:IsA("BodyAngularVelocity")
                                              or value68:IsA("BodyVelocity") then
                                              value68:Destroy()
                                            end
                                          end

                                          print("Spin e forças removidas do jogador.")
                                          replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer("DeleteAllVehicles")
                                          task.wait(0.5)

                                          local findFirstChild25 = vehicles7

                                          findFirstChild25 = vehicles7
                                            and vehicles7:FindFirstChild(localPlayer22.Name
                                              .. "Car")

                                          if findFirstChild25 and findFirstChild25.PrimaryPart then
                                            for key20, value69 in pairs(findFirstChild25.PrimaryPart:GetChildren()) do
                                              if value69:IsA("BodyAngularVelocity")
                                                or value69:IsA("BodyVelocity") then
                                                value69:Destroy()
                                              end
                                            end

                                            print("Spin removido do barco.")
                                          end

                                          task.wait(1)
                                          local vector3 = Vector3.new(0, 1000, 0)

                                          local instance14 = Instance.new(
                                            "BodyPosition", humanoidRootPart23
                                          )

                                          instance14.Position = vector3

                                          instance14.MaxForce = Vector3.new(
                                            math.huge, math.huge, math.huge
                                          )

                                          local instance15 = Instance.new(
                                            "BodyGyro", humanoidRootPart23
                                          )

                                          instance15.CFrame = humanoidRootPart23.CFrame

                                          instance15.MaxTorque = Vector3.new(
                                            math.huge, math.huge, math.huge
                                          )

                                          print("Jogador está preso na coordenada segura.")
                                          task.wait(3)
                                          instance14:Destroy()
                                          instance15:Destroy()
                                          humanoid21.PlatformStand = false
                                          print("Jogador liberado, seguro na posição.")
                                          return
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddSection({ Name = "Click Kill Methods" })

                                    trollPlayersTab:AddButton({
                                      Name = "Click Fling Portas [Beta]",
                                      Description = "Para Usar, Recomendo chegar perto de outras portas, apos ela ir até você, clique no jogador que deseja flingar",
                                      Callback = function()
                                        local localPlayer23 = players.LocalPlayer

                                        local humanoidRootPart24 = (localPlayer23.Character
                                          or localPlayer23.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")

                                        local blackHoleTarget = Instance.new("Part")

                                        blackHoleTarget.Size = Vector3.new(
                                          100000, 100000, 100000
                                        )

                                        blackHoleTarget.Transparency = 1
                                        blackHoleTarget.Anchored = true
                                        blackHoleTarget.CanCollide = false
                                        blackHoleTarget.Name = "BlackHoleTarget"
                                        blackHoleTarget.Parent = v1

                                        local luscaaBlackHoleAttachment = Instance.new("Attachment")
                                        luscaaBlackHoleAttachment.Name = "Luscaa_BlackHoleAttachment"
                                        luscaaBlackHoleAttachment.Parent = blackHoleTarget

                                        runService.Heartbeat:Connect(function()
                                          blackHoleTarget.CFrame = humanoidRootPart24.CFrame
                                        end)

                                        local v151 = {}

                                        local function f65(p37)
                                          if not p37:IsA("BasePart") or p37.Anchored
                                            or not string.find(p37.Name, "Door") then
                                            return
                                          elseif p37:FindFirstChild("Luscaa_Attached") then
                                            return
                                          else
                                            p37.CanCollide = false

                                            for index29, value70 in ipairs(p37:GetChildren()) do
                                              if value70:IsA("AlignPosition")
                                                or value70:IsA("Torque")
                                                or value70:IsA("Attachment") then
                                                value70:Destroy()
                                              end
                                            end

                                            Instance.new("BoolValue", p37).Name = "Luscaa_Attached"
                                            local instance16 = Instance.new("Attachment", p37)

                                            local instance17 = Instance.new(
                                              "AlignPosition", p37
                                            )

                                            instance17.Attachment0 = instance16
                                            instance17.Attachment1 = luscaaBlackHoleAttachment
                                            instance17.MaxForce = 100000000000000000000
                                            instance17.MaxVelocity = math.huge
                                            instance17.Responsiveness = 99999

                                            local instance18 = Instance.new("Torque", p37)
                                            instance18.Attachment0 = instance16
                                            instance18.RelativeTo = Enum.ActuatorRelativeTo.World

                                            instance18.Torque = Vector3.new(math.random(
                                              -1000000, 1000000
                                            ) * 10000, math.random(
                                              -1000000, 1000000
                                            ) * 10000, math.random(
                                              -1000000, 1000000
                                            ) * 10000)

                                            table.insert(v151, {
                                              Part = p37,
                                              Align = instance17,
                                            })

                                            return
                                          end
                                        end

                                        for index30, value71 in ipairs(v1:GetDescendants()) do
                                          if value71:IsA("BasePart")
                                            and string.find(value71.Name, "Door") then
                                            f65(value71)
                                          end
                                        end

                                        v1.DescendantAdded:Connect(function(descendant3)
                                          if descendant3:IsA("BasePart")
                                            and string.find(descendant3.Name, "Door") then
                                            f65(descendant3)
                                          end
                                        end)

                                        local function f66(p38)
                                          local character23 = p38.Character

                                          if not character23 then
                                            return
                                          else
                                            local humanoidRootPart25 = character23:FindFirstChild("HumanoidRootPart")

                                            if not humanoidRootPart25 then
                                              return
                                            else
                                              local shnmaxTargetAttachment = humanoidRootPart25:FindFirstChild("SHNMAX_TargetAttachment")

                                              if not shnmaxTargetAttachment then
                                                shnmaxTargetAttachment = Instance.new(
                                                  "Attachment", humanoidRootPart25
                                                )

                                                shnmaxTargetAttachment.Name = "SHNMAX_TargetAttachment"
                                              end

                                              for index31, value72 in ipairs(v151) do
                                                if value72.Align then
                                                  value72.Align.Attachment1 = shnmaxTargetAttachment
                                                end
                                              end

                                              local v152 = tick()

                                              while tick() - v152 < 5 do
                                                if humanoidRootPart25.Velocity.Magnitude >= 20 then
                                                  break
                                                end

                                                runService.Heartbeat:Wait()
                                              end

                                              for index32, value73 in ipairs(v151) do
                                                if value73.Align then
                                                  value73.Align.Attachment1 = luscaaBlackHoleAttachment
                                                end
                                              end

                                              return
                                            end
                                          end
                                        end

                                        userInputService.TouchTap:Connect(function(p39, p40)
                                          if p40 then
                                            return
                                          else
                                            local v153 = p39[1]

                                            local screenPointToRay = v1.CurrentCamera:ScreenPointToRay(
                                              v153.X, v153.Y
                                            )

                                            local raycast = v1:Raycast(screenPointToRay.Origin, screenPointToRay.Direction
                                              * 1000)

                                            if raycast and raycast.Instance then
                                              local getPlayerFromCharacter = players:GetPlayerFromCharacter(raycast.Instance:FindFirstAncestorOfClass("Model"))

                                              if getPlayerFromCharacter
                                                and getPlayerFromCharacter ~= localPlayer23 then
                                                f66(getPlayerFromCharacter)
                                              end
                                            end

                                            return
                                          end
                                        end)
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Click Fling Couch (Tool)",
                                      Callback = function()
                                        local localPlayer24 = players.LocalPlayer
                                        local currentCamera5 = workspace.CurrentCamera
                                        local v154 = true
                                        local v155 = false
                                        local backpack4 = localPlayer24:WaitForChild("Backpack")

                                        if not backpack4:FindFirstChild("Click Fling Couch")
                                          and not (localPlayer24.Character
                                            and localPlayer24.Character:FindFirstChild("Click Fling Couch")) then
                                          local clickFlingCouch = Instance.new("Tool")
                                          clickFlingCouch.Name = "Click Fling Couch"
                                          clickFlingCouch.RequiresHandle = false
                                          clickFlingCouch.CanBeDropped = false

                                          clickFlingCouch.Equipped:Connect(function()
                                            v155 = true
                                          end)

                                          clickFlingCouch.Unequipped:Connect(function()
                                            v155 = false
                                          end)

                                          clickFlingCouch.Parent = backpack4
                                        end

                                        local function f67(p41)
                                          if not v155 then
                                            return
                                          end

                                          local v156, humanoidRootPart26, character24,
                                            humanoid22, cframe6, forcaJogada

                                          if not p41 or not p41.Character
                                            or p41 == localPlayer24 then
                                            return
                                          else
                                            v156 = true

                                            humanoidRootPart26 = localPlayer24.Character
                                              and localPlayer24.Character:FindFirstChild("HumanoidRootPart")

                                            local character25 = p41.Character

                                            local humanoidRootPart27 = character25

                                            humanoidRootPart27 = character25
                                              and p41.Character:FindFirstChild("HumanoidRootPart")

                                            local v157 = not humanoidRootPart26
                                            local v158 = humanoidRootPart27

                                            if v157 or not v158 then
                                              return
                                            else
                                              character24 = localPlayer24.Character
                                              humanoid22 = character24:FindFirstChildOfClass("Humanoid")
                                              cframe6 = humanoidRootPart26.CFrame
                                              replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                                              task.wait(0.2)

                                              replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                                "PickingTools", "Couch"
                                              )

                                              task.wait(0.3)
                                              local couch6 = localPlayer24.Backpack:FindFirstChild("Couch")

                                              if couch6 then
                                                couch6.Parent = character24
                                              end

                                              task.wait(0.1)

                                              virtualInputManager:SendKeyEvent(
                                                true, Enum.KeyCode.F, false, game
                                              )

                                              task.wait(0.25)
                                              workspace.FallenPartsDestroyHeight = (0 / 0)

                                              forcaJogada = Instance.new("BodyVelocity")
                                              forcaJogada.Name = "ForcaJogada"

                                              forcaJogada.Velocity = Vector3.new(
                                                900000000, 900000000, 900000000
                                              )

                                              forcaJogada.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              forcaJogada.Parent = humanoidRootPart26

                                              humanoid22:SetStateEnabled(
                                                Enum.HumanoidStateType.Seated, false
                                              )

                                              humanoid22.PlatformStand = false

                                              currentCamera5.CameraSubject = p41.Character:FindFirstChild("Head")
                                                or v158 or humanoid22

                                              task.spawn(function()
                                                local total5 = 0
                                                local v159 = { humanoidRootPart26 }

                                                while v156 and p41 and p41.Character
                                                  and p41.Character:FindFirstChildOfClass("Humanoid") do
                                                  if p41.Character:FindFirstChildOfClass("Humanoid").Sit then
                                                    break
                                                  end

                                                  total5 = total5 + 50

                                                  for index33, value74 in ipairs(v159) do
                                                    local humanoidRootPart28 = p41.Character.HumanoidRootPart

                                                    humanoidRootPart26.CFrame = CFrame.new(humanoidRootPart28.Position + humanoidRootPart28.Velocity / 1.5) * CFrame.Angles(
                                                      math.rad(total5), 0, 0
                                                    )
                                                  end

                                                  humanoidRootPart26.Velocity = Vector3.new(
                                                    900000000, 900000000, 900000000
                                                  )

                                                  humanoidRootPart26.RotVelocity = Vector3.new(
                                                    900000000, 900000000, 900000000
                                                  )

                                                  task.wait()
                                                end

                                                v156 = false
                                                forcaJogada:Destroy()

                                                humanoid22:SetStateEnabled(
                                                  Enum.HumanoidStateType.Seated, true
                                                )

                                                humanoid22.PlatformStand = false

                                                humanoidRootPart26.CFrame = cframe6
                                                currentCamera5.CameraSubject = humanoid22

                                                for key21, value75 in pairs(character24:GetDescendants()) do
                                                  if value75:IsA("BasePart") then
                                                    value75.Velocity = Vector3.zero
                                                    value75.RotVelocity = Vector3.zero
                                                  end
                                                end

                                                humanoid22:UnequipTools()

                                                replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                                  "PickingTools", "Couch"
                                                )
                                              end)

                                              while v156 do
                                                task.wait()
                                              end

                                              return
                                            end
                                          end
                                        end

                                        userInputService.TouchTap:Connect(function(p42, p43)
                                          if p43 or not v154 or not v155 then
                                            return
                                          else
                                            local v160 = p42[1]

                                            local screenPointToRay2 = currentCamera5:ScreenPointToRay(
                                              v160.X, v160.Y
                                            )

                                            local raycast2 = workspace:Raycast(screenPointToRay2.Origin, screenPointToRay2.Direction
                                              * 1000)

                                            if raycast2 and raycast2.Instance then
                                              local getPlayerFromCharacter2 = players:GetPlayerFromCharacter(raycast2.Instance:FindFirstAncestorOfClass("Model"))

                                              if getPlayerFromCharacter2
                                                and getPlayerFromCharacter2 ~= localPlayer24 then
                                                v154 = false
                                                f67(getPlayerFromCharacter2)
                                                task.delay(2, function() v154 = true end)
                                              end
                                            end

                                            return
                                          end
                                        end)
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Click Fling Ball (Tool)",
                                      Callback = function()
                                        local currentCamera6 = v1.CurrentCamera
                                        local localPlayer25 = players.LocalPlayer
                                        local v161 = false
                                        local backpack5 = localPlayer25:WaitForChild("Backpack")

                                        if not backpack5:FindFirstChild("Click Fling Ball") then
                                          local clickFlingBall = Instance.new("Tool")
                                          clickFlingBall.Name = "Click Fling Ball"
                                          clickFlingBall.RequiresHandle = false
                                          clickFlingBall.CanBeDropped = false

                                          clickFlingBall.Equipped:Connect(function()
                                            v161 = true
                                          end)

                                          clickFlingBall.Unequipped:Connect(function()
                                            v161 = false
                                          end)

                                          clickFlingBall.Parent = backpack5
                                        end

                                        local function f68(p44)
                                          local localPlayer26 = players.LocalPlayer

                                          local character26 = localPlayer26.Character
                                            or localPlayer26.CharacterAdded:Wait()

                                          local humanoid23 = character26:WaitForChild("Humanoid")
                                          character26:WaitForChild("HumanoidRootPart")
                                          local backpack6 = localPlayer26:WaitForChild("Backpack")
                                          local waitForChild6 = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")

                                          local function f69()
                                            if not backpack6:FindFirstChild("SoccerBall")
                                              and not character26:FindFirstChild("SoccerBall") then
                                              replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                                "PickingTools", "SoccerBall"
                                              )
                                            end

                                            local soccerBall

                                            repeat
                                              task.wait()
                                              local soccerBall2 = backpack6:FindFirstChild("SoccerBall")

                                              soccerBall = soccerBall2

                                              soccerBall = soccerBall2
                                                or character26:FindFirstChild("SoccerBall")
                                            until soccerBall

                                            local soccerBall3 = backpack6:FindFirstChild("SoccerBall")

                                            if soccerBall3 then
                                              soccerBall3.Parent = character26
                                            end

                                            while true do
                                              task.wait()

                                              if waitForChild6:FindFirstChild("Soccer"
                                                .. localPlayer26.Name) then
                                                break
                                              end
                                            end

                                            return waitForChild6:FindFirstChild("Soccer"
                                              .. localPlayer26.Name)
                                          end

                                          local findFirstChild26 = waitForChild6:FindFirstChild("Soccer"
                                              .. localPlayer26.Name)
                                            or f69()

                                          findFirstChild26.CanCollide = false
                                          findFirstChild26.Massless = true

                                          findFirstChild26.CustomPhysicalProperties = PhysicalProperties.new(
                                            0.0001, 0, 0
                                          )

                                          local v162

                                          if p44 ~= localPlayer26 then
                                            local character27 = p44.Character

                                            if character27
                                              and character27:FindFirstChild("HumanoidRootPart")
                                              and character27:FindFirstChild("Humanoid") then
                                              local humanoidRootPart29 = character27.HumanoidRootPart
                                              local humanoid24 = character27.Humanoid

                                              if findFirstChild26:FindFirstChildWhichIsA("BodyVelocity") then
                                                findFirstChild26:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
                                              end

                                              local flingPower2 = Instance.new("BodyVelocity")
                                              flingPower2.Name = "FlingPower"

                                              flingPower2.Velocity = Vector3.new(
                                                900000000, 900000000, 900000000
                                              )

                                              flingPower2.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              flingPower2.P = math.huge
                                              flingPower2.Parent = findFirstChild26

                                              workspace.CurrentCamera.CameraSubject = humanoid24

                                              repeat
                                                if humanoidRootPart29.Velocity.Magnitude > 0 then
                                                  findFirstChild26.CFrame = CFrame.new(humanoidRootPart29.Position
                                                    + humanoidRootPart29.Velocity / 1.5)

                                                  findFirstChild26.Orientation = findFirstChild26.Orientation + Vector3.new(
                                                    45, 60, 30
                                                  )
                                                else
                                                  for key22, value76 in pairs(character27:GetChildren()) do
                                                    if value76:IsA("BasePart")
                                                      and value76.CanCollide
                                                      and not value76.Anchored then
                                                      findFirstChild26.CFrame = value76.CFrame
                                                      task.wait(0.00016666666666667)
                                                    end
                                                  end
                                                end

                                                task.wait(0.00016666666666667)

                                                local v163 = humanoidRootPart29.Velocity.Magnitude
                                                  > 1000

                                                v162 = v163

                                                v162 = v163 or humanoid24.Health <= 0
                                                  or not character27:IsDescendantOf(workspace)
                                                  or p44.Parent ~= players
                                              until v162

                                              workspace.CurrentCamera.CameraSubject = humanoid23
                                            end
                                          end
                                        end

                                        userInputService.TouchTap:Connect(function(p45, p46)
                                          if not v161 or p46 then
                                            return
                                          else
                                            local v164 = p45[1]

                                            local screenPointToRay3 = currentCamera6:ScreenPointToRay(
                                              v164.X, v164.Y
                                            )

                                            local raycast3 = v1:Raycast(screenPointToRay3.Origin, screenPointToRay3.Direction
                                              * 1000)

                                            if raycast3 and raycast3.Instance then
                                              local getPlayerFromCharacter3 = players:GetPlayerFromCharacter((raycast3.Instance:FindFirstAncestorOfClass("Model")))

                                              if getPlayerFromCharacter3
                                                and getPlayerFromCharacter3 ~= localPlayer25 then
                                                f68(getPlayerFromCharacter3)
                                              end
                                            end

                                            return
                                          end
                                        end)
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Click Kill Couch (Tool)",
                                      Callback = function()
                                        local localPlayer27 = players.LocalPlayer
                                        local currentCamera7 = v1.CurrentCamera
                                        local v165 = false
                                        local v166 = false
                                        local backpack7 = localPlayer27:WaitForChild("Backpack")
                                        local name4

                                        if not backpack7:FindFirstChild("Click Kill Couch") then
                                          local clickKillCouch = Instance.new("Tool")
                                          clickKillCouch.Name = "Click Kill Couch"
                                          clickKillCouch.RequiresHandle = false
                                          clickKillCouch.CanBeDropped = false

                                          clickKillCouch.Equipped:Connect(function()
                                            v165 = true
                                          end)

                                          clickKillCouch.Unequipped:Connect(function()
                                            v165 = false
                                            name4 = nil
                                            limparSofa()
                                          end)

                                          clickKillCouch.Parent = backpack7
                                        end

                                        local connect3, part, cframe7, humanoidRootPart30

                                        function limparSofa()
                                          if connect3 then
                                            connect3:Disconnect()
                                            connect3 = nil
                                          end

                                          if v166 then
                                            local character28 = localPlayer27.Character

                                            if character28 then
                                              local couch7 = character28:FindFirstChild("Couch")

                                              if couch7 then
                                                couch7.Parent = localPlayer27.Backpack
                                                v166 = false
                                              end
                                            end
                                          end

                                          if part then
                                            part:Destroy()
                                            part = nil
                                          end

                                          if getgenv().AntiSit then
                                            getgenv().AntiSit:Set(false)
                                          end

                                          local humanoid25 = localPlayer27.Character
                                            and localPlayer27.Character:FindFirstChildOfClass("Humanoid")

                                          if humanoid25 then
                                            humanoid25:SetStateEnabled(
                                              Enum.HumanoidStateType.Physics, true
                                            )

                                            humanoid25:ChangeState(Enum.HumanoidStateType.GettingUp)
                                          end

                                          if cframe7 and humanoidRootPart30 then
                                            humanoidRootPart30.CFrame = cframe7
                                            cframe7 = nil
                                          end
                                        end

                                        function pegarSofa()
                                          local character29 = localPlayer27.Character

                                          if not character29 then
                                            return
                                          else
                                            local backpack8 = localPlayer27.Backpack

                                            if not backpack8:FindFirstChild("Couch")
                                              and not character29:FindFirstChild("Couch") then
                                              replicatedStorage.RE["1Too1l"]:InvokeServer(unpack({
                                                "PickingTools", "Couch",
                                              }))

                                              task.wait(0.1)
                                            end

                                            local couch8 = backpack8:FindFirstChild("Couch")
                                              or character29:FindFirstChild("Couch")

                                            if couch8 then
                                              couch8.Parent = character29
                                              v166 = true
                                            end

                                            return
                                          end
                                        end

                                        function posAleatoriaAbaixo(p47)
                                          local humanoidRootPart31 = p47:FindFirstChild("HumanoidRootPart")

                                          if not humanoidRootPart31 then
                                            return Vector3.new()
                                          else
                                            local v167 = math.random(-2, 2)

                                            local vector4 = Vector3.new(
                                              v167, -5.1, math.random(-2, 2)
                                            )

                                            return humanoidRootPart31.Position + vector4
                                          end
                                        end

                                        function tpAbaixo(p48)
                                          if not p48 or not p48.Character
                                            or not p48.Character:FindFirstChild("HumanoidRootPart") then
                                            return
                                          else
                                            local character30 = localPlayer27.Character

                                            local humanoidRootPart32 = character30
                                              and character30:FindFirstChild("HumanoidRootPart")

                                            local humanoid26 = character30
                                              and character30:FindFirstChildOfClass("Humanoid")

                                            if not humanoidRootPart32 or not humanoid26 then
                                              return
                                            else
                                              humanoid26:SetStateEnabled(
                                                Enum.HumanoidStateType.Physics, false
                                              )

                                              if not part then
                                                part = Instance.new("Part")
                                                part.Size = Vector3.new(10, 1, 10)
                                                part.Anchored = true
                                                part.CanCollide = true
                                                part.Transparency = 0.5
                                                part.Parent = v1
                                              end

                                              local v168 = posAleatoriaAbaixo(p48.Character)
                                              part.Position = v168
                                              humanoidRootPart32.CFrame = CFrame.new(v168)

                                              humanoid26:SetStateEnabled(
                                                Enum.HumanoidStateType.Physics, true
                                              )

                                              return
                                            end
                                          end
                                        end

                                        function arremessarComSofa(p49)
                                          if not p49 then
                                            return
                                          else
                                            name4 = p49.Name
                                            local character31 = localPlayer27.Character

                                            if not character31 then
                                              return
                                            end

                                            cframe7 = character31:FindFirstChild("HumanoidRootPart")
                                              and character31.HumanoidRootPart.CFrame

                                            humanoidRootPart30 = character31:FindFirstChild("HumanoidRootPart")
                                            pegarSofa()

                                            connect3 = runService.Heartbeat:Connect(function()
                                              local findFirstChild27 = players:FindFirstChild(name4)

                                              if not findFirstChild27
                                                or not findFirstChild27.Character
                                                or not findFirstChild27.Character:FindFirstChild("Humanoid") then
                                                limparSofa()
                                                return
                                              end

                                              if getgenv().AntiSit then
                                                getgenv().AntiSit:Set(true)
                                              end

                                              tpAbaixo(findFirstChild27)
                                            end)

                                            task.spawn(function()
                                              local findFirstChild28 = players:FindFirstChild(name4)

                                              while findFirstChild28
                                                and findFirstChild28.Character
                                                and findFirstChild28.Character:FindFirstChild("Humanoid") do
                                                task.wait(0.05)

                                                if findFirstChild28.Character.Humanoid.SeatPart then
                                                  local cframe8 = CFrame.new(
                                                    265.46, -450.83, -59.93
                                                  )

                                                  findFirstChild28.Character.HumanoidRootPart.CFrame = cframe8
                                                  localPlayer27.Character.HumanoidRootPart.CFrame = cframe8
                                                  task.wait(0.4)
                                                  limparSofa()
                                                  task.wait(0.2)

                                                  if cframe7 then
                                                    localPlayer27.Character.HumanoidRootPart.CFrame = cframe7
                                                  end

                                                  break
                                                end
                                              end
                                            end)

                                            return
                                          end
                                        end

                                        userInputService.TouchTap:Connect(function(p50, p51)
                                          if not v165 or p51 then
                                            return
                                          else
                                            local v169 = p50[1]

                                            local screenPointToRay4 = currentCamera7:ScreenPointToRay(
                                              v169.X, v169.Y
                                            )

                                            local raycast4 = v1:Raycast(screenPointToRay4.Origin, screenPointToRay4.Direction
                                              * 1000)

                                            if raycast4 and raycast4.Instance then
                                              local getPlayerFromCharacter4 = players:GetPlayerFromCharacter((raycast4.Instance:FindFirstAncestorOfClass("Model")))

                                              if getPlayerFromCharacter4
                                                and getPlayerFromCharacter4 ~= localPlayer27 then
                                                arremessarComSofa(getPlayerFromCharacter4)
                                              end
                                            end

                                            return
                                          end
                                        end)
                                      end,
                                    })

                                    trollPlayersTab:AddSection({ Name = "All methods" })

                                    trollPlayersTab:AddButton({
                                      Name = "Kill All Bus",
                                      Callback = function()
                                        local vector5 = Vector3.new(145.51, -374.09, 21.58)

                                        local function f70()
                                          local vehicles8 = v1:FindFirstChild("Vehicles")

                                          if vehicles8 then
                                            return vehicles8:FindFirstChild(players.LocalPlayer.Name
                                              .. "Car")
                                          end

                                          return nil
                                        end

                                        local cframe9

                                        local function f71(p52, p53)
                                          while true do
                                            if p52 then
                                              local findFirstChild29 = players:FindFirstChild(p52)

                                              if findFirstChild29 and findFirstChild29.Character
                                                and findFirstChild29.Character:FindFirstChild("HumanoidRootPart") then
                                                local humanoid27 = findFirstChild29.Character:FindFirstChildOfClass("Humanoid")

                                                if humanoid27 and humanoid27.Sit then
                                                  local v170 = f70()

                                                  if v170 then
                                                    v170:SetPrimaryPartCFrame(CFrame.new(vector5))
                                                    print("Jogador sentou, levando ônibus para o void!")
                                                    task.wait(0.2)

                                                    local function f72()
                                                      local humanoid28 = players.LocalPlayer.Character
                                                        and players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")

                                                      if humanoid28 then
                                                        humanoid28:ChangeState(Enum.HumanoidStateType.Jumping)
                                                      end
                                                    end

                                                    f72()

                                                    print("Simulando primeiro pulo!")
                                                    task.wait(0.4)
                                                    f72()
                                                    print("Simulando segundo pulo!")
                                                    task.wait(0.5)

                                                    if cframe9 then
                                                      players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe9
                                                      print("Player voltou para a posição inicial Xique")
                                                      task.wait(0.1)

                                                      replicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
                                                        [1] = "DeleteAllVehicles",
                                                      }))

                                                      print("Todos os veículos foram deletados!")
                                                    end
                                                  end

                                                  break
                                                end

                                                local humanoidRootPart33 = findFirstChild29.Character.HumanoidRootPart
                                                local v171 = tick() * 35
                                                math.sin(v171)
                                                local v172 = math.cos(v171) * 20
                                                local v173 = f70()

                                                if v173 then
                                                  v173:SetPrimaryPartCFrame(humanoidRootPart33.CFrame * CFrame.new(
                                                    0, 0, v172
                                                  ))
                                                end
                                              end
                                            end

                                            runService.RenderStepped:Wait()
                                          end

                                          if p53 then
                                            p53()
                                          end
                                        end

                                        local function f73(p54, p55)
                                          local localPlayer28 = players.LocalPlayer

                                          local character32 = localPlayer28.Character
                                            or localPlayer28.CharacterAdded:Wait()

                                          local humanoidRootPart34 = character32:WaitForChild("HumanoidRootPart")
                                          cframe9 = humanoidRootPart34.CFrame
                                          local v174 = f70()

                                          if not v174 then
                                            humanoidRootPart34.CFrame = CFrame.new(
                                              1118.81, 75.998, -1138.61
                                            )

                                            task.wait(0.5)
                                            local re5 = replicatedStorage:FindFirstChild("RE")

                                            if re5 and re5:FindFirstChild("1Ca1r") then
                                              re5["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                                            end

                                            task.wait(1)
                                            v174 = f70()
                                          end

                                          local sit3

                                          if v174 then
                                            local vehicleSeat6 = v174:FindFirstChild("Body")
                                              and v174.Body:FindFirstChild("VehicleSeat")

                                            if vehicleSeat6
                                              and character32:FindFirstChildOfClass("Humanoid")
                                              and not character32.Humanoid.Sit then
                                              repeat
                                                humanoidRootPart34.CFrame = vehicleSeat6.CFrame
                                                  * CFrame.new(0, 2, 0)

                                                task.wait()

                                                sit3 = character32.Humanoid.Sit
                                                  or not v174.Parent
                                              until sit3
                                            end
                                          end

                                          spawn(function() f71(p54, p55) end)
                                        end

                                        local function f74(p56)
                                          if #p56 == 0 then
                                            return
                                          end

                                          f73(table.remove(p56, 1).Name, function()
                                            task.wait(0.5)
                                            f74(p56)
                                          end)
                                        end

                                        f74(players:GetPlayers())
                                      end,
                                    })

                                    print("Kill All Bus button created")

                                    trollPlayersTab:AddButton({
                                      Name = "House Ban kill All",
                                      Callback = function()
                                        local function f75(p57)
                                          local localPlayer29 = game.Players.LocalPlayer
                                          local backpack9 = localPlayer29.Backpack
                                          local character33 = localPlayer29.Character
                                          local humanoid29 = character33:FindFirstChildOfClass("Humanoid")
                                          local humanoidRootPart35 = character33:FindFirstChild("HumanoidRootPart")
                                          local findFirstChild30 = game.Workspace:FindFirstChild("001_Lots")
                                          local cframe10 = humanoidRootPart35.CFrame
                                          local total6 = 0
                                          local vehicles9 = v1.Vehicles

                                          function Check()
                                            if localPlayer29 and character33 and humanoid29
                                              and humanoidRootPart35 and vehicles9 then
                                              return true
                                            end

                                            return false
                                          end

                                          local findFirstChild31

                                          if Check() then
                                            if not findFirstChild30:FindFirstChild(localPlayer29.Name
                                              .. "House") then
                                              local v175 = nil

                                              for key23, value77 in pairs(findFirstChild30:GetChildren()) do
                                                if value77.Name == "For Sale" then
                                                  for key24, value78 in pairs(value77:GetDescendants()) do
                                                    if value78:IsA("NumberValue")
                                                      and value78.Name == "Number"
                                                      and value78.Value < 25
                                                      and value78.Value > 10 then
                                                      v175 = value77
                                                      break
                                                    end
                                                  end
                                                end
                                              end

                                              local buyHouse2 = v175:FindFirstChild("BuyHouse")
                                              local position4 = buyHouse2.Position

                                              if buyHouse2 and buyHouse2:IsA("BasePart") then
                                                humanoidRootPart35.CFrame = buyHouse2.CFrame + Vector3.new(
                                                  0, -6, 0
                                                )

                                                task.wait(0.5)
                                                local clickDetector2 = buyHouse2:FindFirstChild("ClickDetector")

                                                if clickDetector2 then
                                                  fireclickdetector(clickDetector2)
                                                end
                                              end
                                            end

                                            task.wait(0.5)

                                            local findFirstChild32 = findFirstChild30:FindFirstChild(localPlayer29.Name
                                              .. "House")

                                            if findFirstChild32 then
                                              task.wait(0.5)
                                              local v176 = nil

                                              for key25, value79 in pairs(findFirstChild32:GetDescendants()) do
                                                if value79.Name == "Number"
                                                  and value79:IsA("NumberValue") then
                                                  v176 = value79
                                                end
                                              end

                                              task.wait(0.5)

                                              replicatedStorage.RE:FindFirstChild("1Gettin1gHous1e"):FireServer(
                                                "PickingCustomHouse", "049_House", v176.Value
                                              )
                                            end

                                            task.wait(0.5)

                                            if not vehicles9:FindFirstChild(localPlayer29.Name
                                              .. "Car") then
                                              if Check() then
                                                humanoidRootPart35.CFrame = CFrame.new(
                                                  1118.81, 75.998, -1138.61
                                                )

                                                task.wait(0.5)

                                                replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(
                                                  "PickingCar", "SchoolBus"
                                                )

                                                task.wait(0.5)

                                                local findFirstChild33 = vehicles9:FindFirstChild(localPlayer29.Name
                                                  .. "Car")

                                                task.wait(0.5)
                                                local body3 = findFirstChild33:FindFirstChild("Body")

                                                local vehicleSeat7 = body3

                                                vehicleSeat7 = body3
                                                  and findFirstChild33.Body:FindFirstChild("VehicleSeat")

                                                if vehicleSeat7 then
                                                  while true do
                                                    task.wait()

                                                    humanoidRootPart35.CFrame = vehicleSeat7.CFrame * CFrame.new(0, math.random(
                                                      -1, 1
                                                    ), 0)

                                                    if humanoid29.Sit then
                                                      break
                                                    end
                                                  end
                                                end
                                              end
                                            end

                                            task.wait(0.5)

                                            findFirstChild31 = vehicles9:FindFirstChild(localPlayer29.Name
                                              .. "Car")

                                            if findFirstChild31 then
                                              if not humanoid29.Sit then
                                                local body4 = findFirstChild31:FindFirstChild("Body")

                                                local vehicleSeat8 = body4

                                                vehicleSeat8 = body4
                                                  and findFirstChild31.Body:FindFirstChild("VehicleSeat")

                                                if vehicleSeat8 then
                                                  while true do
                                                    task.wait()

                                                    humanoidRootPart35.CFrame = vehicleSeat8.CFrame * CFrame.new(0, math.random(
                                                      -1, 1
                                                    ), 0)

                                                    if humanoid29.Sit then
                                                      break
                                                    end
                                                  end
                                                end
                                              end

                                              local character34 = p57.Character
                                              local humanoid30 = character34:FindFirstChildOfClass("Humanoid")
                                              local humanoidRootPart36 = character34:FindFirstChild("HumanoidRootPart")

                                              if character34 and humanoid30
                                                and humanoidRootPart36 then
                                                if not humanoid30.Sit then
                                                  while not humanoid30.Sit do
                                                    task.wait()

                                                    local function f76(p58, p59, p60)
                                                      findFirstChild31:SetPrimaryPartCFrame(CFrame.new(p58.Position)
                                                        * p59 * p60)
                                                    end

                                                    total6 = total6 + 100

                                                    f76(humanoidRootPart36, CFrame.new(0, 1.5, 0)
                                                      + humanoid30.MoveDirection
                                                          * humanoidRootPart36.Velocity.Magnitude
                                                        / 1.1, CFrame.Angles(math.rad(total6), 0, 0))

                                                    f76(humanoidRootPart36, CFrame.new(0, -1.5, 0)
                                                      + humanoid30.MoveDirection
                                                          * humanoidRootPart36.Velocity.Magnitude
                                                        / 1.1, CFrame.Angles(math.rad(total6), 0, 0))

                                                    f76(humanoidRootPart36, CFrame.new(2.25, 1.5, -2.25)
                                                      + humanoid30.MoveDirection
                                                          * humanoidRootPart36.Velocity.Magnitude
                                                        / 1.1, CFrame.Angles(math.rad(total6), 0, 0))

                                                    f76(humanoidRootPart36, CFrame.new(-2.25, -1.5, 2.25)
                                                      + humanoid30.MoveDirection
                                                          * humanoidRootPart36.Velocity.Magnitude
                                                        / 1.1, CFrame.Angles(math.rad(total6), 0, 0))

                                                    f76(humanoidRootPart36, CFrame.new(0, 1.5, 0)
                                                      + humanoid30.MoveDirection
                                                          * humanoidRootPart36.Velocity.Magnitude
                                                        / 1.1, CFrame.Angles(math.rad(total6), 0, 0))

                                                    f76(humanoidRootPart36, CFrame.new(0, -1.5, 0)
                                                      + humanoid30.MoveDirection
                                                          * humanoidRootPart36.Velocity.Magnitude
                                                        / 1.1, CFrame.Angles(math.rad(total6), 0, 0))
                                                  end

                                                  task.wait(0.2)

                                                  local findFirstChild34 = findFirstChild30:FindFirstChild(localPlayer29.Name
                                                    .. "House")

                                                  findFirstChild31:SetPrimaryPartCFrame(CFrame.new(findFirstChild34.HouseSpawnPosition.Position))
                                                  task.wait(0.2)

                                                  for key26, value80 in pairs((workspace:FindPartsInRegion3(Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(
                                                    30, 30, 30
                                                  ), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(
                                                    30, 30, 30
                                                  )), game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge))) do
                                                    if value80.Name == "HumanoidRootPart" then
                                                      local findFirstChild35 = players:FindFirstChild(value80.Parent.Name)

                                                      replicatedStorage.RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack({
                                                        [1] = "BanPlayerFromHouse",
                                                        [2] = findFirstChild35,
                                                        [3] = value80.Parent,
                                                      }))
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end

                                          replicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
                                            [1] = "DeleteAllVehicles",
                                          }))
                                        end

                                        for key27, value81 in pairs(players:GetPlayers()) do
                                          if value81 ~= localPlayer3 then
                                            f75(value81)
                                            task.wait(2)
                                          end
                                        end
                                      end,
                                    })

                                    print("House Ban kill All button created")

                                    trollPlayersTab:AddButton({
                                      Name = "Fling Boat all",
                                      Callback = function()
                                        local localPlayer30 = game.Players.LocalPlayer
                                        local character35 = localPlayer30.Character
                                        local humanoid31 = character35:FindFirstChildOfClass("Humanoid")
                                        local humanoidRootPart37 = character35:FindFirstChild("HumanoidRootPart")
                                        local vehicles10 = game.Workspace:FindFirstChild("Vehicles")
                                        local cframe11 = humanoidRootPart37.CFrame
                                        local v177 = 0

                                        local findFirstChild36 = vehicles10:FindFirstChild(localPlayer30.Name
                                          .. "Car")

                                        if not findFirstChild36 then
                                          if humanoidRootPart37 then
                                            humanoidRootPart37.CFrame = CFrame.new(1754, -2, 58)
                                            task.wait(0.5)

                                            replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(
                                              "PickingBoat", "MilitaryBoatFree"
                                            )

                                            task.wait(0.5)

                                            findFirstChild36 = vehicles10:FindFirstChild(localPlayer30.Name
                                              .. "Car")

                                            task.wait(0.5)

                                            local vehicleSeat9 = findFirstChild36:FindFirstChild("Body")
                                              and findFirstChild36.Body:FindFirstChild("VehicleSeat")

                                            if vehicleSeat9 then
                                              while true do
                                                task.wait()

                                                humanoidRootPart37.CFrame = vehicleSeat9.CFrame * CFrame.new(0, math.random(
                                                  -1, 1
                                                ), 0)

                                                if humanoid31.Sit then
                                                  break
                                                end
                                              end
                                            end
                                          end
                                        end

                                        task.wait(0.5)

                                        findFirstChild36 = vehicles10:FindFirstChild(localPlayer30.Name
                                          .. "Car")

                                        if findFirstChild36 then
                                          if not humanoid31.Sit then
                                            local body5 = findFirstChild36:FindFirstChild("Body")

                                            local vehicleSeat10 = body5

                                            vehicleSeat10 = body5
                                              and findFirstChild36.Body:FindFirstChild("VehicleSeat")

                                            if vehicleSeat10 then
                                              while true do
                                                task.wait()

                                                humanoidRootPart37.CFrame = vehicleSeat10.CFrame * CFrame.new(0, math.random(
                                                  -1, 1
                                                ), 0)

                                                if humanoid31.Sit then
                                                  break
                                                end
                                              end
                                            end
                                          end
                                        end

                                        local bodyGyro2 = Instance.new("BodyGyro")
                                        bodyGyro2.Parent = findFirstChild36.PrimaryPart

                                        bodyGyro2.MaxTorque = Vector3.new(
                                          10000000, 10000000, 10000000
                                        )

                                        bodyGyro2.P = 10000000

                                        bodyGyro2.CFrame = findFirstChild36.PrimaryPart.CFrame
                                          * CFrame.Angles(0, math.rad(90), 0)

                                        local function f77(p61, p62, p63)
                                          v177 = 0
                                          local v178 = tick() + 1

                                          while tick() < v178 do
                                            v177 = v177 + 100
                                            task.wait()

                                            local function f78(p64, p65, p66)
                                              findFirstChild36:SetPrimaryPartCFrame(CFrame.new(p64.Position)
                                                * p65 * p66)
                                            end

                                            f78(
                                              p62, CFrame.new(0, 3, 0),
                                              CFrame.Angles(math.rad(v177), 0, 0)
                                            )

                                            f78(
                                              p62, CFrame.new(0, -1.5, 2),
                                              CFrame.Angles(math.rad(v177), 0, 0)
                                            )

                                            f78(
                                              p62, CFrame.new(2, 1.5, 2.25),
                                              CFrame.Angles(math.rad(50), 0, 0)
                                            )

                                            f78(
                                              p62, CFrame.new(-2.25, -1.5, 2.25),
                                              CFrame.Angles(math.rad(30), 0, 0)
                                            )

                                            f78(
                                              p62, CFrame.new(0, 1.5, 0),
                                              CFrame.Angles(math.rad(v177), 0, 0)
                                            )

                                            f78(
                                              p62, CFrame.new(0, -1.5, 0),
                                              CFrame.Angles(math.rad(v177), 0, 0)
                                            )
                                          end
                                        end

                                        for key28, value82 in pairs(game.Players:GetPlayers()) do
                                          if value82 ~= localPlayer30 then
                                            local character36 = value82.Character

                                            local humanoid32 = character36

                                            humanoid32 = character36
                                              and character36:FindFirstChildOfClass("Humanoid")

                                            local humanoidRootPart38 = character36

                                            humanoidRootPart38 = character36
                                              and character36:FindFirstChild("HumanoidRootPart")

                                            if character36 and humanoid32 and humanoidRootPart38 then
                                              f77(character36, humanoidRootPart38, humanoid32)
                                            end
                                          end
                                        end

                                        task.wait(0.5)
                                        findFirstChild36:SetPrimaryPartCFrame(CFrame.new(0, 0, 0))
                                        task.wait(0.5)
                                        humanoid31.Sit = false
                                        task.wait(0.5)
                                        humanoidRootPart37.CFrame = cframe11
                                        bodyGyro2:Destroy()
                                      end,
                                    })

                                    print("Fling Boat All button created")

                                    trollPlayersTab:AddButton({
                                      Name = "Auto Fling All",
                                      Callback = function()
                                        local localPlayer31 = players.LocalPlayer
                                        local currentCamera8 = workspace.CurrentCamera

                                        local function f79(p67)
                                          local v179 = not p67 or not p67.Character
                                            or p67 == localPlayer31

                                          local v180, humanoidRootPart39, character37,
                                            humanoid33, cframe12, flingForce2

                                          if v179 then
                                            return
                                          else
                                            v180 = true

                                            humanoidRootPart39 = localPlayer31.Character
                                              and localPlayer31.Character:FindFirstChild("HumanoidRootPart")

                                            local humanoidRootPart40 = p67.Character
                                              and p67.Character:FindFirstChild("HumanoidRootPart")

                                            if not humanoidRootPart39 or not humanoidRootPart40 then
                                              return
                                            else
                                              character37 = localPlayer31.Character
                                              humanoid33 = character37:FindFirstChildOfClass("Humanoid")
                                              cframe12 = humanoidRootPart39.CFrame
                                              replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                                              task.wait(0.2)

                                              replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                                "PickingTools", "Couch"
                                              )

                                              task.wait(0.3)
                                              local couch9 = localPlayer31.Backpack:FindFirstChild("Couch")

                                              if couch9 then
                                                couch9.Parent = character37
                                              end

                                              task.wait(0.1)

                                              virtualInputManager:SendKeyEvent(
                                                true, Enum.KeyCode.F, false, game
                                              )

                                              task.wait(0.25)
                                              workspace.FallenPartsDestroyHeight = (0 / 0)

                                              flingForce2 = Instance.new("BodyVelocity")
                                              flingForce2.Name = "FlingForce"

                                              flingForce2.Velocity = Vector3.new(
                                                900000000, 900000000, 900000000
                                              )

                                              flingForce2.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              flingForce2.Parent = humanoidRootPart39

                                              humanoid33:SetStateEnabled(
                                                Enum.HumanoidStateType.Seated, false
                                              )

                                              humanoid33.PlatformStand = false

                                              currentCamera8.CameraSubject = p67.Character:FindFirstChild("Head")
                                                or humanoidRootPart40 or humanoid33

                                              task.spawn(function()
                                                local total7 = 0
                                                local v181 = { humanoidRootPart39 }

                                                while v180 and p67 and p67.Character
                                                  and p67.Character:FindFirstChildOfClass("Humanoid") do
                                                  if p67.Character:FindFirstChildOfClass("Humanoid").Sit then
                                                    break
                                                  end

                                                  total7 = total7 + 50

                                                  for index34, value83 in ipairs(v181) do
                                                    local humanoidRootPart41 = p67.Character.HumanoidRootPart

                                                    humanoidRootPart39.CFrame = CFrame.new(humanoidRootPart41.Position + humanoidRootPart41.Velocity / 1.5) * CFrame.Angles(
                                                      math.rad(total7), 0, 0
                                                    )
                                                  end

                                                  humanoidRootPart39.Velocity = Vector3.new(
                                                    900000000, 900000000, 900000000
                                                  )

                                                  humanoidRootPart39.RotVelocity = Vector3.new(
                                                    900000000, 900000000, 900000000
                                                  )

                                                  task.wait()
                                                end

                                                v180 = false
                                                flingForce2:Destroy()

                                                humanoid33:SetStateEnabled(
                                                  Enum.HumanoidStateType.Seated, true
                                                )

                                                humanoid33.PlatformStand = false

                                                humanoidRootPart39.CFrame = cframe12
                                                currentCamera8.CameraSubject = humanoid33

                                                for key29, value84 in pairs(character37:GetDescendants()) do
                                                  if value84:IsA("BasePart") then
                                                    value84.Velocity = Vector3.zero
                                                    value84.RotVelocity = Vector3.zero
                                                  end
                                                end

                                                humanoid33:UnequipTools()

                                                replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(
                                                  "PickingTools", "Couch"
                                                )
                                              end)

                                              while v180 do
                                                task.wait()
                                              end

                                              return
                                            end
                                          end
                                        end

                                        for index35, value85 in ipairs(players:GetPlayers()) do
                                          f79(value85)
                                        end
                                      end,
                                    })

                                    trollPlayersTab:AddButton({
                                      Name = "Bring All Couch [melhor]",
                                      Callback = function()
                                        replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack({
                                          [1] = "ClearAllTools",
                                        }))

                                        wait(0.2)
                                        toolselcted = "Couch"
                                        dupeamot = 25
                                        picktoolremote = replicatedStorage.RE:FindFirstChild("1Too1l")
                                        cleartoolremote = replicatedStorage.RE:FindFirstChild("1Clea1rTool1s")

                                        starterGui:SetCore("SendNotification", {
                                          Title = "Dupando",
                                          Text = "Nao Clique em nada quando tiver dupando . ",
                                          Button1 = " Eu entendi",
                                          Duration = 5,
                                        })

                                        starterGui:SetCore("SendNotification", {
                                          Title = "Dupe Script",
                                          Text = "Because It will break the script and you will need to rejoin.",
                                          Button1 = "Eu entendi",
                                          Duration = 5,
                                        })

                                        duping = true
                                        oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

                                        if game.Players.LocalPlayer.Character.Humanoid.Sit
                                          == true then
                                          task.wait()
                                          game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        end

                                        wait(0.1)

                                        if v1:FindFirstChild("Camera") then
                                          v1:FindFirstChild("Camera"):Destroy()
                                        end

                                        local count3 = 0

                                        while true do
                                          count3 = 1 + count3

                                          if not (count3 <= 2) then
                                            break
                                          end

                                          task.wait()

                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            999999999.414, -490, 999999999.414, 0.974360406,
                                            -0.175734088, 0.14049761, -0.133441404,
                                            0.0514053069, 0.989722729, -0.181150302,
                                            -0.983094692, 0.0266370922
                                          )
                                        end

                                        task.wait(0.2)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                        wait(0.5)

                                        for key30, value86 in pairs(players.LocalPlayer.Character:GetChildren()) do
                                          if value86.Name == toolselcted == false then
                                            if value86:IsA("Tool") then
                                              value86.Parent = game.Players.LocalPlayer.Backpack
                                            end
                                          end
                                        end

                                        for key31, value87 in pairs(players.LocalPlayer.Backpack:GetChildren()) do
                                          if value87:IsA("Tool") then
                                            if value87.Name == toolselcted == false then
                                              value87:Destroy()
                                            end
                                          end
                                        end

                                        for key32, value88 in pairs(players.LocalPlayer.Character:GetChildren()) do
                                          if value88:IsA("Tool") then
                                            if value88.name == toolselcted == false then
                                              value88:Destroy()
                                            end
                                          end
                                        end

                                        for key33, value89 in pairs(players.LocalPlayer.Character:GetChildren()) do
                                          if value89:IsA("Tool") then
                                            if value89.Name == toolselcted then
                                              toollllfoun2 = true

                                              for key34, hANDLE in pairs(value89:GetDescendants()) do
                                                if hANDLE.Name == "Handle" then
                                                  hANDLE.Name = "Hâ\194\129¥aâ\194\129¥nâ\194\129¥dâ\194\129¥lâ\194\129¥e"

                                                  value89.Parent = game.Players.LocalPlayer.Backpack
                                                  value89.Parent = game.Players.LocalPlayer.Character

                                                  tollllahhhh = value89
                                                  task.wait()
                                                end
                                              end
                                            else
                                              toollllfoun2 = false
                                            end
                                          end
                                        end

                                        for key35, value90 in pairs(players.LocalPlayer.Backpack:GetChildren()) do
                                          if value90:IsA("Tool") then
                                            if value90.Name == toolselcted then
                                              toollllfoun = true

                                              for key36, hANDLE2 in pairs(value90:GetDescendants()) do
                                                if hANDLE2.Name == "Handle" then
                                                  value90.Parent = game.Players.LocalPlayer.Character
                                                  wait()
                                                  hANDLE2.Name = "Hâ\194\129¥aâ\194\129¥nâ\194\129¥dâ\194\129¥lâ\194\129¥e"

                                                  value90.Parent = game.Players.LocalPlayer.Backpack
                                                  value90.Parent = game.Players.LocalPlayer.Character

                                                  toolllffel = value90
                                                end
                                              end
                                            else
                                              toollllfoun = false
                                            end
                                          end
                                        end

                                        if toollllfoun == true then
                                          if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel)
                                            == nil then
                                            toollllfoun = false
                                          end

                                          while true do
                                            wait()

                                            if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel)
                                              == nil then
                                              break
                                            end
                                          end

                                          toollllfoun = false
                                        end

                                        if toollllfoun2 == true then
                                          if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh)
                                            == nil then
                                            toollllfoun2 = false
                                          end

                                          while true do
                                            wait()

                                            if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh)
                                              == nil then
                                              break
                                            end
                                          end

                                          toollllfoun2 = false
                                        end

                                        wait(0.1)
                                        local v182 = dupeamot
                                        local count4 = 0
                                        local character38

                                        while true do
                                          count4 = 1 + count4

                                          if not (v182 >= count4) then
                                            break
                                          end

                                          local v183 = count4

                                          if duping == false then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                            return
                                          else
                                            if v1:FindFirstChild("Camera") then
                                              v1:FindFirstChild("Camera"):Destroy()
                                            end

                                            if v183 <= dupeamot then
                                              starterGui:SetCore("SendNotification", {
                                                Title = "Dupando vida",
                                                Text = "Se tem" .. " " .. v183 .. " " .. "Duped"
                                                  .. " " .. toolselcted .. "!",
                                                Duration = 0.5,
                                              })
                                            elseif v183 == dupeamot or v183 >= dupeamot - 1 then
                                              starterGui:SetCore("SendNotification", {
                                                Title = "Dupando",
                                                Text = "Se tem" .. " " .. v183 .. " " .. "Duped"
                                                  .. " " .. toolselcted
                                                  .. "! Duping tools is done now, Please wait a little bit to respawn.",
                                                Duration = 4,
                                              })
                                            end

                                            picktoolremote:InvokeServer(unpack({
                                              [1] = "PickingTools",
                                              [2] = toolselcted,
                                            }))

                                            local backpack10 = players.LocalPlayer.Backpack
                                            backpack10:WaitForChild(toolselcted).Parent = game.Players.LocalPlayer.Character

                                            if duping == false then
                                              game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                              return
                                            else
                                              wait()

                                              local v184 = players.LocalPlayer.Character[toolselcted]
                                              v184:FindFirstChild("Handle").Name = "Hâ\194\129¥aâ\194\129¥nâ\194\129¥dâ\194\129¥lâ\194\129¥e"

                                              local character39 = players.LocalPlayer.Character
                                              character39:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Backpack

                                              local backpack11 = players.LocalPlayer.Backpack
                                              backpack11:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Character

                                              repeat
                                                if v1:FindFirstChild("Camera") then
                                                  v1:FindFirstChild("Camera"):Destroy()
                                                end

                                                task.wait()
                                                character38 = players.LocalPlayer.Character
                                              until character38:FindFirstChild(toolselcted)
                                                == nil
                                            end
                                          end
                                        end

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

                                        while true do
                                          wait()

                                          if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                            == nil then
                                            break
                                          end
                                        end

                                        while true do
                                          wait()

                                          if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                            break
                                          end
                                        end

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
                                        wait()
                                        duping = false

                                        for key37, value91 in pairs(game.Players:GetPlayers()) do
                                          if value91.Name == game.Players.LocalPlayer.Name
                                            == false then
                                            ewoifjwoifjiwo = key37
                                          end
                                        end

                                        local v185 = ewoifjwoifjiwo
                                        local count5 = 0

                                        while true do
                                          count5 = 1 + count5

                                          if not (count5 <= v185) then
                                            break
                                          end

                                          game.Players.LocalPlayer.Backpack.Couch.Name = "couch"
                                            .. count5
                                        end

                                        wait()

                                        for key38, value92 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                          if value92.Name == "couch" .. key38 then
                                            value92.Handle.Name = "Handle "
                                          end
                                        end

                                        wait(0.2)

                                        local function f80(p68, p69)
                                          if p69 == nil == false then
                                            local v186 = game.Players.LocalPlayer.Backpack["couch" .. p68]
                                            v186:FindFirstChild("Seat1").Disabled = true

                                            local v187 = game.Players.LocalPlayer.Backpack["couch" .. p68]
                                            v187:FindFirstChild("Seat2").Disabled = true

                                            game.Players.LocalPlayer.Backpack["couch" .. p68].Parent = game.Players.LocalPlayer.Character
                                            local v188 = game.Players.LocalPlayer.Character["couch" .. p68]

                                            tet = Instance.new(
                                              "BodyVelocity", v188:FindFirstChild("Handle ")
                                            )

                                            tet.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            tet.P = 1250
                                            tet.Velocity = Vector3.new(0, 0, 0)
                                            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                            repeat
                                              local count6 = 0

                                              while true do
                                                count6 = 1 + count6

                                                if not (count6 <= 35) then
                                                  break
                                                end

                                                local v189 = { x = 0, y = 0, z = 0 }
                                                v189.x = p69.Character.HumanoidRootPart.Position.X
                                                v189.y = p69.Character.HumanoidRootPart.Position.Y
                                                v189.z = p69.Character.HumanoidRootPart.Position.Z

                                                v189.x = v189.x
                                                  + p69.Character.HumanoidRootPart.Velocity.X
                                                    / 2

                                                v189.y = v189.y
                                                  + p69.Character.HumanoidRootPart.Velocity.Y
                                                    / 2

                                                v189.z = v189.z
                                                  + p69.Character.HumanoidRootPart.Velocity.Z
                                                    / 2

                                                local v190 = game.Players.LocalPlayer.Character["couch" .. p68]

                                                v190:FindFirstChild("Seat1").CFrame = CFrame.new(Vector3.new(
                                                  v189.x, v189.y, v189.z
                                                )) * CFrame.new(
                                                  -2, 2, 0
                                                )

                                                task.wait()
                                              end

                                              game.Players.LocalPlayer.Character["couch" .. p68].Parent = game.Players.LocalPlayer.Backpack
                                              wait()

                                              local v191 = game.Players.LocalPlayer.Backpack["couch" .. p68]
                                              v191:FindFirstChild("Handle ").Name = "Handle"

                                              wait(0.2)
                                              game.Players.LocalPlayer.Backpack["couch" .. p68].Parent = game.Players.LocalPlayer.Character
                                              wait()

                                              game.Players.LocalPlayer.Character["couch" .. p68].Parent = game.Players.LocalPlayer.Backpack
                                              game.Players.LocalPlayer.Backpack["couch" .. p68].Handle.Name = "Handle "

                                              wait(0.2)
                                              game.Players.LocalPlayer.Backpack["couch" .. p68].Parent = game.Players.LocalPlayer.Character
                                              local v192 = game.Players.LocalPlayer.Character["couch" .. p68]

                                              tet = Instance.new(
                                                "BodyVelocity", v192:FindFirstChild("Seat1")
                                              )

                                              tet.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              tet.P = 1250
                                              tet.Velocity = Vector3.new(0, 0, 0)
                                              tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
                                            until p69.Character.Humanoid.Sit == true

                                            wait()

                                            game.Players.LocalPlayer.Character["couch" .. p68]:FindFirstChild("Handle "):FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
                                            game.Players.LocalPlayer.Character["couch" .. p68].Parent = game.Players.LocalPlayer.Backpack

                                            wait()

                                            local v193 = game.Players.LocalPlayer.Backpack["couch" .. p68]
                                            v193:FindFirstChild("Handle ").Name = "Handle"

                                            wait(0.2)
                                            game.Players.LocalPlayer.Backpack["couch" .. p68].Parent = game.Players.LocalPlayer.Character
                                            wait()
                                            game.Players.LocalPlayer.Character["couch" .. p68].Parent = game.Players.LocalPlayer.Backpack
                                          end
                                        end

                                        for key39, value93 in pairs(game.Players:GetPlayers()) do
                                          local v194 = key39
                                          local v195 = value93

                                          if v195.Name == game.Players.LocalPlayer.Name == false then
                                            spawn(function() f80(v194, v195) end)
                                          end
                                        end
                                      end,
                                    })

                                    print("Bring All Couch button created")

                                    trollPlayersTab:AddButton({
                                      Name = "Kill All Couch [melhor]",
                                      Callback = function()
                                        local v196 = { [1] = "ClearAllTools" }
                                        replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(v196))
                                        wait(0.2)
                                        local position5 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

                                        local part2 = Instance.new("Part")
                                        part2.Size = Vector3.new(5000, 10, 5000)
                                        part2.Position = Vector3.new(0, -500, 0)
                                        part2.Anchored = true
                                        part2.CanCollide = true
                                        part2.Parent = game.Workspace

                                        task.wait()

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                          0, -500, 0
                                        )

                                        wait(2)
                                        toolselcted = "Couch"
                                        dupeamot = 25
                                        picktoolremote = replicatedStorage.RE:FindFirstChild("1Too1l")
                                        cleartoolremote = replicatedStorage.RE:FindFirstChild("1Clea1rTool1s")

                                        starterGui:SetCore("SendNotification", {
                                          Title = "Dupando",
                                          Text = "Nao clique em nada",
                                          Button1 = "Eu entendi",
                                          Duration = 5,
                                        })

                                        starterGui:SetCore("SendNotification", {
                                          Title = "Dupando",
                                          Text = "Espere",
                                          Button1 = "Tendeu",
                                          Duration = 5,
                                        })

                                        duping = true
                                        oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

                                        if game.Players.LocalPlayer.Character.Humanoid.Sit
                                          == true then
                                          task.wait()
                                          game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        end

                                        wait(0.1)

                                        if v1:FindFirstChild("Camera") then
                                          v1:FindFirstChild("Camera"):Destroy()
                                        end

                                        local count7 = 0

                                        while true do
                                          count7 = 1 + count7

                                          if not (count7 <= 2) then
                                            break
                                          end

                                          task.wait()

                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            999999999.414, -490, 999999999.414, 0.974360406,
                                            -0.175734088, 0.14049761, -0.133441404,
                                            0.0514053069, 0.989722729, -0.181150302,
                                            -0.983094692, 0.0266370922
                                          )
                                        end

                                        task.wait(0.2)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                        wait(0.5)

                                        for key40, value94 in pairs(players.LocalPlayer.Character:GetChildren()) do
                                          if value94.Name == toolselcted == false then
                                            if value94:IsA("Tool") then
                                              value94.Parent = game.Players.LocalPlayer.Backpack
                                            end
                                          end
                                        end

                                        for key41, value95 in pairs(players.LocalPlayer.Backpack:GetChildren()) do
                                          if value95:IsA("Tool") then
                                            if value95.Name == toolselcted == false then
                                              value95:Destroy()
                                            end
                                          end
                                        end

                                        for key42, value96 in pairs(players.LocalPlayer.Character:GetChildren()) do
                                          if value96:IsA("Tool") then
                                            if value96.Name == toolselcted == false then
                                              value96:Destroy()
                                            end
                                          end
                                        end

                                        for key43, value97 in pairs(players.LocalPlayer.Character:GetChildren()) do
                                          if value97:IsA("Tool") then
                                            if value97.Name == toolselcted then
                                              local getDescendants = value97.GetDescendants
                                              toollllfoun2 = true

                                              for key44, hANDLE3 in pairs(getDescendants(value97)) do
                                                if hANDLE3.Name == "Handle" then
                                                  hANDLE3.Name = "HÃ¢Â�Â¥aÃ¢Â�Â¥nÃ¢Â�Â¥dÃ¢Â�Â¥lÃ¢Â�Â¥e"

                                                  value97.Parent = game.Players.LocalPlayer.Backpack
                                                  value97.Parent = game.Players.LocalPlayer.Character

                                                  tollllahhhh = value97
                                                  task.wait()
                                                end
                                              end
                                            else
                                              toollllfoun2 = false
                                            end
                                          end
                                        end

                                        for key45, value98 in pairs(players.LocalPlayer.Backpack:GetChildren()) do
                                          if value98:IsA("Tool") then
                                            if value98.Name == toolselcted then
                                              toollllfoun = true

                                              for key46, hANDLE4 in pairs(value98:GetDescendants()) do
                                                if hANDLE4.Name == "Handle" then
                                                  value98.Parent = game.Players.LocalPlayer.Character
                                                  wait()
                                                  hANDLE4.Name = "HÃ¢Â�Â¥aÃ¢Â�Â¥nÃ¢Â�Â¥dÃ¢Â�Â¥lÃ¢Â�Â¥e"

                                                  value98.Parent = game.Players.LocalPlayer.Backpack
                                                  value98.Parent = game.Players.LocalPlayer.Character

                                                  toolllffel = value98
                                                end
                                              end
                                            else
                                              toollllfoun = false
                                            end
                                          end
                                        end

                                        if toollllfoun == true then
                                          if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel)
                                            == nil then
                                            toollllfoun = false
                                          end

                                          while true do
                                            wait()

                                            if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel)
                                              == nil then
                                              break
                                            end
                                          end

                                          toollllfoun = false
                                        end

                                        if toollllfoun2 == true then
                                          if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh)
                                            == nil then
                                            toollllfoun2 = false
                                          end

                                          while true do
                                            wait()

                                            if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh)
                                              == nil then
                                              break
                                            end
                                          end

                                          toollllfoun2 = false
                                        end

                                        wait(0.1)
                                        local character40

                                        for k = 1, dupeamot do
                                          if duping == false then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                            return
                                          else
                                            if v1:FindFirstChild("Camera") then
                                              v1:FindFirstChild("Camera"):Destroy()
                                            end

                                            if k <= dupeamot then
                                              starterGui:SetCore("SendNotification", {
                                                Title = "Dupe Script",
                                                Text = "Agora c Tem" .. " " .. k .. " "
                                                  .. "Duped" .. " " .. toolselcted .. "!",
                                                Duration = 0.5,
                                              })
                                            elseif k == dupeamot or k >= dupeamot - 1 then
                                              starterGui:SetCore("SendNotification", {
                                                Title = "Dupe Script",
                                                Text = "Agora c tem" .. " " .. k .. " "
                                                  .. "Duped" .. " " .. toolselcted
                                                  .. "! As tools Tao sendo dupada Clica em nada nao fiote",
                                                Duration = 4,
                                              })
                                            end

                                            picktoolremote:InvokeServer(unpack({
                                              [1] = "PickingTools",
                                              [2] = toolselcted,
                                            }))

                                            local backpack12 = players.LocalPlayer.Backpack
                                            backpack12:WaitForChild(toolselcted).Parent = game.Players.LocalPlayer.Character

                                            if duping == false then
                                              game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                              return
                                            else
                                              wait()

                                              local v197 = players.LocalPlayer.Character[toolselcted]
                                              v197:FindFirstChild("Handle").Name = "HÃ¢Â�Â¥aÃ¢Â�Â¥nÃ¢Â�Â¥dÃ¢Â�Â¥lÃ¢Â�Â¥e"

                                              local character41 = players.LocalPlayer.Character
                                              character41:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Backpack

                                              local backpack13 = players.LocalPlayer.Backpack
                                              backpack13:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Character

                                              repeat
                                                if v1:FindFirstChild("Camera") then
                                                  v1:FindFirstChild("Camera"):Destroy()
                                                end

                                                task.wait()
                                                character40 = players.LocalPlayer.Character
                                              until character40:FindFirstChild(toolselcted)
                                                == nil
                                            end
                                          end
                                        end

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

                                        while true do
                                          wait()

                                          if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                            == nil then
                                            break
                                          end
                                        end

                                        while true do
                                          wait()

                                          if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                            break
                                          end
                                        end

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
                                        wait()
                                        duping = false

                                        for key47, value99 in pairs(game.Players:GetPlayers()) do
                                          if value99.Name == game.Players.LocalPlayer.Name
                                            == false then
                                            ewoifjwoifjiwo = key47
                                          end
                                        end

                                        for m = 1, ewoifjwoifjiwo do
                                          game.Players.LocalPlayer.Backpack.Couch.Name = "Chaos Couch"
                                            .. m
                                        end

                                        wait()

                                        for key48, value100 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                          if value100.Name == "Chaos Couch" .. key48 then
                                            value100.Handle.Name = "Handle "
                                          end
                                        end

                                        wait(0.2)

                                        local function f81(p70, p71)
                                          if p71 == nil == false then
                                            local v198 = game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70]
                                            v198:FindFirstChild("Seat1").Disabled = true

                                            local v199 = game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70]
                                            v199:FindFirstChild("Seat2").Disabled = true

                                            game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Character
                                            local v200 = game.Players.LocalPlayer.Character["Chaos Couch" .. p70]

                                            tet = Instance.new(
                                              "BodyVelocity", v200:FindFirstChild("Handle ")
                                            )

                                            tet.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            tet.P = 1250
                                            tet.Velocity = Vector3.new(0, 0, 0)
                                            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                            repeat
                                              local count8 = 0

                                              while true do
                                                count8 = 1 + count8

                                                if not (35 >= count8) then
                                                  break
                                                end

                                                local v201 = { x = 0, y = 0, z = 0 }
                                                v201.x = p71.Character.HumanoidRootPart.Position.X
                                                v201.y = p71.Character.HumanoidRootPart.Position.Y
                                                v201.z = p71.Character.HumanoidRootPart.Position.Z

                                                v201.x = v201.x
                                                  + p71.Character.HumanoidRootPart.Velocity.X
                                                    / 2

                                                v201.y = v201.y
                                                  + p71.Character.HumanoidRootPart.Velocity.Y
                                                    / 2

                                                v201.z = v201.z
                                                  + p71.Character.HumanoidRootPart.Velocity.Z
                                                    / 2

                                                local v202 = game.Players.LocalPlayer.Character["Chaos Couch" .. p70]

                                                v202:FindFirstChild("Seat1").CFrame = CFrame.new(Vector3.new(
                                                  v201.x, v201.y, v201.z
                                                )) * CFrame.new(
                                                  -2, 2, 0
                                                )

                                                task.wait()
                                              end

                                              game.Players.LocalPlayer.Character["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Backpack
                                              wait()

                                              local v203 = game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70]
                                              v203:FindFirstChild("Handle ").Name = "Handle"

                                              wait(0.2)
                                              game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Character
                                              wait()

                                              game.Players.LocalPlayer.Character["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Backpack
                                              game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70].Handle.Name = "Handle "

                                              wait(0.2)
                                              game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Character
                                              local v204 = game.Players.LocalPlayer.Character["Chaos Couch" .. p70]

                                              tet = Instance.new(
                                                "BodyVelocity", v204:FindFirstChild("Seat1")
                                              )

                                              tet.MaxForce = Vector3.new(
                                                math.huge, math.huge, math.huge
                                              )

                                              tet.P = 1250
                                              tet.Velocity = Vector3.new(0, 0, 0)
                                              tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
                                            until p71.Character.Humanoid.Sit == true

                                            wait()

                                            game.Players.LocalPlayer.Character["Chaos Couch" .. p70]:FindFirstChild("Handle "):FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
                                            game.Players.LocalPlayer.Character["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Backpack

                                            wait()

                                            local v205 = game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70]
                                            v205:FindFirstChild("Handle ").Name = "Handle"

                                            wait(0.2)
                                            game.Players.LocalPlayer.Backpack["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Character
                                            wait()
                                            game.Players.LocalPlayer.Character["Chaos Couch" .. p70].Parent = game.Players.LocalPlayer.Backpack
                                          end
                                        end

                                        for key49, value101 in pairs(game.Players:GetPlayers()) do
                                          local v206 = key49
                                          local v207 = value101

                                          if v207.Name == game.Players.LocalPlayer.Name == false then
                                            spawn(function() f81(v206, v207) end)
                                          end
                                        end

                                        task.delay(14, function()
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position5)
                                        end)

                                        task.delay(14.1, function()
                                          replicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(v196))
                                        end)
                                      end,
                                    })

                                    print("Kill All Couch button created")

                                    trollPlayersTab:AddButton({
                                      Name = "Fling Ball all",
                                      Callback = function()
                                        local localPlayer32 = players.LocalPlayer
                                        local v208 = workspace.WorkspaceCom["001_SoccerBalls"]

                                        local findFirstChild37 = v208:FindFirstChild("Soccer"
                                          .. localPlayer32.Name)

                                        if not findFirstChild37 then
                                          if not localPlayer32.Backpack:FindFirstChild("SoccerBall") then
                                            replicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                                              [1] = "PickingTools",
                                              [2] = "SoccerBall",
                                            }))

                                            task.wait()
                                            localPlayer32.Backpack.SoccerBall.Parent = localPlayer32.Character

                                            while true do
                                              findFirstChild37 = v208:FindFirstChild("Soccer"
                                                .. localPlayer32.Name)

                                              task.wait()

                                              if findFirstChild37 then
                                                break
                                              end
                                            end

                                            localPlayer32.Character.SoccerBall.Parent = localPlayer32.Backpack
                                            task.wait()
                                          else
                                            localPlayer32.Backpack.SoccerBall.Parent = localPlayer32.Character

                                            while true do
                                              findFirstChild37 = v208:FindFirstChild("Soccer"
                                                .. localPlayer32.Name)

                                              task.wait()

                                              if findFirstChild37 then
                                                break
                                              end
                                            end

                                            localPlayer32.Character.SoccerBall.Parent = localPlayer32.Backpack
                                          end
                                        end

                                        local v209

                                        for key50, value102 in pairs(game.Players:GetPlayers()) do
                                          if value102 ~= game.Players.LocalPlayer then
                                            local character42 = value102.Character

                                            local v210 = character42
                                            v210 = character42 or value102.CharacterAdded:Wait()

                                            local humanoidRootPart42 = v210:WaitForChild("HumanoidRootPart")

                                            if not findFirstChild37 or not humanoidRootPart42 then
                                              return
                                            end

                                            for key51, value103 in pairs(findFirstChild37:GetChildren()) do
                                              if value103:IsA("BodyMover") then
                                                value103:Destroy()
                                              end
                                            end

                                            local bodyVelocity3 = Instance.new("BodyVelocity")

                                            bodyVelocity3.Velocity = Vector3.new(
                                              900000000, 900000000, 900000000
                                            )

                                            bodyVelocity3.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            bodyVelocity3.P = 10000000000
                                            bodyVelocity3.Parent = findFirstChild37

                                            local bodyVelocity4 = Instance.new("BodyVelocity")

                                            bodyVelocity4.Velocity = Vector3.new(
                                              900000000, 900000000, 900000000
                                            )

                                            bodyVelocity4.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            bodyVelocity4.P = 1000000000
                                            bodyVelocity4.Parent = humanoidRootPart42

                                            local position6 = humanoidRootPart42.Position
                                            workspace.CurrentCamera.CameraSubject = humanoidRootPart42

                                            repeat
                                              local magnitude = humanoidRootPart42.Velocity.Magnitude
                                              local v211 = {}

                                              for key52, value104 in pairs(v210:GetDescendants()) do
                                                if value104:IsA("BasePart")
                                                  and value104.CanCollide
                                                  and not value104.Anchored then
                                                  table.insert(v211, value104)
                                                end
                                              end

                                              for index36, value105 in ipairs(v211) do
                                                findFirstChild37.CFrame = CFrame.new(value102.Character.HumanoidRootPart.Position.X
                                                  + value102.Character.HumanoidRootPart.Velocity.X
                                                    / 1.5, value102.Character.HumanoidRootPart.Position.Y
                                                  + value102.Character.HumanoidRootPart.Velocity.Y
                                                    / 1.5, value102.Character.HumanoidRootPart.Position.Z
                                                  + value102.Character.HumanoidRootPart.Velocity.Z
                                                    / 1.5)

                                                task.wait(0.00016666666666667)
                                              end

                                              task.wait(0.00016666666666667)

                                              local v212 = humanoidRootPart42.Velocity.Magnitude
                                                > 5000

                                              v209 = v212

                                              v209 = v212 or v210.Humanoid.Health == 0
                                                or value102.Parent ~= game.Players
                                                or humanoidRootPart42.Parent ~= v210
                                                or v210 ~= value102.Character
                                            until v209
                                          end
                                        end

                                        local character43 = game.Players.LocalPlayer.Character
                                        workspace.CurrentCamera.CameraSubject = character43:WaitForChild("HumanoidRootPart")
                                      end,
                                    })

                                    local tab7 = window:MakeTab({ "Scripts Universais", "plane" })
                                    tab7:AddSection({ Name = "Scripts Universais" })

                                    tab7:AddButton({
                                      Name = "Rael Hub Brook",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://rawscripts.net/raw/The-Mimic-Rael-Hub-20921"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "ShiftLock",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://pastebin.com/raw/N2tiHgyv"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "Ghost Hub",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "InfiniteYield cmd",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "TP Tool",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Tp-tool-script-5767"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "Fly Gui",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "Nameless Admin cmd",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "Telekinesis",
                                      Callback = function()
                                        loadstring(game:HttpGet(
                                          "https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md",
                                          true
                                        ))()
                                      end,
                                    })

                                    tab7:AddButton({
                                      Name = "Shaders",
                                      Callback = function()
                                        window:Dialog({
                                          Title = "Info",
                                          Text = "Tem certeza que deseja colocar shader no mapa?",
                                          Options = {
                                            {
                                              "Sim",
                                              function()
                                                loadstring(game:HttpGet(
                                                  "https://raw.githubusercontent.com/realgengar/scripts/refs/heads/main/free",
                                                  true
                                                ))()
                                              end,
                                            },
                                            { "Não", function() end },
                                          },
                                        })
                                      end,
                                    })

                                    local tab8 = window:MakeTab({ "Nomes", "paper" })
                                    tab8:AddSection({ Name = "Adicionar Nomes no Player" })

                                    for index37, value106 in ipairs({
                                      { "Anonymus", "Anonymus" }, { "PRO", "PRO" },
                                      { "ERROR 666", "ERROR 666" },
                                      { "DARKNESSS", "DARKNESSS" }, { "GHOST", "GHOST" },
                                      { "JOKER", "JOKER" }, { "ADMIN", "ADMIN" },
                                      { "TUBERS93", "TUBERS93" }, { "COOLKID", "COOLKID" },
                                      { "GAME ATTACKED BY MAFIA", "GAME ATTACKED BY MAFIA" },
                                      { "INCOMUN", "INCOMUN" }, { "BAD BOY", "BAD BOY" },
                                    }) do
                                      local v213 = value106

                                      tab8:AddButton({
                                        Name = "Name: " .. v213[1],
                                        Callback = function()
                                          replicatedStorage.RE["1RPNam1eTex1t"]:FireServer(
                                            "RolePlayName", v213[2]
                                          )
                                        end,
                                      })
                                    end

                                    local tab9 = window:MakeTab({
                                      "Avatar", "rbxassetid://10734952036",
                                    })

                                    tab9:AddSection({ Name = "Copiar Skin" })

                                    remotes = replicatedStorage:WaitForChild("Remotes")

                                    function f9()
                                      local v214 = {}

                                      for index38, value107 in ipairs(players:GetPlayers()) do
                                        table.insert(v214, value107.Name)
                                      end

                                      return v214
                                    end

                                    re = replicatedStorage:WaitForChild("RE")
                                    v43 = nil

                                    selecionarJogadorAddDropdown2 = tab9:AddDropdown({
                                      Name = "Selecionar Jogador",
                                      Options = f9(),
                                      Default = v43,
                                      Callback = function(value108) v43 = value108 end,
                                    })

                                    local function f82()
                                      selecionarJogadorAddDropdown2:Refresh(f9(), true)
                                    end

                                    players.PlayerAdded:Connect(f82)
                                    players.PlayerRemoving:Connect(f82)

                                    tab9:AddButton({
                                      Name = "Copiar Avatar",
                                      Callback = function()
                                        local f83, f84

                                        if not v43 then
                                          return
                                        else
                                          local character44 = players.LocalPlayer.Character
                                          local findFirstChild38 = players:FindFirstChild(v43)

                                          if findFirstChild38 and findFirstChild38.Character then
                                            local humanoid34 = character44
                                              and character44:FindFirstChildOfClass("Humanoid")

                                            local humanoid35 = findFirstChild38.Character:FindFirstChildOfClass("Humanoid")

                                            if humanoid34 and humanoid35 then
                                              local getAppliedDescription = humanoid34:GetAppliedDescription()

                                              for index39, value109 in ipairs(getAppliedDescription:GetAccessories(true)) do
                                                if value109.AssetId
                                                  and tonumber(value109.AssetId) then
                                                  remotes.Wear:InvokeServer(tonumber(value109.AssetId))
                                                  task.wait(0.2)
                                                end
                                              end

                                              if tonumber(getAppliedDescription.Shirt) then
                                                remotes.Wear:InvokeServer(tonumber(getAppliedDescription.Shirt))
                                                task.wait(0.2)
                                              end

                                              if tonumber(getAppliedDescription.Pants) then
                                                remotes.Wear:InvokeServer(tonumber(getAppliedDescription.Pants))
                                                task.wait(0.2)
                                              end

                                              if tonumber(getAppliedDescription.Face) then
                                                remotes.Wear:InvokeServer(tonumber(getAppliedDescription.Face))
                                                task.wait(0.2)
                                              end

                                              local getAppliedDescription2 = humanoid35:GetAppliedDescription()

                                              remotes.ChangeCharacterBody:InvokeServer(unpack({
                                                [1] = {
                                                  [1] = getAppliedDescription2.Torso,
                                                  [2] = getAppliedDescription2.RightArm,
                                                  [3] = getAppliedDescription2.LeftArm,
                                                  [4] = getAppliedDescription2.RightLeg,
                                                  [5] = getAppliedDescription2.LeftLeg,
                                                  [6] = getAppliedDescription2.Head,
                                                },
                                              }))

                                              task.wait(0.5)
                                              local shirt = getAppliedDescription2.Shirt
                                              local v215 = tonumber(shirt)

                                              if v215 then
                                                local v216 = getAppliedDescription2[players[v17(
                                                  "TL\145\147\164\166", 18419224797569
                                                )]]

                                                if g[character44] and g[findFirstChild38]
                                                  and g[humanoid34] then
                                                  if g[humanoid34][players[v17(
                                                    "L,\167\241\226^\179\178", 15946462240001
                                                  )]][players[v17(
                                                    "\201\12\188F7Y\2136\14", 19981940614232
                                                  )]] < 50 then
                                                    getgenv()[players[v17("m*q\157\7\244", 19322297836325)]] = g[humanoid34][players[v17(
                                                      "\241\141\200\2019\129", 17916050170006
                                                    )]]
                                                  end

                                                  if g[v215]
                                                    and g[v215][players[v17("ZM\22", 7972087664256)]]
                                                    and not f2 then
                                                    remotes(players[v17("J\17\21֘", 20612641023358)])

                                                    getgenv()[players[v17(
                                                      "\160\240\189\251,\4xj\19", 3070146397589
                                                    )]] = false

                                                    return
                                                  end

                                                  if getAppliedDescription then
                                                    workspace[players[v17(
                                                      "\236@\201\195\246y\11\8,\251iߘ",
                                                      10207127540369
                                                    )]][players[v17(
                                                      "BX_\186R\24\248m\195\r\r\200~",
                                                      15675791875203
                                                    )]] = getAppliedDescription
                                                  elseif not getAppliedDescription and v216 then
                                                    workspace[players[v17(
                                                      "<\11{\212\2385\156\8\228\243J܅",
                                                      9084470202502
                                                    )]][players[v17(
                                                      "ex\141/\0\145E\"\2004{\244\212",
                                                      21722356803459
                                                    )]] = v216
                                                  elseif g[v215] and g[shirt] then
                                                    workspace[players[v17(
                                                      "\179f\4h]A\151c\19\158\203Wy",
                                                      15658213710971
                                                    )]][players[v17(
                                                      "\157~\168\134\140\170\134\31+\178\188\221\245",
                                                      23741879511855
                                                    )]] = g[v215]
                                                  end

                                                  if not g[humanoid35]:FindFirstChildWhichIsA(players[v17(
                                                    "\212\249ְ\200T\200h", 27666392543827
                                                  )]) then
                                                    return
                                                  end

                                                  function f84(p72, p73, p74)
                                                    g[A[1]][players[v17("\198\205\222I\t\176", 7421099838847)]] = CFrame[players[v17(
                                                      "3\132\192", 28374018945948
                                                    )]](p72[players[v17(
                                                      "\227\127\217\24*\173\250\254",
                                                      10115642675814
                                                    )]]) * p73 * p74

                                                    g[A[4]]:SetPrimaryPartCFrame(CFrame[players[v17(
                                                      "\186\180>", 17076293279503
                                                    )]](p72[players[v17(
                                                      "\223\243v\1\1314~w", 29719072798223
                                                    )]]) * p73 * p74)

                                                    g[A[1]][players[v17("6#b\20\1351\178\171", 14890354121493)]] = Vector3[players[v17(
                                                      "\174\239\130", 34700066324254
                                                    )]](
                                                      90000000, 900000000, 90000000
                                                    )

                                                    g[A[1]][players[v17(
                                                      "m2%B\172\3L\152\155\27\246",
                                                      33157328043088
                                                    )]] = Vector3[players[v17(
                                                      "\149}\144", 15715537935510
                                                    )]](
                                                      900000000, 900000000, 900000000
                                                    )
                                                  end

                                                  function f83(p75)
                                                    local v217 = tick()
                                                    local total8 = 0
                                                    local v218

                                                    repeat
                                                      if g[A[1]] and g[A[2]] then
                                                        if p75[players[v17(
                                                          "\t\207\250A\194k[W", 14468871936593
                                                        )]][players[v17(
                                                          "\21\195k7\189\4\192R\139",
                                                          1390523040391
                                                        )]] < 50 then
                                                          total8 = total8 + 100

                                                          f84(p75, CFrame[players[v17("\236#e", 18681206415867)]](
                                                            0, 1.5, 0
                                                          ) + g[A[2]][players[v17(
                                                            "n·\139֕\252&ڿt\227\215",
                                                            12646709925633
                                                          )]] * p75[players[v17(
                                                            "\15\145\28\133!\225\165\6",
                                                            942386905526
                                                          )]][players[v17(
                                                            "4\131\251E\18\238-\2308",
                                                            13998954682742
                                                          )]] / 1.25, CFrame[players[v17("֓!\152\173l", 32254233262763)]](math[players[v17(
                                                            "\153\240\171", 19361611703095
                                                          )]](total8), 0, 0))

                                                          task[players[v17("\168o'\23", 29945416922744)]]()

                                                          f84(p75, CFrame[players[v17("\157\249\127", 17051801771780)]](
                                                            0, -1.5, 0
                                                          ) + g[A[2]][players[v17(
                                                            "\153؍\241\170\147ܼ\241\138\151c\127",
                                                            3499537434205
                                                          )]] * p75[players[v17(
                                                            "\18\31\"\158+\204)\167",
                                                            12677094987535
                                                          )]][players[v17(
                                                            "RPU#\153\171aSl", 25023889436036
                                                          )]] / 1.25, CFrame[players[v17("\21쩀\rx", 24112178457564)]](math[players[v17(
                                                            "\1893\172", 15747241385124
                                                          )]](total8), 0, 0))

                                                          task[players[v17("-\218E\207", 46644871189)]]()

                                                          f84(p75, CFrame[players[v17("\132.\192", 4603598227551)]](
                                                            2.25, 1.5, -2.25
                                                          ) + g[A[2]][players[v17(
                                                            "7\186\211\204Qu=\168\249z\2x]",
                                                            24831711587627
                                                          )]] * p75[players[v17(
                                                            "l\212\205l&\251\234)",
                                                            21769001674648
                                                          )]][players[v17(
                                                            "\255\1639W\195n\2445\157",
                                                            20261811938523
                                                          )]] / 1.25, CFrame[players[v17(
                                                            "\15V\1542c\196", 13389218994266
                                                          )]](math[players[v17(
                                                            "\5S3", 14251022129644
                                                          )]](total8), 0, 0))

                                                          task[players[v17("G\161\155O", 27682911777370)]]()

                                                          f84(p75, CFrame[players[v17("*rE", 6578865834999)]](
                                                            -2.25, -1.5, 2.25
                                                          ) + g[A[2]][players[v17(
                                                            "]HEJ\167Q\197tW\230\237\243\31",
                                                            24366664805458
                                                          )]] * p75[players[v17(
                                                            "\4\202\n\159\183J\16\193",
                                                            9574832951658
                                                          )]][players[v17(
                                                            "\226\141\230W\127\162\236\252a",
                                                            1113566528006
                                                          )]] / 1.25, CFrame[players[v17(
                                                            "\172\193\227\133K\14",
                                                            4072646821736
                                                          )]](math[players[v17(
                                                            "\166\132\162", 9090527170697
                                                          )]](total8), 0, 0))

                                                          task[players[v17("\170v\144B", 34270894587478)]]()

                                                          f84(p75, CFrame[players[v17("\205\196I", 19788184773630)]](
                                                            0, 1.5, 0
                                                          ) + g[A[2]][players[v17(
                                                            "0\174\221\23\141\161\149w\6ֳ\246\239",
                                                            23559399107290
                                                          )]], CFrame[players[v17(
                                                            "\254\r\167\19\156X", 477045522654
                                                          )]](math[players[v17(
                                                            "\238\129\213", 3285019084281
                                                          )]](total8), 0, 0))

                                                          task[players[v17("\173\216#\205", 1021736927707)]]()

                                                          f84(p75, CFrame[players[v17("[L\228", 1419432444564)]](
                                                            0, -1.5, 0
                                                          ) + g[A[2]][players[v17(
                                                            "\2%\177Y\188~7Ui\130\144\143\185",
                                                            17283973767024
                                                          )]], CFrame[players[v17(
                                                            "\r\204#\11\238\29", 33275970190471
                                                          )]](math[players[v17(
                                                            "\t&d", 20781044147660
                                                          )]](total8), 0, 0))

                                                          task[players[v17("\152<:\175", 12045018584552)]]()
                                                        else
                                                          f84(p75, CFrame[players[v17("\251L\231", 15143399873419)]](0, 1.5, g[A[2]][players[v17(
                                                            "\200L\219\239pYt=\185",
                                                            24280581598250
                                                          )]]), CFrame[players[v17(
                                                            "vp\21t\195\249", 24722113572088
                                                          )]](math[players[v17(
                                                            "pq\167", 4982917204240
                                                          )]](90), 0, 0))

                                                          task[players[v17("\8`\5-", 13208387950598)]]()

                                                          f84(p75, CFrame[players[v17(":\240\246", 5284982868381)]](0, -1.5, -g[A[2]][players[v17(
                                                            "\201\236@J\207U\138\138\211",
                                                            5029562091814
                                                          )]]), CFrame[players[v17(
                                                            "s^\178\168\242$", 17811986194534
                                                          )]](
                                                            0, 0, 0
                                                          ))

                                                          task[players[v17("J?\241\210", 30116694456008)]]()

                                                          f84(p75, CFrame[players[v17("\219\231\1", 26798563766463)]](0, 1.5, g[A[2]][players[v17(
                                                            "\7\232o\131\157\27R4\211",
                                                            2889426027841
                                                          )]]), CFrame[players[v17(
                                                            "$(\8\131\213\240", 8321541361443
                                                          )]](math[players[v17(
                                                            "\4_z", 5865213790891
                                                          )]](90), 0, 0))

                                                          task[players[v17("\254\0\241\210", 30572337821596)]]()

                                                          f84(p75, CFrame[players[v17("\174\15\211", 14900407196442)]](0, 1.5, g[A[6]][players[v17(
                                                            "\131\150a\131(=\145A",
                                                            30231878596349
                                                          )]][players[v17(
                                                            "\157\245cQ\t\197\7\160i",
                                                            4962798668038
                                                          )]] / 1.25), CFrame[players[v17(
                                                            "z\3\11s\8\244", 16013973740833
                                                          )]](math[players[v17(
                                                            "RSg", 34304525434470
                                                          )]](90), 0, 0))

                                                          task[players[v17("\149\22Z3", 14053325855120)]]()

                                                          f84(p75, CFrame[players[v17("e\181\159", 15100496223095)]](0, -1.5, -g[A[6]][players[v17(
                                                            "\148P\239\246\217=xo",
                                                            18908338102884
                                                          )]][players[v17(
                                                            "hl\201\0220\181\22w+",
                                                            2428352857194
                                                          )]] / 1.25), CFrame[players[v17(
                                                            "\231\25\250\248\244\178",
                                                            15577541745749
                                                          )]](
                                                            0, 0, 0
                                                          ))

                                                          task[players[v17(" \208\220E", 22193357187166)]]()

                                                          f84(p75, CFrame[players[v17("lU\\", 3450089801286)]](0, 1.5, g[A[6]][players[v17(
                                                            "\211\12\160\216\11\196\222\14",
                                                            16996974190314
                                                          )]][players[v17(
                                                            "\188pʮֈ\248'\197", 4292958848975
                                                          )]] / 1.25), CFrame[players[v17(
                                                            "\181\178z\154\24\246",
                                                            1541687886541
                                                          )]](math[players[v17(
                                                            "(\233b", 2593646249143
                                                          )]](90), 0, 0))

                                                          task[players[v17("\242}\166#", 16337977433527)]]()

                                                          f84(p75, CFrame[players[v17("\"\18\189", 16685087759961)]](
                                                            0, -1.5, 0
                                                          ), CFrame[players[v17(
                                                            "\223\2[\12\208\217", 26874227847394
                                                          )]](math[players[v17(
                                                            "\192\27\180", 5875718900400
                                                          )]](90), 0, 0))

                                                          task[players[v17("\177_FF", 21668004980585)]]()

                                                          f84(p75, CFrame[players[v17("\18_\171", 4898243692776)]](
                                                            0, -1.5, 0
                                                          ), CFrame[players[v17(
                                                            "\19\253\1760\252\11",
                                                            11160701768781
                                                          )]](
                                                            0, 0, 0
                                                          ))

                                                          task[players[v17("D\4s+", 26697567072400)]]()

                                                          f84(p75, CFrame[players[v17("S\147\170", 22710229887311)]](
                                                            0, -1.5, 0
                                                          ), CFrame[players[v17("\14\128ε?\t", 6093024135957)]](math[players[v17(
                                                            "\250\210\245", 18311758733647
                                                          )]](-90), 0, 0))

                                                          task[players[v17("\211X\2558", 25599655931536)]]()

                                                          f84(p75, CFrame[players[v17("!|m", 14414565497400)]](
                                                            0, -1.5, 0
                                                          ), CFrame[players[v17(
                                                            "\243\215\251\224\231\253",
                                                            24176972540922
                                                          )]](
                                                            0, 0, 0
                                                          ))

                                                          task[players[v17("\130p\145\160", 20987621647917)]]()
                                                        end

                                                        local v219 = p75[players[v17(
                                                          "\188\148\222#\142.mn", 29314972693842
                                                        )]][players[v17(
                                                          ")\t\225\242\14pȀ\196",
                                                          19224479032056
                                                        )]] > 500

                                                        v218 = v219

                                                        v218 = v219 or p75[players[v17(
                                                          "H\158l\183/\18", 25950420315956
                                                        )]] ~= g[A[7]][players[v17(
                                                          "-\221E\135yq\198\222\23",
                                                          10144574329459
                                                        )]] or g[A[7]][players[v17(
                                                          "\177\231\n=\231\128", 18344632361310
                                                        )]] ~= re or not g[A[7]][players[v17(
                                                          "8v\0311\184R&\19\219", 4819374065860
                                                        )]] == g[A[9]] or g[A[2]][players[v17("\182#?", 25245070552555)]] or g[A[10]][players[v17(
                                                          "\189X\26\153\152\215", 2068598358979
                                                        )]] <= 0 or tick() > v217 + 2 or getgenv()[players[v17(
                                                          "{\12\183<\4\241spE", 7247726939438
                                                        )]] == false
                                                      else
                                                        break
                                                      end
                                                    until v218
                                                  end

                                                  workspace[players[v17(
                                                    "3I\140 0\187\149%f\199ҺwB\2553\31B\139\0b\203\26\140",
                                                    5638240209473
                                                  )]] = (0 / 0)

                                                  local instance19 = Instance[players[v17(
                                                    "~\163\19", 24261955546145
                                                  )]](players[v17(
                                                    "\154f\183\136\182\129\"\12\138\190\1c",
                                                    10697816740725
                                                  )])

                                                  instance19[players[v17("S\211\215\1", 22635214399788)]] = players[v17(
                                                    "n\0\252C\150\1916~\157\16", 28554914395120
                                                  )]

                                                  instance19[players[v17("|\17u\166\188\23", 12239504627267)]] = g[humanoid34]

                                                  instance19[players[v17("\194\150\1343t\232\159U", 25228860648932)]] = Vector3[players[v17(
                                                    "_%\170", 9708519723432
                                                  )]](
                                                    900000000, 900000000, 900000000
                                                  )

                                                  instance19[players[v17("h~\156\191\242\12LX", 28924592403613)]] = Vector3[players[v17(
                                                    "z\142\149", 16918716391110
                                                  )]](
                                                    math.huge, math.huge, math.huge
                                                  )

                                                  g[findFirstChild38]:SetStateEnabled(Enum[players[v17(
                                                    "\188\204\198gè\228\251M@\171g\155\217\199\28\23",
                                                    15584238640216
                                                  )]][players[v17(
                                                    "Hp\1843;\248", 15408225278983
                                                  )]], false)

                                                  if g[shirt] and getAppliedDescription then
                                                    if (g[shirt][players[v17("y\244\169y\206\220", 21816960100271)]][players[v17("\184", 26744940408998)]] - getAppliedDescription[players[v17(
                                                      "\185\185\245\137\220b", 6921420246167
                                                    )]][players[v17("\249", 9342817882366)]])[players[v17(
                                                      "\147\218\226\134\0047I\250e",
                                                      32837964544955
                                                    )]] > 5 then
                                                      f83(getAppliedDescription)
                                                    else
                                                      f83(g[shirt])
                                                    end
                                                  elseif g[shirt]
                                                    and not getAppliedDescription then
                                                    f83(g[shirt])
                                                  elseif not g[shirt]
                                                    and getAppliedDescription then
                                                    f83(getAppliedDescription)
                                                  elseif not g[shirt]
                                                    and not getAppliedDescription
                                                    and getAppliedDescription2 and v216 then
                                                    f83(v216)
                                                  end

                                                  instance19:Destroy()

                                                  g[findFirstChild38]:SetStateEnabled(Enum[players[v17(
                                                    "OψO~Oe\240\129\167\154\179_\235\136\19N",
                                                    25233178979814
                                                  )]][players[v17(
                                                    "\251e\216\254\25s", 34942473813903
                                                  )]], true)

                                                  workspace[players[v17(
                                                    "\162yJ)~\r\187Q\166~\226\2265",
                                                    12068157937139
                                                  )]][players[v17(
                                                    ";5\220@Pf\214\208W\12\11և", 14225779415520
                                                  )]] = g[findFirstChild38]

                                                  while true do
                                                    g[humanoid34][players[v17("\243Lgpu&", 20745723356604)]] = getgenv()[players[v17(
                                                      "\244\240#F\145\183", 6198758542150
                                                    )]] * CFrame[players[v17(
                                                      "\\z\143", 33450258463960
                                                    )]](
                                                      0, 0.5, 0
                                                    )

                                                    g[character44]:SetPrimaryPartCFrame(getgenv()[players[v17(
                                                      "\186\183\183%A\195", 11511771583728
                                                    )]] * CFrame[players[v17(
                                                      "\156\r\155", 16343332871610
                                                    )]](
                                                      0, 0.5, 0
                                                    ))

                                                    g[findFirstChild38]:ChangeState(players[v17(
                                                      "\152\186\130,\238Ň-\31", 16610518720054
                                                    )])

                                                    local v220 = g[character44]

                                                    table[players[v17("\14\194\149y\211O\28", 16331145649588)]](v220:GetChildren(), function(p76, p77)
                                                      if p77:IsA(players[v17(
                                                        "\168G\175ɫ\236\15\170", 6404031335334
                                                      )]) then
                                                        local v221 = v17(
                                                          "MO\208\228\166y\132\253",
                                                          18679117095418
                                                        )

                                                        local v222 = players[v17(
                                                          "R\154\196\rVg\212#\n\244\223",
                                                          23578872589027
                                                        )]

                                                        local vector6 = Vector3[players[v17(
                                                          "\243M\127", 12042271544807
                                                        )]]()

                                                        local vector7 = Vector3[players[v17(
                                                          "\146t\213", 7756700536347
                                                        )]]()

                                                        p77[players[v221]] = vector6
                                                        p77[v222] = vector7
                                                      end
                                                    end)

                                                    task[players[v17("\169\152Њ", 34276689329753)]]()

                                                    if (g[humanoid34][players[v17("&R2\16\229ȅ.", 34677485944595)]] - getgenv()[players[v17("\212\14[3k\254", 1127242842636)]][players[v17("\19", 11331821868188)]])[players[v17(
                                                      "4\217>\1921\155\2468\5", 24721974504696
                                                    )]] < 25 then
                                                      break
                                                    end
                                                  end

                                                  workspace[players[v17(
                                                    "b\187b\26⾑\156\241\248\202\233~ef<m>\248G\1865\179b",
                                                    10835762566069
                                                  )]] = getgenv()[players[v17(
                                                    "\218z\255f", 5072042166585
                                                  )]]

                                                  return
                                                end

                                                return
                                              else
                                                if tonumber(getAppliedDescription2.Pants) then
                                                  remotes.Wear:InvokeServer(tonumber(getAppliedDescription2.Pants))
                                                  task.wait(0.3)
                                                end

                                                if tonumber(getAppliedDescription2.Face) then
                                                  remotes.Wear:InvokeServer(tonumber(getAppliedDescription2.Face))
                                                  task.wait(0.3)
                                                end

                                                for index40, value110 in ipairs(getAppliedDescription2:GetAccessories(true)) do
                                                  if value110.AssetId
                                                    and tonumber(value110.AssetId) then
                                                    remotes.Wear:InvokeServer(tonumber(value110.AssetId))
                                                    task.wait(0.3)
                                                  end
                                                end

                                                local bodyColors = findFirstChild38.Character:FindFirstChild("Body Colors")

                                                if bodyColors then
                                                  remotes.ChangeBodyColor:FireServer(tostring(bodyColors.HeadColor))
                                                  task.wait(0.3)
                                                end

                                                if tonumber(getAppliedDescription2.IdleAnimation) then
                                                  remotes.Wear:InvokeServer(tonumber(getAppliedDescription2.IdleAnimation))
                                                  task.wait(0.3)
                                                end

                                                local playersBag = findFirstChild38:FindFirstChild("PlayersBag")

                                                if playersBag then
                                                  if playersBag:FindFirstChild("RPName")
                                                    and playersBag.RPName.Value ~= "" then
                                                    re["1RPNam1eTex1t"]:FireServer(
                                                      "RolePlayName", playersBag.RPName.Value
                                                    )

                                                    task.wait(0.3)
                                                  end

                                                  if playersBag:FindFirstChild("RPBio")
                                                    and playersBag.RPBio.Value ~= "" then
                                                    re["1RPNam1eTex1t"]:FireServer(
                                                      "RolePlayBio", playersBag.RPBio.Value
                                                    )

                                                    task.wait(0.3)
                                                  end

                                                  if playersBag:FindFirstChild("RPNameColor") then
                                                    re["1RPNam1eColo1r"]:FireServer(
                                                      "PickingRPNameColor",
                                                      playersBag.RPNameColor.Value
                                                    )

                                                    task.wait(0.3)
                                                  end

                                                  if playersBag:FindFirstChild("RPBioColor") then
                                                    re["1RPNam1eColo1r"]:FireServer(
                                                      "PickingRPBioColor",
                                                      playersBag.RPBioColor.Value
                                                    )

                                                    task.wait(0.3)
                                                  end
                                                end

                                                return
                                              end
                                            else
                                              return
                                            end
                                          else
                                            return
                                          end
                                        end
                                      end,
                                    })

                                    tab9:AddSection({ "Fire Player:" })

                                    applyEmmiter = replicatedStorage:WaitForChild("Remotes"):WaitForChild("ApplyEmmiter")
                                    changeCharacterBody = replicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody")
                                    local localPlayer33 = players.LocalPlayer
                                    replicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear")

                                    v44 = {
                                      Black = { Id = "18637072603", Emitter = "035FireBlack" },
                                      Purple = { Id = "18637070174", Emitter = "034FirePurple" },
                                      Blue = { Id = "18637076370", Emitter = "033FireBlue" },
                                      Green = { Id = "18637078598", Emitter = "032FireGreen" },
                                      Orange = { Id = "18637025451", Emitter = "031FireOrange" },
                                      White = { Id = "18637074370", Emitter = "030FireWhite" },
                                    }

                                    v45 = "Black"

                                    tab9:AddDropdown({
                                      Name = "Fire Color",
                                      Options = {
                                        "Black", "Purple", "Blue", "Green", "Orange", "White",
                                      },
                                      Default = "Black",
                                      Callback = function(value111) v45 = value111 end,
                                    })

                                    tab9:AddButton({
                                      Name = "Fire Player",
                                      Callback = function()
                                        local v223 = v44[v45]

                                        if v223 then
                                          applyEmmiter:InvokeServer(v223.Id, v223.Emitter)
                                        end
                                      end,
                                    })

                                    tab9:AddSection({ "Smoke Player:" })

                                    v46 = {
                                      Black = { Id = "18637798529", Emitter = "087SmokeBlack" },
                                      Purple = {
                                        Id = "18637813360",
                                        Emitter = "085SmokePurple",
                                      },
                                      Blue = { Id = "18637803021", Emitter = "084SmokeBlue" },
                                      Green = { Id = "18637789299", Emitter = "083SmokeGreen" },
                                      Orange = {
                                        Id = "18637793920",
                                        Emitter = "082SmokeOrange",
                                      },
                                      White = { Id = "18637791748", Emitter = "080SmokeWhite" },
                                      Yellow = {
                                        Id = "18637800482",
                                        Emitter = "081SmokeYellow",
                                      },
                                      Red = { Id = "18637796598", Emitter = "086SmokeRed" },
                                    }

                                    v47 = "Black"

                                    tab9:AddDropdown({
                                      Name = "Smoke Color",
                                      Options = {
                                        "Black", "Purple", "Blue", "Green", "Orange", "White",
                                        "Yellow", "Red",
                                      },
                                      Default = "Black",
                                      Callback = function(value112) v47 = value112 end,
                                    })

                                    tab9:AddButton({
                                      Name = "Smoke Player",
                                      Callback = function()
                                        local v224 = v46[v47]

                                        if v224 then
                                          applyEmmiter:InvokeServer(v224.Id, v224.Emitter)
                                        end
                                      end,
                                    })

                                    tab9:AddSection({ "Others:" })

                                    tab9:AddButton({
                                      Name = "Avatar Pequeno",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzJAGAMES94/Just-One-Repository/refs/heads/main/aWzFGBaRdHFILFCOrdmrFShPlmECvvLx"))()
                                      end,
                                    })

                                    tab9:AddButton({
                                      Name = "Avatar Gigante",
                                      Callback = function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzJAGAMES94/Just-One-Repository/refs/heads/main/WzFGBaRdHFILFCOrdmrFShPlmECvvLx"))()
                                      end,
                                    })

                                    tab9:AddButton({
                                      Name = "Reset Avatar",
                                      Callback = function()
                                        replicatedStorage:WaitForChild("Remotes"):WaitForChild("ResetCharacterAppearance"):FireServer()
                                      end,
                                    })

                                    tab9:AddSection({ "Body:" })

                                    v48 = {
                                      Torso = 0,
                                      RightArm = 0,
                                      LeftArm = 0,
                                      RightLeg = 0,
                                      LeftLeg = 0,
                                      Head = 0,
                                    }

                                    v49 = "Head"

                                    tab9:AddTextBox({
                                      Name = "Torso",
                                      PlaceholderText = "ID",
                                      Callback = function(value113)
                                        v48.Torso = tonumber(value113) or 0
                                      end,
                                    })

                                    tab9:AddTextBox({
                                      Name = "Right Arm",
                                      PlaceholderText = "ID",
                                      Callback = function(value114)
                                        v48.RightArm = tonumber(value114) or 0
                                      end,
                                    })

                                    tab9:AddTextBox({
                                      Name = "Left Arm",
                                      PlaceholderText = "ID",
                                      Callback = function(value115)
                                        v48.LeftArm = tonumber(value115) or 0
                                      end,
                                    })

                                    tab9:AddTextBox({
                                      Name = "Right Leg",
                                      PlaceholderText = "ID",
                                      Callback = function(value116)
                                        v48.RightLeg = tonumber(value116) or 0
                                      end,
                                    })

                                    tab9:AddTextBox({
                                      Name = "Left Leg",
                                      PlaceholderText = "ID",
                                      Callback = function(value117)
                                        v48.LeftLeg = tonumber(value117) or 0
                                      end,
                                    })

                                    tab9:AddTextBox({
                                      Name = "Head",
                                      PlaceholderText = "ID",
                                      Callback = function(value118)
                                        v48.Head = tonumber(value118) or 0
                                      end,
                                    })

                                    tab9:AddDropdown({
                                      Name = "Part List",
                                      Options = {
                                        "Torso", "RightArm", "LeftArm", "RightLeg", "LeftLeg",
                                        "Head",
                                      },
                                      Default = "Head",
                                      Callback = function(value119) v49 = value119 end,
                                    })

                                    tab9:AddButton({
                                      Name = "Load Selected Part",
                                      Callback = function()
                                        changeCharacterBody:InvokeServer({
                                          v49 == "Torso" and v48.Torso or 0,
                                          v49 == "RightArm" and v48.RightArm or 0,
                                          v49 == "LeftArm" and v48.LeftArm or 0,
                                          v49 == "RightLeg" and v48.RightLeg or 0,
                                          v49 == "LeftLeg" and v48.LeftLeg or 0,
                                          v49 == "Head" and v48.Head or 0,
                                        })
                                      end,
                                    })

                                    tab9:AddButton({
                                      Name = "Load All Input Part",
                                      Callback = function()
                                        changeCharacterBody:InvokeServer({
                                          v48.Torso, v48.RightArm, v48.LeftArm, v48.RightLeg,
                                          v48.LeftLeg, v48.Head,
                                        })
                                      end,
                                    })

                                    tab9:AddButton({
                                      Name = "Load All Parts",
                                      Callback = function()
                                        changeCharacterBody:InvokeServer({
                                          v48.Torso, v48.RightArm, v48.LeftArm, v48.RightLeg,
                                          v48.LeftLeg, v48.Head,
                                        })
                                      end,
                                    })

                                    localPlayer8 = players.LocalPlayer
                                    casasTab = window:MakeTab({ Title = "Casas", Icon = "home" })
                                    v50 = false
                                    v51 = false
                                    v52 = nil

                                    v53 = {
                                      Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0),
                                      Color3.fromRGB(0, 0, 255), Color3.fromRGB(255, 255, 0),
                                      Color3.fromRGB(0, 255, 255), Color3.fromRGB(255, 0, 255),
                                    }

                                    function f10()
                                      if not v52 then
                                        return nil
                                      end

                                      return v1["001_Lots"]:FindFirstChild(tostring(v52))
                                    end

                                    function f11(p78)
                                      v50 = p78

                                      if p78 then
                                        task.spawn(f35)
                                        print("Casa RGB ativada")
                                      else
                                        print("Casa RGB desativada")
                                      end
                                    end

                                    function f35()
                                      local re6 = replicatedStorage:FindFirstChild("RE")

                                      if not re6 then
                                        return
                                      else
                                        local findFirstChild39 = re6:FindFirstChild("1Player1sHous1e")

                                        if not findFirstChild39 then
                                          warn("RemoteEvent 1Player1sHous1e não encontrado")
                                          return
                                        end

                                        while v50 do
                                          for index41, value120 in ipairs(v53) do
                                            if not v50 then
                                              return
                                            end

                                            findFirstChild39:FireServer(
                                              "ColorPickHouse", value120
                                            )

                                            task.wait(0.8)
                                          end
                                        end

                                        return
                                      end
                                    end

                                    function f12()
                                      local v225 = {}
                                      local findFirstChild40 = v1:FindFirstChild("001_Lots")

                                      if findFirstChild40 then
                                        for index42, value121 in ipairs(findFirstChild40:GetChildren()) do
                                          if value121:IsA("Model")
                                            and value121.Name ~= "For Sale" then
                                            table.insert(v225, value121.Name)
                                          end
                                        end
                                      end

                                      table.sort(v225)
                                      return v225
                                    end

                                    casasTab:AddSection({ Name = "Casas" })

                                    selecionarCasaAddDropdown = nil

                                    selecionarCasaAddDropdown = casasTab:AddDropdown({
                                      Name = "Selecionar Casa",
                                      Options = f12(),
                                      Callback = function(value122)
                                        v52 = value122
                                        print("Casa selecionada:", value122)
                                      end,
                                    })

                                    casasTab:AddButton({
                                      Name = "Atualizar Lista de Casas",
                                      Callback = function()
                                        if not selecionarCasaAddDropdown then
                                          return
                                        end

                                        v52 = nil
                                        selecionarCasaAddDropdown:Set({})
                                        task.wait(0.1)
                                        selecionarCasaAddDropdown:Set(f12())
                                        print("Lista de casas atualizada")
                                      end,
                                    })

                                    casasTab:AddButton({
                                      Name = "Teleportar para Casa",
                                      Callback = function()
                                        local v226 = f10()
                                        local humanoidRootPart43 = v226
                                        local character45 = localPlayer8.Character

                                        if v226 then
                                          humanoidRootPart43 = character45
                                            and character45:FindFirstChild("HumanoidRootPart")
                                        end

                                        if humanoidRootPart43 then
                                          character45.HumanoidRootPart.CFrame = CFrame.new(v226.WorldPivot.Position)
                                        else
                                          warn("Casa inválida ou não selecionada")
                                        end
                                      end,
                                    })

                                    casasTab:AddButton({
                                      Name = "Teleportar para Cofre",
                                      Callback = function()
                                        local v227 = f10()
                                        local humanoidRootPart44 = v227
                                        local character46 = localPlayer8.Character

                                        if v227 then
                                          humanoidRootPart44 = v227:FindFirstChild("HousePickedByPlayer")
                                            and character46
                                            and character46:FindFirstChild("HumanoidRootPart")
                                        end

                                        if humanoidRootPart44 then
                                          local findFirstChild41 = v227.HousePickedByPlayer.HouseModel:FindFirstChild("001_Safe")

                                          if findFirstChild41 then
                                            character46.HumanoidRootPart.CFrame = CFrame.new(findFirstChild41.WorldPivot.Position)
                                          else
                                            warn("Cofre não encontrado:", v52)
                                          end
                                        else
                                          warn("Casa inválida:", v52)
                                        end
                                      end,
                                    })

                                    casasTab:AddToggle({
                                      Name = "Atravessar Porta da Casa",
                                      Default = false,
                                      Callback = function(value123)
                                        local v228 = f10()

                                        if not (v228 and v228:FindFirstChild("HousePickedByPlayer")) then
                                          return
                                        else
                                          local findFirstChild42 = v228.HousePickedByPlayer.HouseModel:FindFirstChild("001_HouseDoors")

                                          if findFirstChild42
                                            and findFirstChild42:FindFirstChild("HouseDoorFront") then
                                            for index43, value124 in ipairs(findFirstChild42.HouseDoorFront:GetChildren()) do
                                              if value124:IsA("BasePart") then
                                                value124.CanCollide = not value123
                                              end
                                            end
                                          end

                                          return
                                        end
                                      end,
                                    })

                                    casasTab:AddToggle({
                                      Name = "Tocar Campainha",
                                      Default = false,
                                      Callback = function(value125)
                                        getgenv().ChaosHubAutoSpawnDoorbellValue = value125

                                        task.spawn(function()
                                          while getgenv().ChaosHubAutoSpawnDoorbellValue do
                                            local v229 = f10()

                                            if v229
                                              and v229:FindFirstChild("HousePickedByPlayer") then
                                              local findFirstChild43 = v229.HousePickedByPlayer.HouseModel:FindFirstChild("001_DoorBell")

                                              if findFirstChild43
                                                and findFirstChild43:FindFirstChild("TouchBell") then
                                                pcall(function()
                                                  fireclickdetector(findFirstChild43.TouchBell.ClickDetector)
                                                end)
                                              end
                                            end

                                            task.wait(0.5)
                                          end
                                        end)
                                      end,
                                    })

                                    pcall(function()
                                      casasTab:AddToggle({
                                        Name = "Bater na Porta",
                                        Description = "",
                                        Default = false,
                                        Callback = function(value126)
                                          getgenv().ChaosHubAutoSpawnDoorValue = value126

                                          task.spawn(function()
                                            while getgenv().ChaosHubAutoSpawnDoorValue do
                                              local findFirstChild44 = v1["001_Lots"]:FindFirstChild(tostring(v52))

                                              if findFirstChild44
                                                and findFirstChild44:FindFirstChild("HousePickedByPlayer") then
                                                local findFirstChild45 = findFirstChild44.HousePickedByPlayer.HouseModel:FindFirstChild("001_HouseDoors")

                                                if findFirstChild45
                                                  and findFirstChild45:FindFirstChild("HouseDoorFront")
                                                  and findFirstChild45.HouseDoorFront:FindFirstChild("Knock")
                                                  and findFirstChild45.HouseDoorFront.Knock:FindFirstChild("TouchBell") then
                                                  pcall(function()
                                                    fireclickdetector(findFirstChild45.HouseDoorFront.Knock.TouchBell.ClickDetector)
                                                  end)
                                                end
                                              end

                                              task.wait(0.5)
                                            end
                                          end)
                                        end,
                                      })
                                    end)

                                    function f36()
                                      while v51 do
                                        pcall(function()
                                          for index44, value127 in ipairs(v1["001_Lots"]:GetDescendants()) do
                                            if value127.Name:match("^BannedBlock") then
                                              value127:Destroy()
                                            end
                                          end
                                        end)

                                        task.wait(1)
                                      end
                                    end

                                    casasTab:AddSection({ Name = "Auto Unban" })

                                    casasTab:AddToggle({
                                      Name = "Auto Unban",
                                      Default = false,
                                      Callback = function(value128)
                                        v51 = value128

                                        if value128 then
                                          task.spawn(f36)
                                        end
                                      end,
                                    })

                                    casasTab:AddSection({ Name = "Casa RGB" })

                                    casasTab:AddToggle({
                                      Name = "Casa RGB",
                                      Default = false,
                                      Callback = function(value129) f11(value129) end,
                                    })

                                    localPlayer9 = game.Players.LocalPlayer

                                    function f13()
                                      v54 = {}

                                      for key53, value130 in pairs(game.Players:GetPlayers()) do
                                        table.insert(v54, value130.Name)
                                      end

                                      return v54
                                    end

                                    v54 = {}
                                    f13()

                                    local tab10 = window:MakeTab({ "Criança", "baby" })
                                    tab10:AddSection({ Name = "Child" })

                                    v55 = nil

                                    addDropdown2 = tab10:AddDropdown({
                                      Name = "Selecione um player para perseguir",
                                      Options = v54,
                                      Default = "",
                                      Callback = function(value131)
                                        if game.Players:FindFirstChild(value131) then
                                          v55 = value131
                                        else
                                          v55 = nil
                                        end
                                      end,
                                    })

                                    tab10:AddButton({
                                      Name = "Atualizar Player List",
                                      Callback = function()
                                        local v230 = f13()

                                        if addDropdown2 and v230 then
                                          pcall(function() addDropdown2:Refresh(v230) end)

                                          if v55 and not game.Players:FindFirstChild(v55) then
                                            v55 = nil
                                            pcall(function() addDropdown2:Set("") end)
                                          end
                                        end
                                      end,
                                    })

                                    game.Players.PlayerAdded:Connect(function()
                                      task.wait(0.1)
                                      local v231 = f13()

                                      if addDropdown2 and v231 then
                                        pcall(function() addDropdown2:Refresh(v231) end)
                                      end
                                    end)

                                    game.Players.PlayerRemoving:Connect(function(player)
                                      task.wait(0.1)
                                      local v232 = f13()

                                      if addDropdown2 and v232 then
                                        pcall(function() addDropdown2:Refresh(v232) end)

                                        if v55 == player.Name then
                                          v55 = nil
                                          pcall(function() addDropdown2:Set("") end)
                                        end
                                      end
                                    end)

                                    tab10:AddButton({
                                      Name = "Enviar criança",
                                      Callback = function()
                                        if not v55 then
                                          warn("Nenhum jogador selecionado!")
                                          return
                                        end

                                        local v233

                                        if not workspace:FindFirstChild(localPlayer9.Name)
                                          or not workspace[localPlayer9.Name]:FindFirstChild("FollowCharacter") then
                                          v233 = {
                                            [1] = "CharacterFollowSpawnPlayer",
                                            [2] = "BabyBoy",
                                          }

                                          local v234, v235 = pcall(function()
                                            replicatedStorage.RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(v233))
                                          end)

                                          if not v234 then
                                            warn("Erro ao enviar criança: " .. v235)
                                          end
                                        end

                                        task.wait(0.2)

                                        if workspace:FindFirstChild(localPlayer9.Name) then
                                          for key54, value132 in pairs(workspace[localPlayer9.Name]:GetChildren()) do
                                            if value132:IsA("BasePart") then
                                              value132.CanCollide = true
                                            end
                                          end
                                        end

                                        local v236 = v55

                                        if workspace:FindFirstChild(v236)
                                          and workspace:FindFirstChild(localPlayer9.Name)
                                          and workspace[localPlayer9.Name]:FindFirstChild("FollowCharacter") then
                                          workspace[localPlayer9.Name].FollowCharacter.Parent = workspace[v236]

                                          if rawget(getgenv(), "RunService") then
                                            return
                                          end

                                          local v237 = getgenv()

                                          v237.RunService = runService.Heartbeat:Connect(function()
                                            local followCharacter = workspace[v236]:FindFirstChild("FollowCharacter")

                                            if followCharacter
                                              and followCharacter:FindFirstChild("Torso")
                                              and followCharacter.Torso:FindFirstChild("BodyPosition") then
                                              local humanoidRootPart45 = workspace[v236]:FindFirstChild("HumanoidRootPart")

                                              if humanoidRootPart45 then
                                                followCharacter.Torso.BodyPosition.Position = humanoidRootPart45.Position
                                                  - humanoidRootPart45.CFrame.LookVector * 3

                                                followCharacter.Torso.BodyGyro.CFrame = humanoidRootPart45.CFrame
                                              end
                                            end
                                          end)

                                          return
                                        end
                                      end,
                                    })

                                    tab10:AddButton({
                                      Name = "Retornar criança",
                                      Callback = function()
                                        if rawget(getgenv(), "RunService") then
                                          getgenv().RunService:Disconnect()
                                          getgenv().RunService = nil
                                        end

                                        local v238 = { [1] = "DeleteFollowCharacter" }

                                        local v239, v240 = pcall(function()
                                          replicatedStorage.RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(v238))
                                        end)

                                        if not v239 then
                                          warn("Erro ao retornar criança: " .. v240)
                                        end

                                        local v241 = {
                                          [1] = "CharacterFollowSpawnPlayer",
                                          [2] = "BabyBoy",
                                        }

                                        local v242, v243 = pcall(function()
                                          replicatedStorage.RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(v241))
                                        end)

                                        if not v242 then
                                          warn("Erro ao spawnar criança: " .. v243)
                                        end
                                      end,
                                    })

                                    tab10:AddToggle({
                                      Name = "Spectar Player",
                                      Default = false,
                                      Callback = function(value133)
                                        local localPlayer34 = players.LocalPlayer
                                        local currentCamera9 = workspace.CurrentCamera

                                        if value133 then
                                          if not v55 then
                                            warn("Nenhum jogador selecionado para spectar!")
                                            return false
                                          end

                                          if not rawget(getgenv(), "CameraConnection") then
                                            local v244 = getgenv()

                                            v244.CameraConnection = runService.Heartbeat:Connect(function()
                                              local findFirstChild46 = players:FindFirstChild(v55)

                                              if findFirstChild46 and findFirstChild46.Character
                                                and findFirstChild46.Character:FindFirstChild("Humanoid") then
                                                currentCamera9.CameraSubject = findFirstChild46.Character.Humanoid
                                              else
                                                if rawget(getgenv(), "CameraConnection") then
                                                  getgenv().CameraConnection:Disconnect()
                                                  getgenv().CameraConnection = nil
                                                end

                                                currentCamera9.CameraSubject = localPlayer34.Character
                                                    and localPlayer34.Character:FindFirstChild("Humanoid")
                                                  or nil
                                              end
                                            end)
                                          end

                                          return
                                        end

                                        if rawget(getgenv(), "CameraConnection") then
                                          getgenv().CameraConnection:Disconnect()
                                          getgenv().CameraConnection = nil
                                        end

                                        if localPlayer34.Character
                                          and localPlayer34.Character:FindFirstChild("Humanoid") then
                                          currentCamera9.CameraSubject = localPlayer34.Character.Humanoid
                                        end
                                      end,
                                    })

                                    tab10:AddParagraph({
                                      Title = "FE",
                                      Text = "Funcionalidades FE",
                                    })

                                    local tab11 = window:MakeTab({ "Teleportes", "tp" })

                                    for index45, value134 in ipairs({
                                      { "Aos Bastidores", CFrame.new(192, 4, 272) },
                                      { "Ao Centro Urbano", CFrame.new(136, 4, 117) },
                                      { "À Área do Crime", CFrame.new(-119, -28, 235) },
                                      { "À Casa Deserta", CFrame.new(986, 4, 63) },
                                      { "Ao Portal da Agência", CFrame.new(672, 4, -296) },
                                      { "Ao Esconderijo", CFrame.new(505, -75, 143) },
                                      { "À Escola", CFrame.new(-312, 4, 211) },
                                      { "Ao Café Brook", CFrame.new(161, 8, 52) },
                                      { "Ao Ponto Inicial", CFrame.new(-26, 4, -23) },
                                      { "Ao Arco Principal", CFrame.new(-589, 141, -59) },
                                      { "Ao Hospital", CFrame.new(-309, 4, 71) },
                                      { "À Base da Agência", CFrame.new(179, 4, -464) },
                                      { "À Sala Oculta da Oficina", CFrame.new(0, 4, -495) },
                                      { "À Sala Secreta 2", CFrame.new(-343, 4, -613) },
                                      { "À Ilha Isolada", CFrame.new(-1925, 23, 127) },
                                      { "À Praça dos Hotéis", CFrame.new(182, 4, 150) },
                                      { "Escalar Montanha 1", CFrame.new(-670, 251, 765) },
                                      { "Ao Banco Principal", CFrame.new(2.28, 4.65, 254.58) },
                                      { "À Loja de Roupas", CFrame.new(-46.15, 4.65, 253.2) },
                                      { "Ao Refúgio", CFrame.new(-88.48, 22.05, 262.34) },
                                      {
                                        "À Clínica Dentária",
                                        CFrame.new(-53.58, 22.15, 265.61),
                                      },
                                      { "À Cafeteria", CFrame.new(-97.12, 4.65, 254.99) },
                                    }) do
                                      local v245 = value134

                                      tab11:AddButton({
                                        v245[1],
                                        function()
                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v245[2]
                                        end,
                                      })
                                    end

                                    local tab12 = window:MakeTab({ "Carro", "car" })

                                    v56 = {
                                      Color3.new(1, 0, 0), Color3.new(0, 1, 0),
                                      Color3.new(0, 0, 1), Color3.new(1, 1, 0),
                                      Color3.new(1, 0, 1), Color3.new(0, 1, 1),
                                      Color3.new(0.5, 0, 0.5), Color3.new(1, 0.5, 0),
                                    }

                                    waitForChild2 = replicatedStorage:WaitForChild("RE"):WaitForChild("1Player1sCa1r")
                                    v57 = false

                                    function f14()
                                      while v57 do
                                        for index46, value135 in ipairs(v56) do
                                          if not v57 then
                                            return
                                          end

                                          waitForChild2:FireServer(unpack({
                                            [1] = "PickingCarColor",
                                            [2] = value135,
                                          }))

                                          wait(1)
                                        end
                                      end
                                    end

                                    v58 = nil

                                    tab12:AddButton({
                                      Name = "Remove All Cars",
                                      Callback = function()
                                        local cframe13 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                          1754, -2, 58
                                        )

                                        wait(0.3)

                                        replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                                          [1] = "PickingBoat",
                                          [2] = "MilitaryBoatFree",
                                        }))

                                        wait(1)
                                        local v246

                                        for key55, value136 in pairs(game.workspace.Vehicles[game.Players.LocalPlayer.Name
                                          .. "Car"]:GetDescendants()) do
                                          if value136:IsA("VehicleSeat") then
                                            v246 = value136
                                          end
                                        end

                                        while not (game.Players.LocalPlayer.Character.Humanoid.Health
                                          == 0) do
                                          if game.Players.LocalPlayer.Character.Humanoid.Sit
                                            == true then
                                            if not game.Players.LocalPlayer.Character.Humanoid.SeatPart
                                              == v246 then
                                              game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                            end
                                          end

                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v246.CFrame
                                          task.wait()

                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v246.CFrame + Vector3.new(
                                            0, 1, 0
                                          )

                                          task.wait()

                                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v246.CFrame + Vector3.new(
                                            0, -1, 0
                                          )

                                          task.wait()

                                          if game.Players.LocalPlayer.Character.Humanoid.SeatPart
                                            == v246 then
                                            for key56, value137 in pairs(game.workspace.Vehicles[game.Players.LocalPlayer.Name
                                              .. "Car"]:GetDescendants()) do
                                              if value137.Name == "PhysicalWheel" then
                                                value137:Destroy()
                                              end
                                            end

                                            local sunteriumHUBFLING = Instance.new("BodyThrust", game.workspace.Vehicles[game.Players.LocalPlayer.Name
                                              .. "Car"].Chassis.Mass)

                                            sunteriumHUBFLING.Force = Vector3.new(
                                              50000, 0, 50000
                                            )

                                            sunteriumHUBFLING.Name = "SUNTERIUM HUB FLING"

                                            sunteriumHUBFLING.Location = game.workspace.Vehicles[game.Players.LocalPlayer.Name
                                              .. "Car"].Chassis.Mass.Position

                                            for key57, value138 in pairs(game.workspace.Vehicles:GetChildren()) do
                                              for key58, value139 in pairs(value138:GetDescendants()) do
                                                if value139.Name == "VehicleSeat" then
                                                  local mOVOOEPFFGEREVEWVW4 = Instance.new("BodyVelocity", game.workspace.Vehicles[game.Players.LocalPlayer.Name
                                                    .. "Car"].Chassis.Mass)

                                                  mOVOOEPFFGEREVEWVW4.MaxForce = Vector3.new(
                                                    math.huge, math.huge, math.huge
                                                  )

                                                  mOVOOEPFFGEREVEWVW4.P = 1250

                                                  mOVOOEPFFGEREVEWVW4.Velocity = Vector3.new(
                                                    0, 0, 0
                                                  )

                                                  mOVOOEPFFGEREVEWVW4.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                                  for n = 1, 25 do
                                                    local v247 = { x = 0, y = 0, z = 0 }
                                                    v247.x = value139.Position.X
                                                    v247.y = value139.Position.Y
                                                    v247.z = value139.Position.Z
                                                    v247.x = v247.x + value139.Velocity.X / 2
                                                    v247.y = v247.y + value139.Velocity.Y / 2
                                                    v247.z = v247.z + value139.Velocity.Z / 2

                                                    if v247.y <= -200 then
                                                      game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(
                                                        0, 1000, 0
                                                      )
                                                    else
                                                      game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(
                                                        v247.x, v247.y, v247.z
                                                      ))

                                                      task.wait()

                                                      game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(
                                                        v247.x, v247.y, v247.z
                                                      )) + Vector3.new(
                                                        0, -2, 0
                                                      )

                                                      task.wait()

                                                      game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(
                                                        v247.x, v247.y, v247.z
                                                      )) * CFrame.new(
                                                        0, 0, 2
                                                      )

                                                      task.wait()

                                                      game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(
                                                        v247.x, v247.y, v247.z
                                                      )) * CFrame.new(
                                                        2, 0, 0
                                                      )

                                                      task.wait()
                                                    end

                                                    task.wait()
                                                  end
                                                end
                                              end
                                            end

                                            task.wait()

                                            replicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                                              [1] = "DeleteAllVehicles",
                                            }))

                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                            wait()

                                            local mOVOOEPFFGEREVEWVW5 = Instance.new(
                                              "BodyVelocity",
                                              game.Players.LocalPlayer.Character.HumanoidRootPart
                                            )

                                            mOVOOEPFFGEREVEWVW5.MaxForce = Vector3.new(
                                              math.huge, math.huge, math.huge
                                            )

                                            mOVOOEPFFGEREVEWVW5.P = 1250
                                            mOVOOEPFFGEREVEWVW5.Velocity = Vector3.new(0, 0, 0)
                                            mOVOOEPFFGEREVEWVW5.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

                                            wait(0.1)
                                            local count9 = 0

                                            while true do
                                              count9 = 1 + count9

                                              if not (count9 <= 2) then
                                                break
                                              end

                                              task.wait()
                                              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe13
                                            end

                                            wait(1)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe13
                                            wait()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
                                            wait(0.2)
                                            return
                                          end
                                        end
                                      end,
                                    })

                                    tab12:AddParagraph({
                                      "Informação:",
                                      "Recomendo usar 2 vezes para garantir que todos os veículos sejam removidos",
                                    })

                                    tab12:AddButton({
                                      Name = "Bring All Cars",
                                      Callback = function()
                                        local v248, v249 = workspace.Vehicles:GetChildren()

                                        for key59, value140 in next, v248, v249 do
                                          value140:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame())
                                        end
                                      end,
                                    })

                                    tab12:AddParagraph({
                                      "Informação:",
                                      "Puxa todos os carros do servidor até você",
                                    })

                                    function f15(value141, value142)
                                      local findFirstChild47 = workspace.Vehicles:FindFirstChild(game.Players.LocalPlayer.Name
                                        .. "Car")

                                      if findFirstChild47 then
                                        local vehicleSeat11 = findFirstChild47:FindFirstChild("Body").VehicleSeat

                                        if vehicleSeat11 then
                                          vehicleSeat11.TopSpeed.Value = value141
                                          vehicleSeat11.Turbo.Value = value142

                                          wait(0.1)

                                          redzHubUi:MakeNotification({
                                            Name = "Mafia Hub",
                                            Content = "Done, You can Move Now!",
                                            Time = 5,
                                          })
                                        else
                                          redzHubUi:MakeNotification({
                                            Name = "Error",
                                            Content = "Sit in car first!",
                                            Time = 5,
                                          })
                                        end
                                      else
                                        redzHubUi:MakeNotification({
                                          Name = "Error",
                                          Content = "Put a Car First!",
                                          Time = 5,
                                        })
                                      end
                                    end

                                    tab12:AddSection({ "Speed V1" })
                                    v59 = 50
                                    v60 = 50

                                    tab12:AddTextBox({
                                      Name = "Speed",
                                      PlaceholderText = "50",
                                      Callback = function(value143)
                                        local v250 = tonumber(value143)

                                        if v250 then
                                          v59 = v250
                                        end
                                      end,
                                    })

                                    tab12:AddTextBox({
                                      Name = "Turbo",
                                      PlaceholderText = "50",
                                      Callback = function(value144)
                                        local v251 = tonumber(value144)

                                        if v251 then
                                          v60 = v251
                                        end
                                      end,
                                    })

                                    tab12:AddTextBox({
                                      Name = "Drift",
                                      PlaceholderText = "50",
                                      Callback = function(value145)
                                        replicatedStorage.RE:FindFirstChild("1Player1sCa1r"):FireServer(unpack({
                                          [1] = "DriftingNumber",
                                          [2] = value145,
                                        }))
                                      end,
                                    })

                                    tab12:AddButton({
                                      Name = "Aplicar Velocidade, Turbo e drift",
                                      Callback = function() f15(v59, v60) end,
                                    })

                                    tab12:AddSection({ "Turbo V2" })

                                    tab12:AddButton({
                                      Name = "Turbo V2 [Melhor]",
                                      Callback = function()
                                        local localPlayer35 = game.Players.LocalPlayer

                                        local humanoidRootPart46 = (localPlayer35.Character
                                          or localPlayer35.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")

                                        local v252 = false
                                        local v253 = 30

                                        local instance20 = Instance.new(
                                          "ScreenGui", localPlayer35.PlayerGui
                                        )

                                        local function f85(p79, position7, p80, rotation, p81)
                                          local instance21 = Instance.new(
                                            "ImageButton", instance20
                                          )

                                          instance21.Size = UDim2.new(0, 60, 0, 60)
                                          instance21.Position = position7
                                          instance21.BackgroundTransparency = 1
                                          instance21.Image = "rbxassetid://" .. p80
                                          instance21.Rotation = rotation
                                          instance21.MouseButton1Down:Connect(p81)

                                          return instance21
                                        end

                                        local v254 = f85("BotaoFrente", UDim2.new(0, 10, 0.35, 0), "18478249606", 0, function()
                                          v252 = true

                                          while v252 do
                                            if humanoidRootPart46 then
                                              humanoidRootPart46.Velocity = humanoidRootPart46.CFrame.LookVector
                                                * v253
                                            end

                                            task.wait()
                                          end
                                        end)

                                        local v255 = f85("BotaoTras", UDim2.new(0, 10, 0.5, 0), "18478249606", 180, function()
                                          v252 = true

                                          while v252 do
                                            if humanoidRootPart46 then
                                              humanoidRootPart46.Velocity = -humanoidRootPart46.CFrame.LookVector
                                                * v253
                                            end

                                            task.wait()
                                          end
                                        end)

                                        local v256 = f85("BotaoEsquerda", UDim2.new(1, -210, 0.3, 0), "18478249606", -90, function()
                                          v252 = true

                                          while v252 do
                                            if humanoidRootPart46 then
                                              humanoidRootPart46.Velocity = -humanoidRootPart46.CFrame.RightVector
                                                * v253
                                            end

                                            task.wait()
                                          end
                                        end)

                                        local v257 = f85("BotaoDireita", UDim2.new(1, -140, 0.3, 0), "18478249606", 90, function()
                                          v252 = true

                                          while v252 do
                                            if humanoidRootPart46 then
                                              humanoidRootPart46.Velocity = humanoidRootPart46.CFrame.RightVector
                                                * v253
                                            end

                                            task.wait()
                                          end
                                        end)

                                        local function f86()
                                          v252 = false

                                          if humanoidRootPart46 then
                                            humanoidRootPart46.Velocity = Vector3.new(0, 0, 0)
                                          end
                                        end

                                        v254.MouseButton1Up:Connect(f86)
                                        v255.MouseButton1Up:Connect(f86)
                                        v256.MouseButton1Up:Connect(f86)
                                        v257.MouseButton1Up:Connect(f86)

                                        local instance22 = Instance.new(
                                          "ImageButton", instance20
                                        )

                                        instance22.Size = UDim2.new(0, 60, 0, 60)
                                        instance22.Position = UDim2.new(1, -130, 0, 10)
                                        instance22.BackgroundTransparency = 1
                                        instance22.Image = "rbxassetid://97607579386418"

                                        instance22.MouseButton1Down:Connect(function()
                                          v253 = 300
                                        end)

                                        local instance23 = Instance.new(
                                          "TextButton", instance20
                                        )

                                        instance23.Size = UDim2.new(0, 60, 0, 60)
                                        instance23.Position = UDim2.new(0, 10, 0, 10)
                                        instance23.BackgroundTransparency = 1
                                        instance23.Text = "-"
                                        instance23.TextSize = 40
                                        instance23.TextColor3 = Color3.fromRGB(255, 255, 255)

                                        local v258 = { v254, v255, v256, v257, instance22 }
                                        local v259 = false

                                        instance23.MouseButton1Down:Connect(function()
                                          v259 = not v259

                                          for index47, value146 in ipairs(v258) do
                                            value146.Visible = not v259
                                          end

                                          if v259 then
                                            instance23.Text = "+"
                                          else
                                            instance23.Text = "-"
                                          end
                                        end)
                                      end,
                                    })

                                    tab12:AddParagraph({
                                      "Informação:",
                                      "Ambos os turbos não precisam de Gamepass",
                                    })

                                    tab12:AddSection({ "Music for Cars, Houses" })

                                    function f16(p82)
                                      if p82 and p82 ~= "" then
                                        replicatedStorage:WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack({
                                          [1] = "PickHouseMusicText",
                                          [2] = p82,
                                        }))
                                      end
                                    end

                                    function f37(p83)
                                      if p83 and p83 ~= "" then
                                        replicatedStorage.RE:FindFirstChild("1Player1sCa1r"):FireServer(unpack({
                                          [1] = "PickingCarMusicText",
                                          [2] = p83,
                                        }))
                                      end
                                    end

                                    function f38(p84)
                                      if p84 and p84 ~= "" then
                                        replicatedStorage:WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack({
                                          [1] = "PickingScooterMusicText",
                                          [2] = p84,
                                        }))
                                      end
                                    end

                                    tab12:AddTextBox({
                                      Name = "Music ID (Gamepass Required)",
                                      PlaceholderText = "Enter Music ID",
                                      Callback = function(value147)
                                        f37(value147)
                                        f38(value147)
                                        f16(value147)
                                      end,
                                    })

                                    tab12:AddDropdown({
                                      Name = "Select Music (Gamepass Required)",
                                      Options = {
                                        "71373562243752", "138129019858244", "138480372357526",
                                        "122199933878670", "74187181906707", "82793916573031",
                                        "107421761958790", "91394092603440", "113198957973421",
                                        "81452315991527", "93786060174790", "74752089069476",
                                        "131592235762789", "132081774507495", "124394293950763",
                                        "83381647646350", "16190782181", "1841682637",
                                        "3148329638", "124928367733395", "106317184644394",
                                        "100247055114504", "107035638005233", "109351649716900",
                                        "84751398517083", "125259969174449", "89269071829332",
                                        "88094479399489", "72440232513341", "92893359226454",
                                        "111281710445018", "98677515506006", "105882833374061",
                                        "104541292443133", "105832154444494", "84733736048142",
                                        "94718473830640", "130324826943718", "123039027577735",
                                        "113312785512702", "139161205970637", "113768944849093",
                                        "135667903253566", "81335392002580", "77428091165211",
                                        "14145624031", "8080255618", "8654835474",
                                        "13530439502", "18841894272", "90323407842935",
                                        "136932193331774", "113504863495384", "1836175030",
                                        "79998949362539", "109188610023287", "134939857094956",
                                        "132245626038510", "124567809277408", "72591334498716",
                                        "76578817848504", "17422156627", "81902909302285",
                                        "130449561461006", "110519234838026", "106434295960535",
                                        "86271123924168", "85481949732828", "106476166672589",
                                        "87968531262747", "73966367524216", "137962454483542",
                                        "98371771055411", "111668097052966", "140095882383991",
                                        "122873874738223", "105461615542794",
                                      },
                                      Callback = function(value148)
                                        f37(value148)
                                        f38(value148)
                                        f16(value148)
                                      end,
                                    })

                                    tab12:AddParagraph({
                                      "Note",
                                      "O script de música funciona em todos os carros e casas",
                                    })

                                    tab12:AddSection({ "Car RGB" })

                                    tab12:AddToggle({
                                      Name = "Car RGB",
                                      Default = false,
                                      Callback = function(value149)
                                        v57 = value149

                                        if v57 then
                                          v58 = coroutine.create(f14)
                                          coroutine.resume(v58)
                                        end
                                      end,
                                    })

                                    tab12:AddParagraph({
                                      "Note", "Ativando isso deixará seu carro RGB",
                                    })

                                    tab12:AddSection({ "Spam Horn" })

                                    v61 = false

                                    function f17()
                                      while v61 do
                                        waitForChild2:FireServer(unpack(v62))
                                        wait(0.1)
                                      end
                                    end

                                    v62 = { "Horn" }

                                    tab12:AddToggle({
                                      Name = "Spam Horn",
                                      Default = false,
                                      Callback = function(value150)
                                        v61 = value150

                                        if v61 then
                                          spawn(f17)
                                        end
                                      end,
                                    })

                                    tab12:AddSection({ "Spam Car" })

                                    function f18(p85)
                                      replicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
                                        [1] = "PickingCar",
                                        [2] = p85,
                                      }))
                                    end

                                    v63 = {
                                      "SchoolBus", "SmartCar", "FarmTruck", "Cadillac",
                                      "Excavator", "Jeep", "NascarTruck", "TowTruck",
                                      "Snowplow", "MilitaryTruck", "Tank", "Limo", "FireTruck",
                                    }

                                    v64 = false

                                    tab12:AddToggle({
                                      Name = "Spam Cars",
                                      Default = false,
                                      Callback = function(value151)
                                        v64 = value151

                                        if v64 then
                                          task.spawn(function()
                                            while v64 do
                                              for index48, value152 in ipairs(v63) do
                                                if not v64 then
                                                  break
                                                end

                                                f18(value152)
                                                wait(0.4)
                                              end
                                            end
                                          end)
                                        end
                                      end,
                                    })

                                    tab12:AddParagraph({
                                      "Informação:", "Spamar vários carros",
                                    })

                                    local tab13 = window:MakeTab({ "Rgb", "brush" })
                                    tab13:AddSection({ "" })

                                    v65 = 1

                                    tab13:AddSlider({
                                      Name = "Velocidade RGB",
                                      Description = "Aumenta a velocidade do efeito RGB",
                                      Min = 1,
                                      Max = 5,
                                      Increase = 1,
                                      Default = 3,
                                      Callback = function(value153) v65 = value153 end,
                                    })

                                    function f39(p86)
                                      local v260 = tick()
                                      return Color3.fromHSV(v260 * p86 % 5 / 5, 1, 1)
                                    end

                                    function f40(p87, p88)
                                      local re7 = replicatedStorage:FindFirstChild("RE")

                                      if re7 and re7:FindFirstChild(p87) then
                                        pcall(function() re7[p87]:FireServer(unpack(p88)) end)
                                      end
                                    end

                                    tab13:AddSection({ "RGB para usar em você" })
                                    v66 = false

                                    tab13:AddToggle({
                                      Name = "Nome + Bio RGB ",
                                      Default = false,
                                      Callback = function(value154)
                                        v66 = value154

                                        if value154 then
                                          task.spawn(function()
                                            while v66 and localPlayer8.Character do
                                              local v261 = f39(v65)

                                              f40("1RPNam1eColo1r", {
                                                "PickingRPNameColor", v261,
                                              })

                                              f40("1RPNam1eColo1r", {
                                                "PickingRPBioColor", v261,
                                              })

                                              task.wait(0.03)
                                            end
                                          end)
                                        end
                                      end,
                                    })

                                    tab13:AddToggle({
                                      Name = "RGB Corpo",
                                      Description = "RGB  no corpo",
                                      Default = false,
                                    }):Callback(function(rgbCorpo)
                                      getgenv().rgbCorpo = rgbCorpo

                                      task.spawn(function()
                                        while getgenv().rgbCorpo do
                                          local remotes2 = replicatedStorage:FindFirstChild("Remotes")

                                          if remotes2
                                            and remotes2:FindFirstChild("ChangeBodyColor") then
                                            pcall(function()
                                              remotes2.ChangeBodyColor:FireServer({
                                                BrickColor.new(f39(v65)),
                                              })
                                            end)
                                          end

                                          task.wait(0.1)
                                        end
                                      end)
                                    end)

                                    tab13:AddToggle({
                                      Name = "RGB Cabelo",
                                      Description = "RGB  no cabelo",
                                      Default = false,
                                    }):Callback(function(rgbCabelo)
                                      getgenv().rgbCabelo = rgbCabelo

                                      task.spawn(function()
                                        while getgenv().rgbCabelo do
                                          f40("1Max1y", { "ChangeHairColor2", f39(v65) })
                                          task.wait(0.5)
                                        end
                                      end)
                                    end)

                                    tab13:AddSection({ "veiculos e casa" })

                                    tab13:AddToggle({
                                      Name = "RGB Casa",
                                      Description = "RGB  na casa",
                                      Default = false,
                                    }):Callback(function(rgbCasa)
                                      getgenv().rgbCasa = rgbCasa

                                      task.spawn(function()
                                        while getgenv().rgbCasa do
                                          f40("1Player1sHous1e", { "ColorPickHouse", f39(v65) })
                                          task.wait(0.1)
                                        end
                                      end)
                                    end)

                                    v67 = false

                                    tab13:AddToggle({
                                      Name = "Carro RGB  (Premium)",
                                      Description = "Altera a cor do carro com RGB contínuo. Pode causar kick se não for premium!",
                                      Default = false,
                                      Callback = function(value155)
                                        v67 = value155

                                        if value155 then
                                          task.spawn(function()
                                            while v67 and localPlayer8.Character do
                                              f40("1Player1sCa1r", {
                                                "PickingCarColor", (f39(v65)),
                                              })

                                              task.wait(0.03)
                                            end
                                          end)
                                        end
                                      end,
                                    })

                                    tab13:AddToggle({
                                      Name = "RGB Bicicleta",
                                      Description = "RGB na bicicleta",
                                      Default = false,
                                    }):Callback(function(rgbBicicleta)
                                      getgenv().rgbBicicleta = rgbBicicleta

                                      task.spawn(function()
                                        while getgenv().rgbBicicleta do
                                          f40("1Player1sCa1r", { "NoMotorColor", f39(v65) })
                                          task.wait(0.1)
                                        end
                                      end)
                                    end)

                                    tab13:AddSection({ "itens/tool" })

                                    v68 = false

                                    tab13:AddToggle({
                                      Name = "Rádio RGB  ",
                                      Description = "Altera a cor do rádio com RGB contínuo",
                                      Default = false,
                                      Callback = function(value156)
                                        v68 = value156

                                        if value156 then
                                          task.spawn(function()
                                            while v68 and localPlayer8.Character do
                                              local v262 = f39(v65)

                                              local v263, v264 = pcall(function()
                                                return localPlayer8:WaitForChild("PlayerGui"):WaitForChild("ToolGui"):WaitForChild("ToolSettings"):WaitForChild("Settings"):WaitForChild("PropsColor"):WaitForChild("SetColor")
                                              end)

                                              if v263 and v264 then
                                                pcall(function() v264:FireServer(v262) end)
                                              end

                                              task.wait(0.03)
                                            end
                                          end)
                                        end
                                      end,
                                    })

                                    tab13:AddToggle({
                                      Name = "RGB Megafone",
                                      Description = "RGB  no megafone",
                                      Default = false,
                                    }):Callback(function(rgbMegafone)
                                      getgenv().rgbMegafone = rgbMegafone

                                      task.spawn(function()
                                        while getgenv().rgbMegafone do
                                          local v265 = f39(v65)
                                          local playerGui = players.LocalPlayer:FindFirstChild("PlayerGui")

                                          if playerGui then
                                            local toolGui = playerGui:FindFirstChild("ToolGui")

                                            if toolGui then
                                              local toolSettings = toolGui:FindFirstChild("ToolSettings")

                                              if toolSettings then
                                                local propsColor = toolSettings:FindFirstChild("Settings"):FindFirstChild("PropsColor")

                                                if propsColor
                                                  and propsColor:FindFirstChild("SetColor") then
                                                  pcall(function()
                                                    propsColor.SetColor:FireServer(v265)
                                                  end)
                                                end
                                              end
                                            end
                                          end

                                          task.wait(0.1)
                                        end
                                      end)
                                    end)

                                    tab13:AddToggle({
                                      Name = "RGB Rosquinha",
                                      Description = "RGB  na rosquinha",
                                      Default = false,
                                    }):Callback(function(rgbRosquinha)
                                      getgenv().rgbRosquinha = rgbRosquinha

                                      task.spawn(function()
                                        while getgenv().rgbRosquinha do
                                          local v266 = f39(v65)
                                          local playerGui2 = players.LocalPlayer:FindFirstChild("PlayerGui")

                                          if playerGui2 then
                                            local toolGui2 = playerGui2:FindFirstChild("ToolGui")

                                            if toolGui2 then
                                              local toolSettings2 = toolGui2:FindFirstChild("ToolSettings")

                                              if toolSettings2 then
                                                local propsColor2 = toolSettings2:FindFirstChild("Settings"):FindFirstChild("PropsColor")

                                                if propsColor2
                                                  and propsColor2:FindFirstChild("SetColor") then
                                                  pcall(function()
                                                    propsColor2.SetColor:FireServer(v266)
                                                  end)
                                                end
                                              end
                                            end
                                          end

                                          task.wait(0.1)
                                        end
                                      end)
                                    end)

                                    local tab14 = window:MakeTab({ "Cliente", "user" })
                                    tab14:AddSection({ "Unban all houses" })

                                    tab14:AddButton({
                                      Name = "Remover Ban de Todas as Casas",
                                      Description = "Tenta remover o ban de todas as casas ",
                                      Callback = function()
                                        local count10 = 0
                                        local count11 = 0

                                        for i6 = 1, 37 do
                                          local findFirstChild48 = v1:FindFirstChild("BannedBlock"
                                            .. i6, true)

                                          if findFirstChild48 then
                                            if pcall(function() findFirstChild48:Destroy() end) then
                                              count10 = count10 + 1
                                            else
                                              count11 = count11 + 1
                                            end
                                          end
                                        end

                                        for key60, value157 in pairs(v1:GetDescendants()) do
                                          local v267 = value157

                                          if v267.Name:match("BannedBlock") then
                                            if pcall(function() v267:Destroy() end) then
                                              count10 = count10 + 1
                                            else
                                              count11 = count11 + 1
                                            end
                                          end
                                        end

                                        if count10 > 0 then
                                          game.StarterGui:SetCore("SendNotification", {
                                            Title = "Sucesso",
                                            Text = "Bans removidos de " .. count10 .. " casas!",
                                            Duration = 5,
                                          })
                                        end

                                        if count11 > 0 then
                                          game.StarterGui:SetCore("SendNotification", {
                                            Title = "Aviso",
                                            Text = "Falha ao remover bans de " .. count11
                                              .. " casas.",
                                            Duration = 5,
                                          })
                                        end

                                        if count10 == 0 and count11 == 0 then
                                          game.StarterGui:SetCore("SendNotification", {
                                            Title = "Aviso",
                                            Text = "Nenhum ban encontrado para remover.",
                                            Duration = 5,
                                          })
                                        end
                                      end,
                                    })

                                    tab14:AddSection({ "ESPs" })

                                    localPlayer10 = players.LocalPlayer
                                    currentCamera3 = workspace.CurrentCamera

                                    v69 = {
                                      BoxESP = false,
                                      TracerESP = false,
                                      NameESP = false,
                                      DistanceESP = false,
                                      TeamCheck = false,
                                      MaxDistance = 2000,
                                      BoxColor = Color3.fromRGB(255, 255, 255),
                                      TracerColor = Color3.fromRGB(255, 255, 255),
                                      BoxThickness = 1.5,
                                      TracerThickness = 1.5,
                                      TextSize = 13,
                                    }

                                    function f19(p89)
                                      if p89 == localPlayer10 or v70[p89] then
                                        return
                                      elseif not Drawing then
                                        warn("Seu executor não suporta Drawing API.")
                                        return
                                      else
                                        local v268 = {}
                                        v268.Box = Drawing.new("Square")
                                        v268.Box.Visible = false
                                        v268.Box.Filled = false
                                        v268.Box.Thickness = v69.BoxThickness
                                        v268.Box.Color = v69.BoxColor
                                        v268.Tracer = Drawing.new("Line")
                                        v268.Tracer.Visible = false
                                        v268.Tracer.Thickness = v69.TracerThickness
                                        v268.Tracer.Color = v69.TracerColor
                                        v268.Name = Drawing.new("Text")
                                        v268.Name.Visible = false
                                        v268.Name.Center = true
                                        v268.Name.Outline = true
                                        v268.Name.Size = v69.TextSize
                                        v268.Name.Color = Color3.fromRGB(255, 255, 255)
                                        v268.Distance = Drawing.new("Text")
                                        v268.Distance.Visible = false
                                        v268.Distance.Center = true
                                        v268.Distance.Outline = true
                                        v268.Distance.Size = 12
                                        v268.Distance.Color = Color3.fromRGB(200, 200, 200)

                                        v70[p89] = v268
                                        return
                                      end
                                    end

                                    v70 = {}
                                    local getPlayers3 = players.GetPlayers

                                    function f20(p90, p91)
                                      if not p91 then
                                        return
                                      end

                                      local v269

                                      if not v69.BoxESP and not v69.TracerESP
                                        and not v69.NameESP and not v69.DistanceESP then
                                        f41(p91)
                                        return
                                      else
                                        local character47 = p90.Character

                                        if not character47 then
                                          f41(p91)
                                          return
                                        else
                                          local humanoid36 = character47:FindFirstChildOfClass("Humanoid")
                                          local humanoidRootPart47 = character47:FindFirstChild("HumanoidRootPart")
                                          local v270 = not humanoid36
                                          local head = character47:FindFirstChild("Head")

                                          if v270 or not humanoidRootPart47
                                            or humanoid36.Health <= 0 then
                                            f41(p91)
                                            return
                                          end

                                          if v69.TeamCheck and p90.Team and localPlayer10.Team
                                            and p90.Team == localPlayer10.Team then
                                            f41(p91)
                                            return
                                          else
                                            local character48 = localPlayer10.Character

                                            if not character48 then
                                              f41(p91)
                                              return
                                            else
                                              local humanoidRootPart48 = character48:FindFirstChild("HumanoidRootPart")

                                              if not humanoidRootPart48 then
                                                f41(p91)
                                                return
                                              else
                                                local magnitude2 = (humanoidRootPart47.Position
                                                  - humanoidRootPart48.Position).Magnitude

                                                if magnitude2 > v69.MaxDistance then
                                                  f41(p91)
                                                  return
                                                else
                                                  local v271, v272 = currentCamera3:WorldToViewportPoint(humanoidRootPart47.Position)

                                                  if not v272 then
                                                    f41(p91)
                                                    return
                                                  else
                                                    if head then
                                                      v269 = head.Position
                                                        + Vector3.new(0, 0.5, 0)
                                                    else
                                                      v269 = humanoidRootPart47.Position
                                                        + Vector3.new(0, 3, 0)
                                                    end

                                                    local vector8 = Vector3.new(0, 3, 0)
                                                    local v273, v274 = currentCamera3:WorldToViewportPoint(v269)

                                                    local v275, v276 = currentCamera3:WorldToViewportPoint(humanoidRootPart47.Position
                                                      - vector8)

                                                    if not v274 or not v276 then
                                                      f41(p91)
                                                      return
                                                    else
                                                      local v277 = math.abs(v275.Y - v273.Y)
                                                      local v278 = v277 * 0.55

                                                      local vector9 = Vector2.new(v271.X
                                                        - v278 / 2, v273.Y)

                                                      if v69.BoxESP then
                                                        p91.Box.Visible = true
                                                        p91.Box.Position = vector9
                                                        p91.Box.Size = Vector2.new(v278, v277)
                                                        p91.Box.Color = v69.BoxColor
                                                        p91.Box.Thickness = v69.BoxThickness
                                                      else
                                                        p91.Box.Visible = false
                                                      end

                                                      if v69.TracerESP then
                                                        local viewportSize = currentCamera3.ViewportSize

                                                        p91.Tracer.Visible = true

                                                        p91.Tracer.From = Vector2.new(viewportSize.X
                                                          / 2, viewportSize.Y)

                                                        p91.Tracer.To = Vector2.new(
                                                          v271.X, v275.Y
                                                        )

                                                        p91.Tracer.Color = v69.TracerColor
                                                        p91.Tracer.Thickness = v69.TracerThickness
                                                      else
                                                        p91.Tracer.Visible = false
                                                      end

                                                      if v69.NameESP then
                                                        p91.Name.Visible = true

                                                        p91.Name.Text = p90.DisplayName .. " (@"
                                                          .. p90.Name .. ")"

                                                        p91.Name.Position = Vector2.new(v271.X, v273.Y
                                                          - 18)
                                                      else
                                                        p91.Name.Visible = false
                                                      end

                                                      if v69.DistanceESP then
                                                        p91.Distance.Visible = true

                                                        p91.Distance.Text = string.format(
                                                          "[%dm]", magnitude2
                                                        )

                                                        p91.Distance.Position = Vector2.new(v271.X, v275.Y
                                                          + 4)
                                                      else
                                                        p91.Distance.Visible = false
                                                      end

                                                      return
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end

                                    function f41(p92)
                                      if not p92 then
                                        return
                                      end

                                      if p92.Box then
                                        p92.Box.Visible = false
                                      end

                                      if p92.Tracer then
                                        p92.Tracer.Visible = false
                                      end

                                      if p92.Name then
                                        p92.Name.Visible = false
                                      end

                                      if p92.Distance then
                                        p92.Distance.Visible = false
                                      end
                                    end

                                    function f42(p93)
                                      local v279 = v70[p93]

                                      if not v279 then
                                        return
                                      end

                                      f41(v279)

                                      for key61, value158 in pairs(v279) do
                                        local v280 = value158
                                        pcall(function() v280:Remove() end)
                                      end

                                      v70[p93] = nil
                                    end

                                    for index49, value159 in ipairs(getPlayers3(players)) do
                                      f19(value159)
                                    end

                                    players.PlayerAdded:Connect(function(player2)
                                      f19(player2)
                                    end)

                                    players.PlayerRemoving:Connect(function(player3)
                                      f42(player3)
                                    end)

                                    connect = runService.RenderStepped:Connect(function()
                                      for key62, value160 in pairs(v70) do
                                        if key62.Parent then
                                          f20(key62, value160)
                                        else
                                          f42(key62)
                                        end
                                      end
                                    end)

                                    local v281 = getgenv()

                                    v281.ManoxESP = {
                                      ToggleBox = function(p94) v69.BoxESP = p94 == true end,
                                      ToggleTracer = function(p95)
                                        v69.TracerESP = p95 == true
                                      end,
                                      ToggleName = function(p96) v69.NameESP = p96 == true end,
                                      ToggleDistance = function(p97)
                                        v69.DistanceESP = p97 == true
                                      end,
                                      ToggleTeamCheck = function(p98)
                                        v69.TeamCheck = p98 == true
                                      end,
                                      SetColor = function(p99)
                                        if typeof(p99) ~= "Color3" then
                                          return
                                        end

                                        v69.BoxColor = p99
                                        v69.TracerColor = p99
                                      end,
                                      SetMaxDistance = function(p100)
                                        if typeof(p100) == "number" then
                                          v69.MaxDistance = p100
                                        end
                                      end,
                                      Destroy = function()
                                        for key63 in pairs(v70) do
                                          f42(key63)
                                        end

                                        if connect then
                                          connect:Disconnect()
                                          connect = nil
                                        end

                                        getgenv().ManoxESP = nil
                                      end,
                                    }

                                    tab14:AddToggle({
                                      Title = "Esp Box",
                                      Default = false,
                                      Callback = function(value161)
                                        getgenv().ManoxESP.ToggleBox(value161)
                                      end,
                                    })

                                    tab14:AddToggle({
                                      Title = "Esp Tracer",
                                      Default = false,
                                      Callback = function(value162)
                                        getgenv().ManoxESP.ToggleTracer(value162)
                                      end,
                                    })

                                    tab14:AddToggle({
                                      Title = "Esp Name",
                                      Default = false,
                                      Callback = function(value163)
                                        getgenv().ManoxESP.ToggleName(value163)
                                      end,
                                    })

                                    tab14:AddToggle({
                                      Title = "Esp Distance",
                                      Default = false,
                                      Callback = function(value164)
                                        getgenv().ManoxESP.ToggleDistance(value164)
                                      end,
                                    })

                                    local tab15 = window:MakeTab({ "feedback", "list" })
                                    v71 = true
                                    localPlayer11 = players.LocalPlayer
                                    tab15:AddSection({ "Envie seu feedback" })
                                    v72 = ""

                                    tab15:AddTextBox({
                                      Name = "Seu feedback",
                                      PlaceholderText = "Escreva aqui sua sugestão, bug ou opinião...",
                                      RemoveTextAfterFocusLost = false,
                                      Callback = function(value165) v72 = value165 end,
                                    })

                                    tab15:AddButton({
                                      Name = "Enviar Feedback",
                                      Callback = function()
                                        if not v71 then
                                          return
                                        end

                                        if v72 == "" or #v72 < 5 then
                                          redzHubUi:Notify({
                                            Title = "Erro",
                                            Content = "O feedback está muito curto.",
                                            Duration = 4,
                                          })

                                          return
                                        else
                                          local getProductInfo = marketplaceService:GetProductInfo(game.PlaceId)
                                          local toIsoDate = DateTime.now():ToIsoDate()

                                          local jsonEncode = httpService:JSONEncode({
                                            username = "Feedback Bot",
                                            embeds = {
                                              {
                                                title = "📩 Novo Feedback",
                                                color = 65433,
                                                fields = {
                                                  {
                                                    name = "👤 Jogador",
                                                    value = localPlayer11.Name .. " ("
                                                      .. localPlayer11.UserId .. ")",
                                                    inline = false,
                                                  },
                                                  {
                                                    name = "🎮 Jogo",
                                                    value = getProductInfo.Name,
                                                    inline = false,
                                                  },
                                                  {
                                                    name = "💬 Feedback",
                                                    value = v72,
                                                    inline = false,
                                                  },
                                                },
                                                footer = {
                                                  text = "Manox Hub • Feedback System",
                                                },
                                                timestamp = toIsoDate,
                                              },
                                            },
                                          })

                                          pcall(function()
                                            if syn and syn.request then
                                              syn.request({
                                                Url = "https://discord.com/api/webhooks/1491814815990022154/f0Ehv3PrjwUvcrZorrqjULZHpaRCJMgVlYrKQfjPsEaPmzaI6-vdRuS6SCg7ACx8Eb3Q",
                                                Method = "POST",
                                                Headers = {
                                                  ["Content-Type"] = "application/json",
                                                },
                                                Body = jsonEncode,
                                              })
                                            elseif v79 then
                                              v79({
                                                Url = "https://discord.com/api/webhooks/1491814815990022154/f0Ehv3PrjwUvcrZorrqjULZHpaRCJMgVlYrKQfjPsEaPmzaI6-vdRuS6SCg7ACx8Eb3Q",
                                                Method = "POST",
                                                Headers = {
                                                  ["Content-Type"] = "application/json",
                                                },
                                                Body = jsonEncode,
                                              })
                                            elseif http_request then
                                              http_request({
                                                Url = "https://discord.com/api/webhooks/1491814815990022154/f0Ehv3PrjwUvcrZorrqjULZHpaRCJMgVlYrKQfjPsEaPmzaI6-vdRuS6SCg7ACx8Eb3Q",
                                                Method = "POST",
                                                Headers = {
                                                  ["Content-Type"] = "application/json",
                                                },
                                                Body = jsonEncode,
                                              })
                                            end
                                          end)

                                          redzHubUi:Notify({
                                            Title = "Feedback",
                                            Content = "Feedback enviado com sucesso!",
                                            Duration = 4,
                                          })

                                          v72 = ""

                                          if v71 then
                                            v71 = false
                                          end

                                          return
                                        end
                                      end,
                                    })

                                    pcall(function()
                                      loadstring(game:HttpGet("https://raw.githubusercontent.com/EzJAGAMES94/Manox-Hub-Script/refs/heads/main/ajsbdo0jsjsh082829jsksnaoegei"))()
                                    end)

                                    return
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
