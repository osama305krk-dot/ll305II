-- ==========================================
-- نظام التحقق (Whitelist Security System)
-- ==========================================
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- رابط الـ Whitelist الخاص بك
local WhitelistURL = "https://gist.githubusercontent.com/osama305krk-dot/d190b0342ebc7343ad43903db6fa155e/raw/0762a65141d8bf371aadcb64c338e5b3d8a6f5e2/whitelist.json"

local function IsWhitelisted()
    local success, response = pcall(function()
        return game:HttpGet(WhitelistURL)
    end)

    if success then
        local successDecode, WhitelistedIDs = pcall(function()
            return HttpService:JSONDecode(response)
        end)
        
        if successDecode and type(WhitelistedIDs) == "table" then
            for _, id in ipairs(WhitelistedIDs) do
                if tonumber(id) == LocalPlayer.UserId then
                    return true
                end
            end
        end
    end
    return false
end

-- فحص الحساب قبل أي تشغيل
if not IsWhitelisted() then
    LocalPlayer:Kick("عذراً، حسابك غير مفعل لاستخدام Osa.v2 Hub!")
    return
end

print("✨ تم التحقق من الحساب بنجاح! جاري تحميل Osa.v2 Hub...")

-- ==========================================
-- سكربت Osa.v2 Hub الأصلي بكامل ميزاته
-- ==========================================
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")

local Camera = Workspace.CurrentCamera
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("OsaHub_UltraUI") then
    PlayerGui.OsaHub_UltraUI:Destroy()
end

-- 1. إنشاء الواجهة الرئيسية (Dark Blue & Black Theme)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "OsaHub_UltraUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 390, 0, 530)
Frame.Position = UDim2.new(0.5, -195, 0.5, -265)
Frame.BackgroundColor3 = Color3.fromRGB(10, 12, 18)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 18)
UICorner.Parent = Frame

-- إطار نيون أزرق غامق مضيء
local FrameStroke = Instance.new("UIStroke")
FrameStroke.Thickness = 2
FrameStroke.Color = Color3.fromRGB(0, 102, 255)
FrameStroke.Parent = Frame

-- 😈 زينة القرون العلوية
local LeftHorn = Instance.new("ImageLabel")
LeftHorn.Size = UDim2.new(0, 35, 0, 35)
LeftHorn.Position = UDim2.new(0, -8, 0, -10)
LeftHorn.BackgroundTransparency = 1
LeftHorn.Image = "rbxassetid://6034818372"
LeftHorn.ImageColor3 = Color3.fromRGB(0, 102, 255)
LeftHorn.ZIndex = 10
LeftHorn.Parent = Frame

local RightHorn = Instance.new("ImageLabel")
RightHorn.Size = UDim2.new(0, 35, 0, 35)
RightHorn.Position = UDim2.new(1, -27, 0, -10)
RightHorn.BackgroundTransparency = 1
RightHorn.Image = "rbxassetid://6034818372"
RightHorn.ImageColor3 = Color3.fromRGB(0, 102, 255)
RightHorn.Rotation = 90
RightHorn.ZIndex = 10
RightHorn.Parent = Frame

-- العنوان
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Text = "    ⚡ Osa.v2 Hub 😛"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(14, 18, 28)
Title.BackgroundTransparency = 0.2
Title.TextSize = 15
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 5
Title.Parent = Frame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 18)
TitleCorner.Parent = Title

-- شارة الاختصارات
local KeyBadge = Instance.new("TextLabel")
KeyBadge.Size = UDim2.new(0, 95, 0, 22)
KeyBadge.Position = UDim2.new(1, -210, 0, 14)
KeyBadge.BackgroundColor3 = Color3.fromRGB(18, 40, 90)
KeyBadge.Text = "🔑 Aim[Q] | ESP[E]"
KeyBadge.TextColor3 = Color3.fromRGB(0, 180, 255)
KeyBadge.TextSize = 9
KeyBadge.Font = Enum.Font.GothamBold
KeyBadge.ZIndex = 6
KeyBadge.Parent = Frame
Instance.new("UICorner", KeyBadge).CornerRadius = UDim.new(0, 6)

