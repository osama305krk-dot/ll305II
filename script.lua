local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- رابط الـ Whitelist الخاص بحسابات المصرح لهم
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

-- تشغيل الواجهة
pcall(function()
    local _L1, _L2, _L3, _L4, _L5 = game:GetService("Players"), game:GetService("UserInputService"), game:GetService("RunService"), game:GetService("Workspace"), game:GetService("TweenService")
    local _L6, _L7, _L8 = _L1.LocalPlayer, _L4.CurrentCamera, _L1.LocalPlayer:WaitForChild("PlayerGui")
    
    if _L8:FindFirstChild("OsaHub_UltraUI") then 
        _L8.OsaHub_UltraUI:Destroy() 
    end

    local _L9 = Instance.new("ScreenGui")
    _L9.Name = "OsaHub_UltraUI"
    _L9.ResetOnSpawn = false
    _L9.Parent = _L8

    local _L10 = Instance.new("Frame")
    _L10.Size = UDim2.new(0, 390, 0, 530)
    _L10.Position = UDim2.new(0.5, -195, 0.5, -265)
    _L10.BackgroundColor3 = Color3.fromRGB(10, 12, 18)
    _L10.BorderSizePixel = 0
    _L10.Active = true
    _L10.Draggable = true
    _L10.ClipsDescendants = true
    _L10.Parent = _L9

    Instance.new("UICorner", _L10).CornerRadius = UDim.new(0, 18)

    local _L11 = Instance.new("UIStroke")
    _L11.Thickness = 2
    _L11.Color = Color3.fromRGB(0, 102, 255)
    _L11.Parent = _L10

    local _L14 = Instance.new("TextLabel")
    _L14.Size = UDim2.new(1, 0, 0, 50)
    _L14.Text = "⚡ Osa.v2 Hub ⚡"
    _L14.TextColor3 = Color3.fromRGB(255, 255, 255)
    _L14.BackgroundColor3 = Color3.fromRGB(14, 18, 28)
    _L14.BackgroundTransparency = 0.2
    _L14.TextSize = 15
    _L14.Font = Enum.Font.GothamBold
    _L14.TextXAlignment = Enum.TextXAlignment.Left
    _L14.ZIndex = 5
    _L14.Parent = _L10

    Instance.new("UICorner", _L14).CornerRadius = UDim.new(0, 18)
end)
