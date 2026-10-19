--[[\
	Protected by OsaHub Security & Luau Obfuscator
	Target: Xeno Executor | Theme: Dark Blue & Black Edition
--]]
pcall(function()
	local _L1,_L2,_L3,_L4,_L5 = game:GetService("Players"),game:GetService("UserInputService"),game:GetService("RunService"),game:GetService("Workspace"),game:GetService("TweenService")
	local _L6,_L7,_L8 = _L1.LocalPlayer,_L4.CurrentCamera,_L1.LocalPlayer:WaitForChild("PlayerGui")
	if _L8:FindFirstChild("OsaHub_UltraUI") then _L8.OsaHub_UltraUI:Destroy() end
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
	local _L12 = Instance.new("ImageLabel")
	_L12.Size = UDim2.new(0, 35, 0, 35)
	_L12.Position = UDim2.new(0, -8, 0, -10)
	_L12.BackgroundTransparency = 1
	_L12.Image = "rbxassetid://6034818372"
	_L12.ImageColor3 = Color3.fromRGB(0, 102, 255)
	_L12.ZIndex = 10
	_L12.Parent = _L10
	local _L13 = Instance.new("ImageLabel")
	_L13.Size = UDim2.new(0, 35, 0, 35)
	_L13.Position = UDim2.new(1, -27, 0, -10)
	_L13.BackgroundTransparency = 1
	_L13.Image = "rbxassetid://6034818372"
	_L13.ImageColor3 = Color3.fromRGB(0, 102, 255)
	_L13.Rotation = 90
	_L13.ZIndex = 10
	_L13.Parent = _L10
	local _L14 = Instance.new("TextLabel")
	_L14.Size = UDim2.new(1, 0, 0, 50)
	_L14.Text = "   ⚡ Osa.v2 Hub 😛"
	_L14.TextColor3 = Color3.fromRGB(255, 255, 255)
	_L14.BackgroundColor3 = Color3.fromRGB(14, 18, 28)
	_L14.BackgroundTransparency = 0.2
	_L14.TextSize = 15
	_L14.Font = Enum.Font.GothamBold
	_L14.TextXAlignment = Enum.TextXAlignment.Left
	_L14.ZIndex = 5
	_L14.Parent = _L10
	Instance.new("UICorner", _L14).CornerRadius = UDim.new(0, 18)
	local _L15 = Instance.new("TextLabel")
	_L15.Size = UDim2.new(0, 95, 0, 22)
	_L15.Position = UDim2.new(1, -210, 0, 14)
	_L15.BackgroundColor3 = Color3.fromRGB(18, 40, 90)
	_L15.Text = "🔑 Aim[Q] | ESP[E]"
	_L15.TextColor3 = Color3.fromRGB(0, 180, 255)
	_L15.TextSize = 9
	_L15.Font = Enum.Font.GothamBold
	_L15.ZIndex = 6
	_L15.Parent = _L10
	Instance.new("UICorner", _L15).CornerRadius = UDim.new(0, 6)
	local _L16 = Instance.new("Frame")
	_L16.Size = UDim2.new(1, 0, 0, 2)
	_L16.Position = UDim2.new(0, 0, 0, 48)
	_L16.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
	_L16.BorderSizePixel = 0
	_L16.ZIndex = 5
	_L16.Parent = _L10
	local _L17 = Instance.new("TextButton")
	_L17.Size = UDim2.new(0, 28, 0, 28)
	_L17.Position = UDim2.new(1, -34, 0, 10)
	_L17.BackgroundColor3 = Color3.fromRGB(180, 35, 35)
	_L17.Text = "✕"
	_L17.TextColor3 = Color3.fromRGB(255, 255, 255)
	_L17.TextSize, _L17.Font = 13, Enum.Font.GothamBold
	_L17.ZIndex = 6
	_L17.Parent = _L10
	Instance.new("UICorner", _L17).CornerRadius = UDim.new(0, 8)
	local _L18 = Instance.new("TextButton")
	_L18.Size = UDim2.new(0, 28, 0, 28)
	_L18.Position = UDim2.new(1, -68, 0, 10)
	_L18.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
	_L18.Text = "━"
	_L18.TextColor3 = Color3.fromRGB(255, 255, 255)
	_L18.TextSize, _L18.Font = 11, Enum.Font.GothamBold
	_L18.ZIndex = 6
	_L18.Parent = _L10
	Instance.new("UICorner", _L18).CornerRadius = UDim.new(0, 8)
	local _L19 = Instance.new("Frame")
	_L19.Size = UDim2.new(0.92, 0, 0, 32)
	_L19.Position = UDim2.new(0.04, 0, 0.105, 0)
	_L19.BackgroundColor3 = Color3.fromRGB(15, 20, 32)
	_L19.ZIndex = 5
	_L19.Parent = _L10
	Instance.new("UICorner", _L19).CornerRadius = UDim.new(0, 8)
	local _L20 = Instance.new("UIListLayout")
	_L20.FillDirection = Enum.FillDirection.Horizontal
	_L20.HorizontalAlignment = Enum.HorizontalAlignment.Center
	_L20.VerticalAlignment = Enum.VerticalAlignment.Center
	_L20.Padding = UDim.new(0, 5)
	_L20.Parent = _L19
	local function _C1(_T1, _T2)
		local _T3 = Instance.new("TextButton")
		_T3.Size = UDim2.new(0.31, 0, 0.8, 0)
		_T3.BackgroundColor3 = _T2 and Color3.fromRGB(0, 102, 255) or Color3.fromRGB(22, 28, 42)
		_T3.Text = _T1
		_T3.TextColor3 = Color3.fromRGB(255, 255, 255)
		_T3.TextSize = 10
		_T3.Font = Enum.Font.GothamBold
		_T3.ZIndex = 6
		_T3.Parent = _L19
		Instance.new("UICorner", _T3).CornerRadius = UDim.new(0, 6)
		return _T3
	end
	_C1("🎯 الرئيسية", true)
	_C1("👁️ الرؤية", false)
	_C1("⚙️ الإعدادات", false)
	local _L21 = Instance.new("Frame")
	_L21.Size = UDim2.new(1, 0, 1, -95)
	_L21.Position = UDim2.new(0, 0, 0, 95)
	_L21.BackgroundTransparency = 1
	_L21.ZIndex = 2
	_L21.Parent = _L10
	local _L22 = Instance.new("ImageLabel")
	_L22.Size = UDim2.new(1, 0, 1, 0)
	_L22.BackgroundTransparency = 1
	_L22.Image = "rbxassetid://7074708225"
	_L22.ImageTransparency = 0.35
	_L22.ImageColor3 = Color3.fromRGB(80, 120, 255)
	_L22.ScaleType = Enum.ScaleType.Crop
	_L22.ZIndex = 1
	_L22.Parent = _L21
	Instance.new("UICorner", _L22).CornerRadius = UDim.new(0, 18)
	local function _C2(_T1, _T2, _T3, _T4)
		local _T5 = Instance.new("TextButton")
		_T5.Size = UDim2.new(0.88, 0, 0, 42)
		_T5.Position = UDim2.new(0.06, 0, _T3, 0)
		_T5.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
		_T5.BackgroundTransparency = 0.15
		_T5.AutoButtonColor = false
		_T5.Text = ""
		_T5.ZIndex = 3
		_T5.Parent = _L21
		Instance.new("UICorner", _T5).CornerRadius = UDim.new(0, 10)
		local _T6 = Instance.new("UIStroke")
		_T6.Thickness = 1.4
		_T6.Color = _T4 and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(35, 45, 65)
		_T6.Transparency = 0.2
		_T6.Parent = _T5
		local _T7 = Instance.new("ImageLabel")
		_T7.Size = UDim2.new(0, 20, 0, 20)
		_T7.Position = UDim2.new(0, 12, 0.5, -10)
		_T7.BackgroundTransparency = 1
		_T7.Image = _T1
		_T7.ImageColor3 = _T4 and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(180, 190, 210)
		_T7.ZIndex = 4
		_T7.Parent = _T5
		local _T8 = Instance.new("TextLabel")
		_T8.Size = UDim2.new(1, -70, 1, 0)
		_T8.Position = UDim2.new(0, 42, 0, 0)
		_T8.BackgroundTransparency = 1
		_T8.Text = _T2
		_T8.TextColor3 = Color3.fromRGB(255, 255, 255)
		_T8.TextSize = 11
		_T8.Font = Enum.Font.GothamBold
		_T8.TextXAlignment = Enum.TextXAlignment.Left
		_T8.ZIndex = 4
		_T8.Parent = _T5
		local _T9 = Instance.new("Frame")
		_T9.Size = UDim2.new(0, 10, 0, 10)
		_T9.Position = UDim2.new(1, -22, 0.5, -5)
		_T9.BackgroundColor3 = _T4 and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(200, 40, 40)
		_T9.BorderSizePixel = 0
		_T9.ZIndex = 4
		_T9.Parent = _T5
		Instance.new("UICorner", _T9).CornerRadius = UDim.new(1, 0)
		local function _TN(_S1)
			_T9.BackgroundColor3 = _S1 and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(200, 40, 40)
			_T6.Color = _S1 and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(35, 45, 65)
			_T7.ImageColor3 = _S1 and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(180, 190, 210)
		end
		_T5.MouseEnter:Connect(function() _L5:Create(_T5, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(22, 30, 48)}):Play() end)
		_T5.MouseLeave:Connect(function() _L5:Create(_T5, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(15, 20, 30)}):Play() end)
		return _T5, _TN
	end
	local _L23, _L24 = _C2("rbxassetid://6031280882", "الأيم أسست [Q]", 0.03, true)
	local _L25, _L26 = _C2("rbxassetid://6034818372", "فحص الجدار (Wall Check)", 0.15, true)
	local _L27, _L28 = _C2("rbxassetid://6034287525", "فحص الفريق (Team Check)", 0.27, false)
	local _L29, _L30 = _C2("rbxassetid://6034560322", "كاشف الأماكن ESP [E]", 0.39, false)
	local _L31 = Instance.new("Frame")
	_L31.Size = UDim2.new(0.88, 0, 0, 65)
	_L31.Position = UDim2.new(0.06, 0, 0.53, 0)
	_L31.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
	_L31.BackgroundTransparency = 0.2
	_L31.ZIndex = 3
	_L31.Parent = _L21
	Instance.new("UICorner", _L31).CornerRadius = UDim.new(0, 12)
	local _L32 = Instance.new("TextLabel")
	_L32.Size = UDim2.new(1, -40, 0, 20)
	_L32.Position = UDim2.new(0, 36, 0, 8)
	_L32.BackgroundTransparency = 1
	_L32.Text = "قوة الأيم أسست (السلاسة): 50%"
	_L32.TextColor3 = Color3.fromRGB(255, 255, 255)
	_L32.TextSize = 11
	_L32.Font = Enum.Font.GothamMedium
	_L32.TextXAlignment = Enum.TextXAlignment.Left
	_L32.ZIndex = 4
	_L32.Parent = _L31
	local _L33 = Instance.new("TextButton")
	_L33.Size = UDim2.new(0.92, 0, 0, 10)
	_L33.Position = UDim2.new(0.04, 0, 0.60, 0)
	_L33.BackgroundColor3 = Color3.fromRGB(8, 12, 20)
	_L33.AutoButtonColor = false
	_L33.Text = ""
	_L33.ZIndex = 4
	_L33.Parent = _L31
	Instance.new("UICorner", _L33).CornerRadius = UDim.new(0, 5)
	local _L34 = Instance.new("Frame")
	_L34.Size = UDim2.new(0.5, 0, 1, 0)
	_L34.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
	_L34.BorderSizePixel = 0
	_L34.ZIndex = 4
	_L34.Parent = _L33
	Instance.new("UICorner", _L34).CornerRadius = UDim.new(0, 5)
	local _L35 = Instance.new("Frame")
	_L35.Size = UDim2.new(0, 16, 0, 16)
	_L35.AnchorPoint = Vector2.new(0.5, 0.5)
	_L35.Position = UDim2.new(1, 0, 0.5, 0)
	_L35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_L35.ZIndex = 5
	_L35.Parent = _L34
	Instance.new("UICorner", _L35).CornerRadius = UDim.new(1, 0)
	local _L36 = Instance.new("TextLabel")
	_L36.Size = UDim2.new(0.88, 0, 0, 20)
	_L36.Position = UDim2.new(0.06, 0, 0.71, 0)
	_L36.BackgroundTransparency = 1
	_L36.Text = "📊 معدل الإطارات: -- FPS"
	_L36.TextColor3 = Color3.fromRGB(0, 180, 255)
	_L36.TextSize = 11
	_L36.Font = Enum.Font.GothamBold
	_L36.TextXAlignment = Enum.TextXAlignment.Left
	_L36.ZIndex = 3
	_L36.Parent = _L21
	local _L37 = Instance.new("TextLabel")
	_L37.Size = UDim2.new(0.88, 0, 0, 35)
	_L37.Position = UDim2.new(0.06, 0, 0.80, 0)
	_L37.BackgroundTransparency = 1
	_L37.Text = "💡 [Q] أيم أسست | [E] كاشف ESP | [G] إخفاء الواجهة"
	_L37.TextColor3 = Color3.fromRGB(170, 190, 220)
	_L37.TextSize = 10
	_L37.Font = Enum.Font.Gotham
	_L37.TextWrapped = true
	_L37.ZIndex = 3
	_L37.Parent = _L21
	local _L38 = 150
	local _L39 = Instance.new("Frame")
	_L39.Name = "FOVCircle"
	_L39.AnchorPoint = Vector2.new(0.5, 0.5)
	_L39.Position = UDim2.new(0.5, 0, 0.5, 0)
	_L39.Size = UDim2.new(0, _L38 * 2, 0, _L38 * 2)
	_L39.BackgroundTransparency = 1
	_L39.Visible = false
	_L39.Parent = _L9
	local _L40 = Instance.new("UIStroke")
	_L40.Color = Color3.fromRGB(0, 150, 255)
	_L40.Thickness = 2
	_L40.Transparency = 0.2
	_L40.Parent = _L39
	Instance.new("UICorner", _L39).CornerRadius = UDim.new(1, 0)
	local _L41, _L42, _L43, _L44, _L45 = true, true, false, false, 0.5
	local _L46, _L47 = nil, nil
	local _L48 = false
	local function _US(_I1)
		local _X1 = _I1.Position.X
		local _X2 = _L33.AbsolutePosition.X
		local _X3 = _L33.AbsoluteSize.X
		local _RX = math.clamp((_X1 - _X2) / _X3, 0, 1)
		_L34.Size = UDim2.new(_RX, 0, 1, 0)
		_L45 = _RX
		_L32.Text = "قوة الأيم أسست (السلاسة): " .. math.floor(_RX * 100) .. "%"
	end
	_L33.InputBegan:Connect(function(_I2)
		if _I2.UserInputType == Enum.UserInputType.MouseButton1 or _I2.UserInputType == Enum.UserInputType.Touch then
			_L48 = true
			_US(_I2)
		end
	end)
	_L2.InputEnded:Connect(function(_I3)
		if _I3.UserInputType == Enum.UserInputType.MouseButton1 or _I3.UserInputType == Enum.UserInputType.Touch then
			_L48 = false
		end
	end)
	_L2.InputChanged:Connect(function(_I4)
		if _L48 and (_I4.UserInputType == Enum.UserInputType.MouseMovement or _I4.UserInputType == Enum.UserInputType.Touch) then
			_US(_I4)
		end
	end)
	local function _CE(_C)
		if not _C then return end
		if _C:FindFirstChild("OsaESP_Highlight") then _C.OsaESP_Highlight:Destroy() end
		if _C:FindFirstChild("Head") and _C.Head:FindFirstChild("OsaHealthGui") then _C.Head.OsaHealthGui:Destroy() end
	end
	local function _AE(_C)
		if not _C or not _L44 then return end
		_CE(_C)
		local _H = Instance.new("Highlight")
		_H.Name = "OsaESP_Highlight"
		_H.Adornee = _C
		_H.FillColor = Color3.fromRGB(0, 102, 255)
		_H.FillTransparency = 0.35
		_H.OutlineColor = Color3.fromRGB(255, 255, 255)
		_H.OutlineTransparency = 0
		_H.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		_H.Parent = _C
		local _Hd = _C:FindFirstChild("Head")
		local _Hm = _C:FindFirstChildOfClass("Humanoid")
		if _Hd and _Hm then
			local _B = Instance.new("BillboardGui")
			_B.Name = "OsaHealthGui"
			_B.Adornee = _Hd
			_B.Size = UDim2.new(0, 55, 0, 11)
			_B.StudsOffset = Vector3.new(0, 3.5, 0)
			_B.AlwaysOnTop = true
			_B.Parent = _Hd
			local _Bf = Instance.new("Frame")
			_Bf.Size = UDim2.new(1, 0, 1, 0)
			_Bf.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
			_Bf.BorderSizePixel = 0
			_Bf.Parent = _B
			Instance.new("UICorner", _Bf).CornerRadius = UDim.new(0, 3)
			local _Hf = Instance.new("Frame")
			_Hf.Size = UDim2.new(math.clamp(_Hm.Health / _Hm.MaxHealth, 0, 1), 0, 1, 0)
			_Hf.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
			_Hf.BorderSizePixel = 0
			_Hf.Parent = _Bf
			Instance.new("UICorner", _Hf).CornerRadius = UDim.new(0, 3)
			local _Ht = Instance.new("TextLabel")
			_Ht.Size = UDim2.new(1, 0, 1, 0)
			_Ht.BackgroundTransparency = 1
			_Ht.Text = math.floor(_Hm.Health) .. " HP"
			_Ht.TextColor3 = Color3.fromRGB(255, 255, 255)
			_Ht.TextSize = 9
			_Ht.Font = Enum.Font.GothamBold
			_Ht.ZIndex = 5
			_Ht.Parent = _Bf
			_Hm.HealthChanged:Connect(function(_HP)
				local _P = math.clamp(_HP / _Hm.MaxHealth, 0, 1)
				_Hf.Size = UDim2.new(_P, 0, 1, 0)
				_Ht.Text = math.floor(_HP) .. " HP"
			end)
		end
	end
	local function _UAE()
		for _, _P in ipairs(_L1:GetPlayers()) do
			if _P ~= _L6 and _P.Character then
				if _L44 then _AE(_P.Character) else _CE(_P.Character) end
			end
		end
	end
	local _FC = 0
	local _LT = tick()
	_L3.RenderStepped:Connect(function()
		_FC = _FC + 1
		if tick() - _LT >= 1 then
			_L36.Text = "📊 معدل الإطارات: " .. _FC .. " FPS"
			_FC = 0
			_LT = tick()
		end
	end)
	local function _IV(_TP)
		if not _L42 then return true end
		local _O = _L7.CFrame.Position
		local _D = _TP.Position - _O
		local _RP = RaycastParams.new()
		_RP.FilterType = Enum.RaycastFilterType.Exclude
		local _IG = {}
		if _L6.Character then table.insert(_IG, _L6.Character) end
		if _TP.Parent then table.insert(_IG, _TP.Parent) end
		_RP.FilterDescendantsInstances = _IG
		return _L4.Raycast(_O, _D, _RP) == nil
	end
	local function _GCP()
		local _CP = nil
		local _SD = math.huge
		local _CPos = Vector2.new(_L7.ViewportSize.X / 2, _L7.ViewportSize.Y / 2)
		for _, _P in ipairs(_L1:GetPlayers()) do
			if _P ~= _L6 and _P.Character then
				local _TM = _L43 and _L6.Team and _P.Team and _L6.Team == _P.Team
				if not _TM then
					local _Ch = _P.Character
					local _Hm = _Ch:FindFirstChildOfClass("Humanoid")
					local _RP = _Ch:FindFirstChild("HumanoidRootPart") or _Ch:FindFirstChild("Head")
					if _RP and _Hm and _Hm.Health > 0 then
						local _SP, _On = _L7:WorldToViewportPoint(_RP.Position)
						if _On then
							local _Dist = (Vector2.new(_SP.X, _SP.Y) - _CPos).Magnitude
							if _Dist <= _L38 and _Dist < _SD then
								if _IV(_RP) then
									_SD = _Dist
									_CP = _P
								end
							end
						end
					end
				end
			end
		end
		return _CP
	end
	_L23.MouseButton1Click:Connect(function()
		_L41 = not _L41
		_L24(_L41)
	end)
	_L25.MouseButton1Click:Connect(function()
		_L42 = not _L42
		_L26(_L42)
	end)
	_L27.MouseButton1Click:Connect(function()
		_L43 = not _L43
		_L28(_L43)
	end)
	_L29.MouseButton1Click:Connect(function()
		_L44 = not _L44
		_L30(_L44)
		_UAE()
	end)
	_L3.RenderStepped:Connect(function()
		if _L41 then
			local _CP = _GCP()
			if _CP ~= _L46 then
				_L46 = _CP
				if _L46 and _L46.Character then
					local _BParts = {"Head", "UpperTorso", "HumanoidRootPart"}
					local _VParts = {}
					for _, _N in ipairs(_BParts) do
						local _Pt = _L46.Character:FindFirstChild(_N)
						if _Pt then table.insert(_VParts, _Pt) end
					end
					if #_VParts > 0 then
						_L47 = _VParts[math.random(1, #_VParts)]
					else
						_L47 = _L46.Character:FindFirstChild("Head")
					end
				else
					_L47 = nil
				end
			end
			if _L47 and not _IV(_L47) then
				_L46 = nil
				_L47 = nil
			end
			if _L46 and _L46.Character and _L47 then
				local _CCF = _L7.CFrame
				local _TCF = CFrame.new(_CCF.Position, _L47.Position)
				local _SF = math.clamp(_L45 * 0.25, 0.015, 0.25)
				_L7.CFrame = _CCF:Lerp(_TCF, _SF)
			end
		else
			_L46 = nil
			_L47 = nil
		end
	end)
	_L2.InputBegan:Connect(function(_I5, _GP)
		if _GP then return end
		if _I5.KeyCode == Enum.KeyCode.Q then
			_L41 = not _L41
			_L24(_L41)
		end
		if _I5.KeyCode == Enum.KeyCode.E then
			_L44 = not _L44
			_L30(_L44)
			_UAE()
		end
		if _I5.KeyCode == Enum.KeyCode.G then
			_L10.Visible = not _L10.Visible
		end
	end)
	_L17.MouseButton1Click:Connect(function()
		_L44 = false
		_UAE()
		_L9:Destroy()
	end)
	local _Min = false
	_L18.MouseButton1Click:Connect(function()
		_Min = not _Min
		_L21.Visible = not _Min
		_L19.Visible = not _Min
		_L10.Size = _Min and UDim2.new(0, 390, 0, 50) or UDim2.new(0, 390, 0, 530)
		_L18.Text = _Min and "＋" or "━"
	end)
	local _Hue = 0.58
	_L3.RenderStepped:Connect(function(_Dt)
		_Hue = 0.55 + (math.sin(tick() * 1.5) + 1) * 0.08
		local _BC = Color3.fromHSV(_Hue, 0.9, 1)
		_L11.Color = _BC
		_L16.BackgroundColor3 = _BC
		_L12.ImageColor3 = _BC
		_L13.ImageColor3 = _BC
	end)
end)