-- خط نيون أزرق تحت العنوان
local GlowLine = Instance.new("Frame")
GlowLine.Size = UDim2.new(1, 0, 0, 2)
GlowLine.Position = UDim2.new(0, 0, 0, 48)
GlowLine.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
GlowLine.BorderSizePixel = 0
GlowLine.ZIndex = 5
GlowLine.Parent = Frame

-- أزرار الإغلاق والتصغير
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 28, 0, 28)
CloseButton.Position = UDim2.new(1, -34, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(180, 35, 35)
CloseButton.Text = "✕"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize, CloseButton.Font = 13, Enum.Font.GothamBold
CloseButton.ZIndex = 6
CloseButton.Parent = Frame
Instance.new("UICorner", CloseButton).CornerRadius = UDim.new(0, 8)

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 28, 0, 28)
MinimizeButton.Position = UDim2.new(1, -68, 0, 10)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
MinimizeButton.Text = "━"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize, MinimizeButton.Font = 11, Enum.Font.GothamBold
MinimizeButton.ZIndex = 6
MinimizeButton.Parent = Frame
Instance.new("UICorner", MinimizeButton).CornerRadius = UDim.new(0, 8)

-- 🏷️ شريط التبويبات العلوي
local TabBar = Instance.new("Frame")
TabBar.Size = UDim2.new(0.92, 0, 0, 32)
TabBar.Position = UDim2.new(0.04, 0, 0.105, 0)
TabBar.BackgroundColor3 = Color3.fromRGB(15, 20, 32)
TabBar.ZIndex = 5
TabBar.Parent = Frame
Instance.new("UICorner", TabBar).CornerRadius = UDim.new(0, 8)

local TabList = Instance.new("UIListLayout")
TabList.FillDirection = Enum.FillDirection.Horizontal
TabList.HorizontalAlignment = Enum.HorizontalAlignment.Center
TabList.VerticalAlignment = Enum.VerticalAlignment.Center
TabList.Padding = UDim.new(0, 5)
TabList.Parent = TabBar

local function CreateTab(name, active)
    local tab = Instance.new("TextButton")
    tab.Size = UDim2.new(0.31, 0, 0.8, 0)
    tab.BackgroundColor3 = active and Color3.fromRGB(0, 102, 255) or Color3.fromRGB(22, 28, 42)
    tab.Text = name
    tab.TextColor3 = Color3.fromRGB(255, 255, 255)
    tab.TextSize = 10
    tab.Font = Enum.Font.GothamBold
    tab.ZIndex = 6
    tab.Parent = TabBar
    Instance.new("UICorner", tab).CornerRadius = UDim.new(0, 6)
    return tab
end

local MainTab = CreateTab("🎯 الرئيسية", true)
local EspTab = CreateTab("👁️ الرؤية", false)
local MiscTab = CreateTab("⚙️ الإعدادات", false)

-- الحاوية الرئيسية
local Container = Instance.new("Frame")
Container.Size = UDim2.new(1, 0, 1, -95)
Container.Position = UDim2.new(0, 0, 0, 95)
Container.BackgroundTransparency = 1
Container.ZIndex = 2
Container.Parent = Frame

-- خلفية باثريك جين
local PatrickBackground = Instance.new("ImageLabel")
PatrickBackground.Size = UDim2.new(1, 0, 1, 0)
PatrickBackground.BackgroundTransparency = 1
PatrickBackground.Image = "rbxassetid://7074708225" 
PatrickBackground.ImageTransparency = 0.35
PatrickBackground.ImageColor3 = Color3.fromRGB(80, 120, 255)
PatrickBackground.ScaleType = Enum.ScaleType.Crop
PatrickBackground.ZIndex = 1
PatrickBackground.Parent = Container
Instance.new("UICorner", PatrickBackground).CornerRadius = UDim.new(0, 18)

