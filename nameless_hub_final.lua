if getgenv().Library then
	getgenv().Library:Unload()
end

local Library
do
	local Workspace = game:GetService("Workspace")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")
	local RunService = game:GetService("RunService")
	local CoreGui = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
	local TweenService = game:GetService("TweenService")
	local Lighting = game:GetService("Lighting")

	gethui = gethui or function() return CoreGui end

	local LocalPlayer = Players.LocalPlayer
	local Camera = Workspace.CurrentCamera
	local Mouse = LocalPlayer:GetMouse()

	local FromRGB = Color3.fromRGB
	local FromHSV = Color3.fromHSV
	local FromHex = Color3.fromHex

	local UDim2New = UDim2.new
	local UDimNew = UDim.new
	local Vector2New = Vector2.new

	local MathClamp = math.clamp
	local MathFloor = math.floor

	local TableInsert = table.insert
	local TableFind = table.find
	local TableRemove = table.remove
	local TableConcat = table.concat
	local TableClone = table.clone
	local TableUnpack = table.unpack

	local StringFormat = string.format
	local StringFind = string.find
	local StringGSub = string.gsub
	local StringLower = string.lower
	local StringLen = string.len

	local InstanceNew = Instance.new

	-- ────────────────────────────────────────────────────────────────
	--  Détection mobile + variables de style adaptées
	-- ────────────────────────────────────────────────────────────────

	local IsMobile = UserInputService.TouchEnabled 
	               and not UserInputService.KeyboardEnabled 
	               and not UserInputService.MouseEnabled

	local SCALE         = IsMobile and 1.35 or 1.00
	local BTN_HEIGHT    = math.floor(26 * SCALE)
	local PAD           = math.floor(8 * SCALE)
	local TEXT_SIZE     = math.floor(14 * SCALE + 0.5)
	local WIN_W         = IsMobile and 360 or 621
	local WIN_H         = IsMobile and 520 or 542
	local SCROLL_THICK  = IsMobile and 8 or 4
	local POPUP_EXTRA_H = IsMobile and 60 or 0

	Library = {
		Theme = {},
		MenuKeybind = tostring(Enum.KeyCode.RightControl),
		Flags = {},
		Tween = { Time = 0.25, Style = Enum.EasingStyle.Quart, Direction = Enum.EasingDirection.Out },
		FadeSpeed = 0.2,
		Folders = { Directory = "uip100", Configs = "uip100/Configs", Assets = "uip100/Assets" },
		Pages = {}, Sections = {}, Connections = {}, Threads = {},
		ThemeMap = {}, ThemeItems = {}, OpenFrames = {},
		SetFlags = {}, UnnamedConnections = 0, UnnamedFlags = 0,
		Holder = nil, NotifHolder = nil, UnusedHolder = nil, KeyList = nil,
		Font = nil, CopiedColor = nil,
		IsMobile = IsMobile
	}

	Library.__index = Library

	-- (le reste de la détection des services, des raccourcis math/string/table, etc. reste identique)

	-- ────────────────────────────────────────────────────────────────
	--  Thème de base (inchangé)
	-- ────────────────────────────────────────────────────────────────

	local Themes = {
		["Preset"] = {
			["Window Outline"] = FromRGB(0, 34, 37),
			["Accent"] = FromRGB(94, 213, 213),
			["Background 1"] = FromRGB(17, 21, 27),
			["Text"] = FromRGB(255, 255, 255),
			["Inline"] = FromRGB(19, 25, 31),
			["Element"] = FromRGB(32, 38, 48),
			["Inactive Text"] = FromRGB(185, 185, 185),
			["Border"] = FromRGB(46, 52, 61),
			["Background 2"] = FromRGB(24, 28, 36)
		}
	}

	Library.Theme = TableClone(Themes["Preset"])

	-- Folders creation (inchangé)
	for Index, Value in Library.Folders do
		if not isfolder(Value) then makefolder(Value) end
	 end

	-- ────────────────────────────────────────────────────────────────
	--  Holder principal (ScreenGui)
	-- ────────────────────────────────────────────────────────────────

	Library.Holder = InstanceNew("ScreenGui")
	Library.Holder.Name = "\0"
	Library.Holder.ZIndexBehavior = Enum.ZIndexBehavior.Global
	Library.Holder.DisplayOrder = 2
	Library.Holder.IgnoreGuiInset = true
	Library.Holder.ResetOnSpawn = false
	Library.Holder.Parent = gethui()

	Library.UnusedHolder = InstanceNew("ScreenGui")
	Library.UnusedHolder.Name = "\0"
	Library.UnusedHolder.ZIndexBehavior = Enum.ZIndexBehavior.Global
	Library.UnusedHolder.Enabled = false
	Library.UnusedHolder.ResetOnSpawn = false
	Library.UnusedHolder.Parent = gethui()

	-- ────────────────────────────────────────────────────────────────
	--  Window (fenêtre principale – tailles adaptées)
	-- ────────────────────────────────────────────────────────────────

	function Library:Window(Data)
		Data = Data or {}

		local Window = {
			Name = Data.Name or "UI Library",
			Logo = Data.Logo or "",
			Pages = {},
			Items = {},
			IsOpen = false
		}

		local Items = {}

		Items.MainFrame = InstanceNew("Frame")
		Items.MainFrame.Name = "\0"
		Items.MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		Items.MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Items.MainFrame.Size = UDim2.new(0, WIN_W, 0, WIN_H)
		Items.MainFrame.BorderSizePixel = 2
		Items.MainFrame.BackgroundColor3 = FromRGB(17, 21, 27)
		Items.MainFrame.Parent = Library.Holder

		Items.MainFrame:AddToTheme({ BackgroundColor3 = "Background 1" })

		-- Draggable + Resize (désactivé sur mobile pour confort)
		local draggingConnection
		Items.MainFrame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local startPos = input.Position
				local startFramePos = Items.MainFrame.Position

				draggingConnection = RunService.RenderStepped:Connect(function()
					local delta = input.Position - startPos
					Items.MainFrame.Position = UDim2.new(
						startFramePos.X.Scale, startFramePos.X.Offset + delta.X,
						startFramePos.Y.Scale, startFramePos.Y.Offset + delta.Y
					)
				end)
			end
		end)

		Items.MainFrame.InputEnded:Connect(function(input)
			if draggingConnection then
				draggingConnection:Disconnect()
				draggingConnection = nil
			end
		end)

		if not IsMobile then
			-- Resize logic (optionnel – on peut le garder ou le virer)
		end

		-- UIStroke principal (glow accent)
		local stroke = InstanceNew("UIStroke", Items.MainFrame)
		stroke.Color = FromRGB(94, 213, 213)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke:AddToTheme({ Color = "Accent" })

		-- Inline frame
		local inline = InstanceNew("Frame", Items.MainFrame)
		inline.Size = UDim2.new(1, -2, 1, -2)
		inline.Position = UDim2.new(0, 1, 0, 1)
		inline.BackgroundTransparency = 1

		local inlineStroke = InstanceNew("UIStroke", inline)
		inlineStroke.Color = FromRGB(0, 34, 37)
		inlineStroke:AddToTheme({ Color = "Window Outline" })

		-- Logo + Title
		local logo = InstanceNew("ImageLabel", inline)
		logo.BackgroundTransparency = 1
		logo.Size = UDim2.new(0, 24, 0, 24)
		logo.Position = UDim2.new(0, PAD, 0, PAD)
		logo.Image = "rbxassetid://" .. (Window.Logo or "0")

		local title = InstanceNew("TextLabel", inline)
		title.BackgroundTransparency = 1
		title.FontFace = Library.Font
		title.Text = Window.Name
		title.TextColor3 = FromRGB(255,255,255)
		title.TextSize = TEXT_SIZE
		title.Position = UDim2.new(0, 38, 0, PAD)
		title.AutomaticSize = Enum.AutomaticSize.X
		title:AddToTheme({ TextColor3 = "Text" })

		-- Content area
		local content = InstanceNew("Frame", inline)
		content.Name = "\0"
		content.BackgroundTransparency = 1
		content.Position = UDim2.new(0, PAD, 0, 38)
		content.Size = UDim2.new(1, -PAD*2, 1, -46)
		content.ClipsDescendants = true

		-- Glow global (inchangé)
		local glow = InstanceNew("ImageLabel", Items.MainFrame)
		glow.Name = "\0"
		glow.Image = "rbxassetid://18245826428"
		glow.ImageColor3 = FromRGB(94, 213, 213)
		glow.ImageTransparency = 0.5
		glow.ScaleType = Enum.ScaleType.Slice
		glow.SliceCenter = Rect.new(21,21,79,79)
		glow.Size = UDim2.new(1, 50, 1, 50)
		glow.Position = UDim2.new(0.5,0,0.5,0)
		glow.AnchorPoint = Vector2.new(0.5,0.5)
		glow.BackgroundTransparency = 1
		glow.ZIndex = -1
		glow:AddToTheme({ ImageColor3 = "Accent" })

		Window.Items = Items

		-- (le reste de la logique de Window, SetOpen, connexion keybind menu, etc. reste identique à ton code original)

		return setmetatable(Window, Library)
	end

	-- ────────────────────────────────────────────────────────────────
	--  Exemple rapide d'adaptation d'un Toggle (même principe pour les autres)
	-- ────────────────────────────────────────────────────────────────

	function Library.Sections:Toggle(Data)
		-- ... logique inchangée ...

		local toggleBtn = InstanceNew("TextButton")
		toggleBtn.Size = UDim2.new(1, 0, 0, BTN_HEIGHT + 8)
		toggleBtn.BackgroundTransparency = 1

		local indicator = InstanceNew("Frame", toggleBtn)
		indicator.Size = UDim2.new(0, 20*SCALE, 0, 20*SCALE)
		indicator.BackgroundColor3 = FromRGB(32, 38, 48)
		indicator:AddToTheme({ BackgroundColor3 = "Element" })

		-- ... suite du toggle comme dans ton code original ...

		-- Seul la hauteur et l'échelle changent
	end

	-- Même logique pour Button, Slider, Textbox, Dropdown, Colorpicker, Keybind :
	-- → Hauteur = BTN_HEIGHT + marge
	-- → TextSize = TEXT_SIZE
	-- → Padding = PAD
	-- → ScrollBarThickness = SCROLL_THICK
	-- → Positionnement popup = AbsolutePosition + offset adapté mobile

	-- ────────────────────────────────────────────────────────────────
	--  Fin du code – le reste (colorpicker, dropdown, keybind, notification, etc.)
	--  suit exactement le même principe d'adaptation de tailles
	-- ────────────────────────────────────────────────────────────────

	getgenv().Library = Library
	return Library
end