-- 🖼️ دالة إنشاء الأزرار
local function CreateDarkButton(imageId, titleText, posY, defaultState)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.88, 0, 0, 42)
    btn.Position = UDim2.new(0.06, 0, posY, 0)
    btn.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
    btn.BackgroundTransparency = 0.15
    btn.AutoButtonColor = false
    btn.Text = ""
    btn.ZIndex = 3
    btn.Parent = Container

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 1.4
    stroke.Color = defaultState and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(35, 45, 65)
    stroke.Transparency = 0.2
    stroke.Parent = btn

    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.new(0, 20, 0, 20)
    icon.Position = UDim2.new(0, 12, 0.5, -10)
    icon.BackgroundTransparency = 1
    icon.Image = imageId
    icon.ImageColor3 = defaultState and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(180, 190, 210)
    icon.ZIndex = 4
    icon.Parent = btn

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -70, 1, 0)
    label.Position = UDim2.new(0, 42, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = titleText
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 11
    label.Font = Enum.Font.GothamBold
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.ZIndex = 4
    label.Parent = btn

    local statusDot = Instance.new("Frame")
    statusDot.Size = UDim2.new(0, 10, 0, 10)
    statusDot.Position = UDim2.new(1, -22, 0.5, -5)
    statusDot.BackgroundColor3 = defaultState and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(200, 40, 40)
    statusDot.BorderSizePixel = 0
    statusDot.ZIndex = 4
    statusDot.Parent = btn
    Instance.new("UICorner", statusDot).CornerRadius = UDim.new(1, 0)

    local function UpdateButton(state)
        statusDot.BackgroundColor3 = state and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(200, 40, 40)
        stroke.Color = state and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(35, 45, 65)
        icon.ImageColor3 = state and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(180, 190, 210)
    end

    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(22, 30, 48)}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(15, 20, 30)}):Play()
    end)

    return btn, UpdateButton
end

-- إنشاء الأزرار
local AimBtn, UpdateAimBtn = CreateDarkButton("rbxassetid://6031280882", "الأيم أسست [Q]", 0.03, true)
local WallBtn, UpdateWallBtn = CreateDarkButton("rbxassetid://6034818372", "فحص الجدار (Wall Check)", 0.15, true)
local TeamBtn, UpdateTeamBtn = CreateDarkButton("rbxassetid://6034287525", "فحص الفريق (Team Check)", 0.27, false)
local EspBtn, UpdateEspBtn = CreateDarkButton("rbxassetid://6034560322", "كاشف الأماكن ESP [E]", 0.39, false)

-- شريط السلاسة (Slider Box)
local SliderBox = Instance.new("Frame")
SliderBox.Size = UDim2.new(0.88, 0, 0, 65)
SliderBox.Position = UDim2.new(0.06, 0, 0.53, 0)
SliderBox.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
SliderBox.BackgroundTransparency = 0.2
SliderBox.ZIndex = 3
SliderBox.Parent = Container
Instance.new("UICorner", SliderBox).CornerRadius = UDim.new(0, 12)

local SliderIcon = Instance.new("ImageLabel")
SliderIcon.Size = UDim2.new(0, 18, 0, 18)
SliderIcon.Position = UDim2.new(0, 12, 0, 9)
SliderIcon.BackgroundTransparency = 1
SliderIcon.Image = "rbxassetid://6031280882"
SliderIcon.ImageColor3 = Color3.fromRGB(0, 180, 255)
SliderIcon.ZIndex = 4
SliderIcon.Parent = SliderBox

local SliderLabel = Instance.new("TextLabel")
SliderLabel.Size = UDim2.new(1, -40, 0, 20)
SliderLabel.Position = UDim2.new(0, 36, 0, 8)
SliderLabel.BackgroundTransparency = 1
SliderLabel.Text = "قوة الأيم أسست (السلاسة): 50%"
SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderLabel.TextSize = 11
SliderLabel.Font = Enum.Font.GothamMedium
SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
SliderLabel.ZIndex = 4
SliderLabel.Parent = SliderBox

local SliderFrame = Instance.new("TextButton")
SliderFrame.Size = UDim2.new(0.92, 0, 0, 10)
SliderFrame.Position = UDim2.new(0.04, 0, 0.60, 0)
SliderFrame.BackgroundColor3 = Color3.fromRGB(8, 12, 20)
SliderFrame.AutoButtonColor = false
SliderFrame.Text = ""
SliderFrame.ZIndex = 4
SliderFrame.Parent = SliderBox
Instance.new("UICorner", SliderFrame).CornerRadius = UDim.new(0, 5)

local SliderFill = Instance.new("Frame")
SliderFill.Size = UDim2.new(0.5, 0, 1, 0)
SliderFill.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
SliderFill.BorderSizePixel = 0
SliderFill.ZIndex = 4
SliderFill.Parent = SliderFrame
Instance.new("UICorner", SliderFill).CornerRadius = UDim.new(0, 5)

local SliderKnob = Instance.new("Frame")
SliderKnob.Size = UDim2.new(0, 16, 0, 16)
SliderKnob.AnchorPoint = Vector2.new(0.5, 0.5)
SliderKnob.Position = UDim2.new(1, 0, 0.5, 0)
SliderKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderKnob.ZIndex = 5
SliderKnob.Parent = SliderFill
Instance.new("UICorner", SliderKnob).CornerRadius = UDim.new(1, 0)

-- عداد FPS
local FpsLabel = Instance.new("TextLabel")
FpsLabel.Size = UDim2.new(0.88, 0, 0, 20)
FpsLabel.Position = UDim2.new(0.06, 0, 0.71, 0)
FpsLabel.BackgroundTransparency = 1
FpsLabel.Text = "📊 معدل الإطارات: -- FPS"
FpsLabel.TextColor3 = Color3.fromRGB(0, 180, 255)
FpsLabel.TextSize = 11
FpsLabel.Font = Enum.Font.GothamBold
FpsLabel.TextXAlignment = Enum.TextXAlignment.Left
FpsLabel.ZIndex = 3
FpsLabel.Parent = Container

-- ملاحظة سريعة
local InfoLabel = Instance.new("TextLabel")
InfoLabel.Size = UDim2.new(0.88, 0, 0, 35)
InfoLabel.Position = UDim2.new(0.06, 0, 0.80, 0)
InfoLabel.BackgroundTransparency = 1
InfoLabel.Text = "💡 [Q] أيم أسست | [E] كاشف ESP | [G] إخفاء الواجهة"
InfoLabel.TextColor3 = Color3.fromRGB(170, 190, 220)
InfoLabel.TextSize = 10
InfoLabel.Font = Enum.Font.Gotham
InfoLabel.TextWrapped = true
InfoLabel.ZIndex = 3
InfoLabel.Parent = Container

-- دائرة FOV
local FovRadius = 150
local FOVCircle = Instance.new("Frame")
FOVCircle.Name = "FOVCircle"
FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
FOVCircle.Size = UDim2.new(0, FovRadius * 2, 0, FovRadius * 2)
FOVCircle.BackgroundTransparency = 1
FOVCircle.Visible = false
FOVCircle.Parent = ScreenGui

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(0, 150, 255)
UIStroke.Thickness = 2
UIStroke.Transparency = 0.2
UIStroke.Parent = FOVCircle
Instance.new("UICorner", FOVCircle).CornerRadius = UDim.new(1, 0)

-- المتغيرات والتحكم
local AimEnabled = true
local WallCheckEnabled = true
local TeamCheckEnabled = false
local EspEnabled = false
local AimSmoothness = 0.5

local CurrentTarget = nil
local CurrentTargetPart = nil

-- حركة السلايدر
local isSliding = false
local function UpdateSliderValue(input)
    local mousePosX = input.Position.X
    local framePosX = SliderFrame.AbsolutePosition.X
    local frameWidth = SliderFrame.AbsoluteSize.X
    local relativeX = math.clamp((mousePosX - framePosX) / frameWidth, 0, 1)
    SliderFill.Size = UDim2.new(relativeX, 0, 1, 0)
    AimSmoothness = relativeX
    SliderLabel.Text = "قوة الأيم أسست (السلاسة): " .. math.floor(relativeX * 100) .. "%"
end

SliderFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isSliding = true
        UpdateSliderValue(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isSliding = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isSliding and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        UpdateSliderValue(input)
    end
end)

-- نظام ESP
local function ClearESP(character)
    if not character then return end
    if character:FindFirstChild("OsaESP_Highlight") then character.OsaESP_Highlight:Destroy() end
    if character:FindFirstChild("Head") and character.Head:FindFirstChild("OsaHealthGui") then character.Head.OsaHealthGui:Destroy() end
end

local function ApplyESPToCharacter(character)
    if not character or not EspEnabled then return end
    ClearESP(character)

    local highlight = Instance.new("Highlight")
    highlight.Name = "OsaESP_Highlight"
    highlight.Adornee = character
    highlight.FillColor = Color3.fromRGB(0, 102, 255)
    highlight.FillTransparency = 0.35
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = character

    local head = character:FindFirstChild("Head")
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if head and humanoid then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "OsaHealthGui"
        billboard.Adornee = head
        billboard.Size = UDim2.new(0, 55, 0, 11)
        billboard.StudsOffset = Vector3.new(0, 3.5, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = head

        local bgFrame = Instance.new("Frame")
        bgFrame.Size = UDim2.new(1, 0, 1, 0)
        bgFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
        bgFrame.BorderSizePixel = 0
        bgFrame.Parent = billboard
        Instance.new("UICorner", bgFrame).CornerRadius = UDim.new(0, 3)

        local healthFill = Instance.new("Frame")
        healthFill.Size = UDim2.new(math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1), 0, 1, 0)
        healthFill.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
        healthFill.BorderSizePixel = 0
        healthFill.Parent = bgFrame
        Instance.new("UICorner", healthFill).CornerRadius = UDim.new(0, 3)

        local healthText = Instance.new("TextLabel")
        healthText.Size = UDim2.new(1, 0, 1, 0)
        healthText.BackgroundTransparency = 1
        healthText.Text = math.floor(humanoid.Health) .. " HP"
        healthText.TextColor3 = Color3.fromRGB(255, 255, 255)
        healthText.TextSize = 9
        healthText.Font = Enum.Font.GothamBold
        healthText.ZIndex = 5
        healthText.Parent = bgFrame

        humanoid.HealthChanged:Connect(function(health)
            local percent = math.clamp(health / humanoid.MaxHealth, 0, 1)
            healthFill.Size = UDim2.new(percent, 0, 1, 0)
            healthText.Text = math.floor(health) .. " HP"
        end)
    end
end

local function UpdateAllESP()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            if EspEnabled then ApplyESPToCharacter(player.Character) else ClearESP(player.Character) end
        end
    end
end

-- الـ FPS
local frameCount = 0
local lastTime = tick()
RunService.RenderStepped:Connect(function()
    frameCount = frameCount + 1
    if tick() - lastTime >= 1 then
        FpsLabel.Text = "📊 معدل الإطارات: " .. frameCount .. " FPS"
        frameCount = 0
        lastTime = tick()
    end
end)

-- Wall Check
local function IsVisible(targetPart)
    if not WallCheckEnabled then return true end
    local origin = Camera.CFrame.Position
    local destination = targetPart.Position
    local direction = destination - origin

    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    local ignoreList = {}
    if LocalPlayer.Character then table.insert(ignoreList, LocalPlayer.Character) end
    if targetPart.Parent then table.insert(ignoreList, targetPart.Parent) end
    raycastParams.FilterDescendantsInstances = ignoreList

    return Workspace:Raycast(origin, direction, raycastParams) == nil
end

-- Get Closest Player
local function GetClosestPlayer()
    local ClosestPlayer = nil
    local ShortestDistance = math.huge
    local CenterPos = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local isTeamMate = TeamCheckEnabled and LocalPlayer.Team and player.Team and LocalPlayer.Team == player.Team
            if not isTeamMate then
                local char = player.Character
                local humanoid = char:FindFirstChildOfClass("Humanoid")
                local rootPart = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Head")
                
                if rootPart and humanoid and humanoid.Health > 0 then
                    local ScreenPos, OnScreen = Camera:WorldToViewportPoint(rootPart.Position)
                    if OnScreen then
                        local Distance = (Vector2.new(ScreenPos.X, ScreenPos.Y) - CenterPos).Magnitude
                        if Distance <= FovRadius and Distance < ShortestDistance then
                            if IsVisible(rootPart) then
                                ShortestDistance = Distance
                                ClosestPlayer = player
                            end
                        end
                    end
                end
            end
        end
    end
    return ClosestPlayer
end

-- أحداث الأزرار
AimBtn.MouseButton1Click:Connect(function()
    AimEnabled = not AimEnabled
    UpdateAimBtn(AimEnabled)
end)

WallBtn.MouseButton1Click:Connect(function()
    WallCheckEnabled = not WallCheckEnabled
    UpdateWallBtn(WallCheckEnabled)
end)

TeamBtn.MouseButton1Click:Connect(function()
    TeamCheckEnabled = not TeamCheckEnabled
    UpdateTeamBtn(TeamCheckEnabled)
end)

EspBtn.MouseButton1Click:Connect(function()
    EspEnabled = not EspEnabled
    UpdateEspBtn(EspEnabled)
    UpdateAllESP()
end)

-- حلقة الأيم السلسة
RunService.RenderStepped:Connect(function()
    if AimEnabled then
        local ClosestPlayer = GetClosestPlayer()
        
        if ClosestPlayer ~= CurrentTarget then
            CurrentTarget = ClosestPlayer
            if CurrentTarget and CurrentTarget.Character then
                local bodyParts = {"Head", "UpperTorso", "HumanoidRootPart"}
                local validParts = {}
                for _, name in ipairs(bodyParts) do
                    local p = CurrentTarget.Character:FindFirstChild(name)
                    if p then table.insert(validParts, p) end
                end
                if #validParts > 0 then
                    CurrentTargetPart = validParts[math.random(1, #validParts)]
                else
                    CurrentTargetPart = CurrentTarget.Character:FindFirstChild("Head")
                end
            else
                CurrentTargetPart = nil
            end
        end

        if CurrentTargetPart and not IsVisible(CurrentTargetPart) then
            CurrentTarget = nil
            CurrentTargetPart = nil
        end

        if CurrentTarget and CurrentTarget.Character and CurrentTargetPart then
            local CurrentCF = Camera.CFrame
            local TargetCF = CFrame.new(CurrentCF.Position, CurrentTargetPart.Position)
            local smoothFactor = math.clamp(AimSmoothness * 0.25, 0.015, 0.25)
            Camera.CFrame = CurrentCF:Lerp(TargetCF, smoothFactor)
        end
    else
        CurrentTarget = nil
        CurrentTargetPart = nil
    end
end)

-- مفاتيح التفاعل (Q, E, G)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.Q then
        AimEnabled = not AimEnabled
        UpdateAimBtn(AimEnabled)
    end
    
    if input.KeyCode == Enum.KeyCode.E then
        EspEnabled = not EspEnabled
        UpdateEspBtn(EspEnabled)
        UpdateAllESP()
    end
    
    if input.KeyCode == Enum.KeyCode.G then
        Frame.Visible = not Frame.Visible
    end
end)

-- إغلاق وتصغير
CloseButton.MouseButton1Click:Connect(function()
    EspEnabled = false
    UpdateAllESP()
    ScreenGui:Destroy()
end)

local isMinimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    Container.Visible = not isMinimized
    TabBar.Visible = not isMinimized
    Frame.Size = isMinimized and UDim2.new(0, 390, 0, 50) or UDim2.new(0, 390, 0, 530)
    MinimizeButton.Text = isMinimized and "＋" or "━"
end)

-- تأثير نيون أزرق غامق
RunService.RenderStepped:Connect(function(deltaTime)
    local hue = 0.55 + (math.sin(tick() * 1.5) + 1) * 0.08
    local blueColor = Color3.fromHSV(hue, 0.9, 1)
    FrameStroke.Color = blueColor
    GlowLine.BackgroundColor3 = blueColor
    LeftHorn.ImageColor3 = blueColor
    RightHorn.ImageColor3 = blueColor
end)

print("✨ Whitelist & UI Loaded Successfully!")
