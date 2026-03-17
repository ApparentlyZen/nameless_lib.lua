-- █▀▀ ▄▀█ █░░ ▄▀█ █▀▀ ▀█▀ █ █▀▀   █▀▄ █░█ █▀▄▀█ █▀█ █▀▀ █▀█
-- █▄█ █▀█ █▄▄ █▀█ █▄▄ ░█░ █ █▄▄   █▄▀ █▄█ █░▀░█ █▀▀ ██▄ █▀▄
-- Version v1.7.5
-- https://discord.gg/qy2neXET6W

local fenv = getfenv()
local env = _G
local Players = game:GetService('Players')
local Lighting = game:GetService('Lighting')
local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')
local Workspace = game:GetService('Workspace')
local TweenService = game:GetService('TweenService')
local SoundService = game:GetService('SoundService')
local StarterGui = game:GetService('StarterGui')
local v12 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local TeleportService = game:GetService('TeleportService')
local Debris = game:GetService('Debris')
local v15 = settings()
local blureffect_604 = Instance.new("BlurEffect")

blureffect_604.Name = "VenusBlur"
blureffect_604.Size = 0
blureffect_604.Enabled = false
blureffect_604.Parent = blureffect_604
local screengui_353 = Instance.new("ScreenGui")

screengui_353.Name = "UniversHubLoading"
screengui_353.ResetOnSpawn = false
screengui_353.IgnoreGuiInset = true
screengui_353.Parent = screengui_353
local videoframe_253 = Instance.new("VideoFrame")

videoframe_253.Name = "DarkBackground"
videoframe_253.Size = UDim2.fromScale(1, 1)
videoframe_253.Video = "rbxassetid://5670799859"
videoframe_253.Looped = true
videoframe_253.Playing = true
videoframe_253.Volume = 0
videoframe_253.BorderSizePixel = 0
videoframe_253.BackgroundTransparency = 1
videoframe_253.Parent = videoframe_253
local frame_160 = Instance.new("Frame")

frame_160.Name = "CenterContainer"
frame_160.Size = UDim2.new(0.6, 0, 0.5, 0)
frame_160.Position = UDim2.new(0.5, 0, 0.5, 0)
frame_160.AnchorPoint = Vector2.new(0.5, 0.5)
frame_160.BackgroundTransparency = 1
frame_160.Parent = frame_160
local textlabel_864 = Instance.new("TextLabel")

textlabel_864.Size = UDim2.new(1, 0, 0.2, 0)
textlabel_864.Position = UDim2.new(0.5, 0, 0.5, 0)
textlabel_864.AnchorPoint = Vector2.new(0.5, 0.5)
textlabel_864.BackgroundTransparency = 1
textlabel_864.Text = "loading config..."
textlabel_864.TextColor3 = Color3.fromRGB(255, 255, 255)
textlabel_864.TextSize = 0
textlabel_864.Font = Font.Highway
textlabel_864.Parent = textlabel_864
textlabel_864.TextTransparency = 1
local textlabel_509 = Instance.new("TextLabel")

textlabel_509.Size = UDim2.new(1, 0, 0.15, 0)
textlabel_509.Position = UDim2.new(0.5, 0, 0.15, 0)
textlabel_509.AnchorPoint = Vector2.new(0.5, 0.5)
textlabel_509.BackgroundTransparency = 1
textlabel_509.Text = "loading config0/10"
textlabel_509.TextColor3 = Color3.fromRGB(255, 255, 255)
textlabel_509.TextSize = 26
textlabel_509.Font = Font.Highway
textlabel_509.Parent = textlabel_509
textlabel_509.Visible = false
textlabel_509.TextTransparency = 1
local frame_456 = Instance.new("Frame")

frame_456.Size = UDim2.new(0.6, 0, 0.1, 0)
frame_456.Position = UDim2.new(0.5, 0, 0.5, 0)
frame_456.AnchorPoint = Vector2.new(0.5, 0.5)
frame_456.BackgroundTransparency = 1
frame_456.Parent = frame_456
frame_456.Visible = false
local uilistlayout_61 = Instance.new("UIListLayout")

uilistlayout_61.FillDirection = Enum.FillDirection.Horizontal
uilistlayout_61.HorizontalAlignment = Enum.HorizontalAlignment.Center
uilistlayout_61.VerticalAlignment = Enum.VerticalAlignment.Center
uilistlayout_61.Padding = UDim.new(0, 8)
local frame_169 = Instance.new("Frame")

frame_169.Size = UDim2.new(0, 50, 0, 50)
frame_169.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame_169.BackgroundTransparency = 1
frame_169.Parent = frame_169
local frame_545 = Instance.new("Frame")

frame_545.Size = UDim2.new(0, 50, 0, 50)
frame_545.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame_545.BackgroundTransparency = 1
frame_545.Parent = frame_545
local frame_285 = Instance.new("Frame")

frame_285.Size = UDim2.new(0, 50, 0, 50)
frame_285.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame_285.BackgroundTransparency = 1
frame_285.Parent = frame_285
local frame_461 = Instance.new("Frame")

frame_461.Size = UDim2.new(0, 50, 0, 50)
frame_461.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame_461.BackgroundTransparency = 1
frame_461.Parent = frame_461
local frame_705 = Instance.new("Frame")

frame_705.Size = UDim2.new(0, 50, 0, 50)
frame_705.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame_705.BackgroundTransparency = 1
frame_705.Parent = frame_705
local frame_169 = Instance.new("Frame")

frame_169.Size = UDim2.new(0, 50, 0, 50)
frame_169.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame_169.BackgroundTransparency = 1
frame_169.Parent = frame_169
local textlabel_475 = Instance.new("TextLabel")

textlabel_475.Size = UDim2.new(0, 50, 0, 50)
textlabel_475.Position = UDim2.new(0.5, 0, 0.5, 0)
textlabel_475.AnchorPoint = Vector2.new(1, 0.5)
textlabel_475.BackgroundTransparency = 1
textlabel_475.Text = "『"
textlabel_475.TextColor3 = Color3.fromRGB(255, 255, 255)
textlabel_475.TextSize = 65
textlabel_475.Font = Font.Highway
textlabel_475.TextTransparency = 1
local textlabel_240 = Instance.new("TextLabel")

textlabel_240.Size = UDim2.new(0, 50, 0, 50)
textlabel_240.Position = UDim2.new(0.5, 0, 0.5, 0)
textlabel_240.AnchorPoint = Vector2.new(0, 0.5)
textlabel_240.BackgroundTransparency = 1
textlabel_240.Text = "』"
textlabel_240.TextColor3 = Color3.fromRGB(255, 255, 255)
textlabel_240.TextSize = 65
textlabel_240.Font = Font.Highway
textlabel_240.TextTransparency = 1
local textbutton_123 = Instance.new("TextButton")

textbutton_123.Name = "SkipButton"
textbutton_123.Size = UDim2.new(0, 80, 0, 30)
textbutton_123.Position = UDim2.new(0.5, 0, 0.75, 0)
textbutton_123.AnchorPoint = Vector2.new(0.5, 0.5)
textbutton_123.BackgroundTransparency = 1
textbutton_123.Text = "「skip」"
textbutton_123.TextColor3 = Color3.fromRGB(255, 255, 255)
textbutton_123.TextSize = 30
textbutton_123.Font = Font.Highway
textbutton_123.TextTransparency = 1
textbutton_123.Visible = false
local sound_418 = Instance.new("Sound")

sound_418.Name = "LoadingMusic"
sound_418.SoundId = "rbxassetid://15930255433"
sound_418.Volume = 0.5
sound_418.Looped = true
sound_418.Parent = sound_418
local screengui_950 = Instance.new("ScreenGui")

screengui_950.Name = "VenusHubSingle"
screengui_950.ResetOnSpawn = false
screengui_950.IgnoreGuiInset = true
screengui_950.Parent = screengui_950
local imagebutton_947 = Instance.new("ImageButton")

imagebutton_947.Name = "VenusLauncher"
imagebutton_947.Size = UDim2.new(0, 56, 0, 56)
imagebutton_947.Position = UDim2.new(0.02, 0, 1, -66)
imagebutton_947.AnchorPoint = Vector2.new(0, 1)
imagebutton_947.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
imagebutton_947.BorderSizePixel = 0
imagebutton_947.Image = "rbxassetid://135187475680901"
local uicorner_919 = Instance.new("UICorner")

uicorner_919.CornerRadius = UDim.new(0, 28)
uicorner_919.Parent = uicorner_919
local uistroke_529 = Instance.new("UIStroke")

uistroke_529.Thickness = 1
uistroke_529.Color = Color3.fromRGB(158, 56, 255)
uistroke_529.Transparency = 0
uistroke_529.Parent = uistroke_529
imagebutton_947.Visible = false
textbutton_123.MouseButton1Click:Connect(function(h, b)
    local v1 = StarterGui:SetCore("SendNotification", {
    Text = "✅ Script Graphics successfully loaded.",
    Duration = 5,
    Title = "UniversHub by bao9002"
})
    local v2 = StarterGui:SetCore("SendNotification", {
    Text = "https://github.com/Uranus197",
    Duration = 5,
    Title = "INFORMATION ABOUT ME🚀"
})
    local v3 = TweenService:Create(TweenService, {}, TweenInfo.new(1), {
    Volume = 0
})
    local v4 = v3:Play()
    local v5 = TweenService:Create(TweenService, {}, TweenInfo.new(1), {
    BackgroundTransparency = 1
})
end)
coroutine.wrap(function(h)
    local v1 = TweenService:Create(TweenService, {}, TweenInfo.new(1), {
    BackgroundTransparency = 0
})
    local v2 = v1:Play()
    local v3 = v1.Completed:Wait()
    task.wait(0.5)
    local v5 = sound_418.Play({})
    textlabel_475.TextTransparency = 0
    textlabel_240.TextTransparency = 0
    local v8 = TweenService:Create(TweenService, {}, TweenInfo.new(0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, -180, 0.5, 0)
})
    local v9 = v8:Play()
    local v10 = TweenService:Create(TweenService, {}, TweenInfo.new(0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, 180, 0.5, 0)
})
    local v11 = v10:Play()
    local v12 = v10.Completed:Wait()
    textlabel_864.TextSize = 0
    textlabel_864.TextTransparency = 0
    local v15 = TweenService:Create(TweenService, {}, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    TextSize = 48
})
    local v16 = v15:Play()
    local v17 = v15.Completed:Wait()
    task.wait(0.3)
    local v19 = TweenService:Create(TweenService, {}, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
    Position = UDim2.new(0.5, 0, 0.15, 0),
    TextSize = 26
})
    local v20 = v19:Play()
    task.wait(0.5)
    textlabel_864.Visible = false
    textlabel_509.Visible = true
    textlabel_509.TextTransparency = 0
    frame_456.Visible = true
    textbutton_123.Visible = true
    local v27 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    TextTransparency = 0
})
    textbutton_123.Size = UDim2.new(0, 180, 0, 50)
    local v29 = v27:Play()
    task.wait(0.3)
    local v31 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
    TextTransparency = 0.5
})
    local v32 = v31:Play()
    local v33 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
    TextTransparency = 0.5
})
    local v34 = v33:Play()
    textlabel_509.Text = "loading config10/10"
    local v36 = v33.Cancel(v33)
    textlabel_509.TextTransparency = 0
    textlabel_509.Text = "complete"
    task.wait(0.5)
    local v40 = v31.Cancel(v31)
    local v41 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {
    TextTransparency = 1
})
    local v42 = v41:Play()
    local v43 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    BackgroundTransparency = 1
})
    local v44 = v43:Play()
    local v45 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    BackgroundTransparency = 1
})
    local v46 = v45:Play()
    local v47 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    BackgroundTransparency = 1
})
    local v48 = v47:Play()
    local v49 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    BackgroundTransparency = 1
})
    local v50 = v49:Play()
    local v51 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    BackgroundTransparency = 1
})
    local v52 = v51:Play()
    local v53 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    BackgroundTransparency = 1
})
    local v54 = v53:Play()
    local v55 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    TextTransparency = 1
})
    local v56 = v55:Play()
    local v57 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    TextTransparency = 1
})
    local v58 = v57:Play()
    local v59 = TweenService:Create(TweenService, {}, v41.TweenInfo, {
    TextTransparency = 1
})
    local v60 = v59:Play()
    task.wait(0.5)
    local v62 = frame_160.Destroy({})
    local imagelabel_503 = Instance.new("ImageLabel")

    imagelabel_503.Size = UDim2.fromScale(0.22, 0.22)
    imagelabel_503.Position = UDim2.fromScale(0.5, 0.5)
    imagelabel_503.AnchorPoint = Vector2.new(0.5, 0.5)
    imagelabel_503.BackgroundTransparency = 1
    imagelabel_503.Image = "rbxassetid://133736456706911"
    imagelabel_503.Rotation = 10
    imagelabel_503.ZIndex = 3
    local uiaspectratioconstraint_179 = Instance.new("UIAspectRatioConstraint")

    uiaspectratioconstraint_179.AspectRatio = 1
    local uicorner_632 = Instance.new("UICorner")

    uicorner_632.CornerRadius = UDim.new(0.25, 0)
    local uistroke_107 = Instance.new("UIStroke")

    uistroke_107.Color = Color3.fromRGB(255, 255, 255)
    uistroke_107.Thickness = 1.5
    uistroke_107.Transparency = 0.6
    local frame_531 = Instance.new("Frame")

    frame_531.Size = UDim2.fromScale(0.6, 0.25)
    frame_531.Position = UDim2.fromScale(0.65, 0.5)
    frame_531.AnchorPoint = Vector2.new(0.5, 0.5)
    frame_531.BackgroundTransparency = 1
    local textlabel_884 = Instance.new("TextLabel")

    textlabel_884.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_884.Position = UDim2.fromScale(0.0, 0.5)
    textlabel_884.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_884.BackgroundTransparency = 1
    textlabel_884.Text = "U"
    textlabel_884.Font = Font.GothamBold
    textlabel_884.TextScaled = true
    textlabel_884.TextColor3 = Color3.new(1, 1, 1)
    textlabel_884.TextTransparency = 1
    local textlabel_267 = Instance.new("TextLabel")

    textlabel_267.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_267.Position = UDim2.fromScale(0.055, 0.5)
    textlabel_267.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_267.BackgroundTransparency = 1
    textlabel_267.Text = "n"
    textlabel_267.Font = Font.GothamBold
    textlabel_267.TextScaled = true
    textlabel_267.TextColor3 = Color3.new(1, 1, 1)
    textlabel_267.TextTransparency = 1
    local textlabel_396 = Instance.new("TextLabel")

    textlabel_396.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_396.Position = UDim2.fromScale(0.11, 0.5)
    textlabel_396.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_396.BackgroundTransparency = 1
    textlabel_396.Text = "i"
    textlabel_396.Font = Font.GothamBold
    textlabel_396.TextScaled = true
    textlabel_396.TextColor3 = Color3.new(1, 1, 1)
    textlabel_396.TextTransparency = 1
    local textlabel_393 = Instance.new("TextLabel")

    textlabel_393.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_393.Position = UDim2.fromScale(0.165, 0.5)
    textlabel_393.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_393.BackgroundTransparency = 1
    textlabel_393.Text = "v"
    textlabel_393.Font = Font.GothamBold
    textlabel_393.TextScaled = true
    textlabel_393.TextColor3 = Color3.new(1, 1, 1)
    textlabel_393.TextTransparency = 1
    local textlabel_723 = Instance.new("TextLabel")

    textlabel_723.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_723.Position = UDim2.fromScale(0.22, 0.5)
    textlabel_723.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_723.BackgroundTransparency = 1
    textlabel_723.Text = "e"
    textlabel_723.Font = Font.GothamBold
    textlabel_723.TextScaled = true
    textlabel_723.TextColor3 = Color3.new(1, 1, 1)
    textlabel_723.TextTransparency = 1
    local textlabel_456 = Instance.new("TextLabel")

    textlabel_456.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_456.Position = UDim2.fromScale(0.275, 0.5)
    textlabel_456.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_456.BackgroundTransparency = 1
    textlabel_456.Text = "r"
    textlabel_456.Font = Font.GothamBold
    textlabel_456.TextScaled = true
    textlabel_456.TextColor3 = Color3.new(1, 1, 1)
    textlabel_456.TextTransparency = 1
    local textlabel_562 = Instance.new("TextLabel")

    textlabel_562.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_562.Position = UDim2.fromScale(0.33, 0.5)
    textlabel_562.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_562.BackgroundTransparency = 1
    textlabel_562.Text = "s"
    textlabel_562.Font = Font.GothamBold
    textlabel_562.TextScaled = true
    textlabel_562.TextColor3 = Color3.new(1, 1, 1)
    textlabel_562.TextTransparency = 1
    local textlabel_268 = Instance.new("TextLabel")

    textlabel_268.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_268.Position = UDim2.fromScale(0.385, 0.5)
    textlabel_268.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_268.BackgroundTransparency = 1
    textlabel_268.Text = "H"
    textlabel_268.Font = Font.GothamBold
    textlabel_268.TextScaled = true
    textlabel_268.TextColor3 = Color3.new(1, 1, 1)
    textlabel_268.TextTransparency = 1
    local textlabel_741 = Instance.new("TextLabel")

    textlabel_741.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_741.Position = UDim2.fromScale(0.44, 0.5)
    textlabel_741.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_741.BackgroundTransparency = 1
    textlabel_741.Text = "u"
    textlabel_741.Font = Font.GothamBold
    textlabel_741.TextScaled = true
    textlabel_741.TextColor3 = Color3.new(1, 1, 1)
    textlabel_741.TextTransparency = 1
    local textlabel_24 = Instance.new("TextLabel")

    textlabel_24.Size = UDim2.fromScale(0.085, 0.6)
    textlabel_24.Position = UDim2.fromScale(0.495, 0.5)
    textlabel_24.AnchorPoint = Vector2.new(0.5, 0.5)
    textlabel_24.BackgroundTransparency = 1
    textlabel_24.Text = "b"
    textlabel_24.Font = Font.GothamBold
    textlabel_24.TextScaled = true
    textlabel_24.TextColor3 = Color3.new(1, 1, 1)
    textlabel_24.TextTransparency = 1
    local textbutton_973 = Instance.new("TextButton")

    textbutton_973.Size = UDim2.fromScale(0.18, 0.07)
    textbutton_973.Position = UDim2.fromScale(0.5, 0.72)
    textbutton_973.AnchorPoint = Vector2.new(0.5, 0.5)
    textbutton_973.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    textbutton_973.Text = "【 PLAY 】"
    textbutton_973.Font = Font.GothamBold
    textbutton_973.TextScaled = true
    textbutton_973.TextColor3 = Color3.new(1, 1, 1)
    textbutton_973.TextTransparency = 1
    textbutton_973.BackgroundTransparency = 1
    local uicorner_909 = Instance.new("UICorner")

    uicorner_909.CornerRadius = UDim.new(0.4, 0)
    textbutton_973.MouseEnter:Connect(function(h, b, u)
    local v1 = TweenService:Create(TweenService, {}, TweenInfo.new(0.2), {
    Size = UDim2.fromScale(0.19, 0.075),
    BackgroundColor3 = Color3.fromRGB(45, 45, 45)
})
    local v2 = v1:Play()
end)
    textbutton_973.MouseLeave:Connect(function(arg1, arg2)
    local v1 = TweenService:Create(TweenService, {}, TweenInfo.new(0.2), {
    Size = UDim2.fromScale(0.18, 0.07),
    BackgroundColor3 = Color3.fromRGB(30, 30, 30)
})
    local v2 = v1:Play()
end)
    textbutton_973.MouseButton1Click:Connect(function(h, b, u, X, O)
    local v1 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    BackgroundTransparency = 1,
    TextTransparency = 1
})
    local v2 = v1:Play()
    local v3 = TweenService:Create(TweenService, {}, TweenInfo.new(0.4), {
    Size = UDim2.fromScale(0, 0),
    ImageTransparency = 1
})
    local v4 = v3:Play()
    local v5 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v6 = v5:Play()
    local v7 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v8 = v7:Play()
    local v9 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v10 = v9:Play()
    local v11 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v12 = v11:Play()
    local v13 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v14 = v13:Play()
    local v15 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v16 = v15:Play()
    local v17 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v18 = v17:Play()
    local v19 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v20 = v19:Play()
    local v21 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v22 = v21:Play()
    local v23 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    TextTransparency = 1
})
    local v24 = v23:Play()
    task.wait(0.4)
    local v26 = StarterGui:SetCore("SendNotification", {
    Text = "✅ Script Graphics successfully loaded.",
    Duration = 5,
    Title = "UniversHub by bao9002"
})
    local v27 = StarterGui:SetCore("SendNotification", {
    Text = "https://github.com/Uranus197",
    Duration = 5,
    Title = "INFORMATION ABOUT ME🚀"
})
    local v28 = TweenService:Create(TweenService, {}, TweenInfo.new(1), {
    Volume = 0
})
    local v29 = v28:Play()
    local v30 = TweenService:Create(TweenService, {}, TweenInfo.new(1), {
    BackgroundTransparency = 1
})
end)
    task.spawn(function(arg1, arg2)
    local v2 = TweenService:Create(TweenService, {}, TweenInfo.new(0.8, Enum.EasingStyle.Linear), {
    Rotation = imagelabel_503.Rotation + 360
})
    local v3 = v2:Play()
    local v4 = v2.Completed:Wait()
    local v5 = TweenService:Create(TweenService, {}, TweenInfo.new(0.6, Enum.EasingStyle.Quart), {
    Position = UDim2.fromScale(0.25, 0.5)
})
    local v6 = v5:Play()
    task.wait(0.25)
    textlabel_884.Position = textlabel_884.Position - UDim2.fromScale(0, 0.08)
    local textlabel_884_targetPos = textlabel_884.Position + UDim2.fromScale(0, 0.08)
    local v11 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_267_targetPos,
    TextTransparency = 0
})
    local v12 = v11:Play()
    task.wait(0.05)
    textlabel_267.Position = textlabel_267.Position - UDim2.fromScale(0, 0.08)
    local textlabel_267_targetPos = textlabel_267.Position + UDim2.fromScale(0, 0.08)
    local v17 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_396_targetPos,
    TextTransparency = 0
})
    local v18 = v17:Play()
    task.wait(0.05)
    textlabel_396.Position = textlabel_396.Position - UDim2.fromScale(0, 0.08)
    local textlabel_396_targetPos = textlabel_396.Position + UDim2.fromScale(0, 0.08)
    local v23 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_393_targetPos,
    TextTransparency = 0
})
    local v24 = v23:Play()
    task.wait(0.05)
    textlabel_393.Position = textlabel_393.Position - UDim2.fromScale(0, 0.08)
    local textlabel_393_targetPos = textlabel_393.Position + UDim2.fromScale(0, 0.08)
    local v29 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_723_targetPos,
    TextTransparency = 0
})
    local v30 = v29:Play()
    task.wait(0.05)
    textlabel_723.Position = textlabel_723.Position - UDim2.fromScale(0, 0.08)
    local textlabel_723_targetPos = textlabel_723.Position + UDim2.fromScale(0, 0.08)
    local v35 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_456_targetPos,
    TextTransparency = 0
})
    local v36 = v35:Play()
    task.wait(0.05)
    textlabel_456.Position = textlabel_456.Position - UDim2.fromScale(0, 0.08)
    local textlabel_456_targetPos = textlabel_456.Position + UDim2.fromScale(0, 0.08)
    local v41 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_562_targetPos,
    TextTransparency = 0
})
    local v42 = v41:Play()
    task.wait(0.05)
    textlabel_562.Position = textlabel_562.Position - UDim2.fromScale(0, 0.08)
    local textlabel_562_targetPos = textlabel_562.Position + UDim2.fromScale(0, 0.08)
    local v47 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_268_targetPos,
    TextTransparency = 0
})
    local v48 = v47:Play()
    task.wait(0.05)
    textlabel_268.Position = textlabel_268.Position - UDim2.fromScale(0, 0.08)
    local textlabel_268_targetPos = textlabel_268.Position + UDim2.fromScale(0, 0.08)
    local v53 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_741_targetPos,
    TextTransparency = 0
})
    local v54 = v53:Play()
    task.wait(0.05)
    textlabel_741.Position = textlabel_741.Position - UDim2.fromScale(0, 0.08)
    local textlabel_741_targetPos = textlabel_741.Position + UDim2.fromScale(0, 0.08)
    local v59 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_24_targetPos,
    TextTransparency = 0
})
    local v60 = v59:Play()
    task.wait(0.05)
    textlabel_24.Position = textlabel_24.Position - UDim2.fromScale(0, 0.08)
    local textlabel_24_targetPos = textlabel_24.Position + UDim2.fromScale(0, 0.08)
    local v65 = TweenService:Create(TweenService, {}, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
    Position = textlabel_24_targetPos,
    TextTransparency = 0
})
    local v66 = v65:Play()
    task.wait(0.05)
    task.wait(0.3)
    local v69 = TweenService:Create(TweenService, {}, TweenInfo.new(0.5), {
    TextTransparency = 0,
    BackgroundTransparency = 0
})
    local v70 = v69:Play()
    task.wait(0.3)
end)
end)
imagebutton_947.InputBegan:Connect(function(h, b, u, X)
end)
local frame_559 = Instance.new("Frame")

frame_559.Name = "VenusMain"
frame_559.Size = UDim2.new(0, 380, 0, 320)
frame_559.Position = UDim2.new(0.5, -190, 0.5, -160)
frame_559.AnchorPoint = Vector2.new(0, 0)
frame_559.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
frame_559.BorderSizePixel = 0
local uicorner_760 = Instance.new("UICorner")

uicorner_760.CornerRadius = UDim.new(0, 12)
uicorner_760.Parent = uicorner_760
local uistroke_522 = Instance.new("UIStroke")

uistroke_522.Thickness = 1.5
uistroke_522.Color = Color3.fromRGB(158, 56, 255)
uistroke_522.Transparency = 0
uistroke_522.Parent = uistroke_522
frame_559.Visible = false
frame_559.ClipsDescendants = true
frame_559.Size = UDim2.new(0, 0, 0, 0)
local imagelabel_665 = Instance.new("ImageLabel")

imagelabel_665.Size = UDim2.new(1, 0, 1, 0)
imagelabel_665.Position = UDim2.new(0, 0, 0, 0)
imagelabel_665.BackgroundTransparency = 1
imagelabel_665.ImageTransparency = 0.8
imagelabel_665.ZIndex = 1
local frame_292 = Instance.new("Frame")

frame_292.Size = UDim2.new(1, -12, 1, -12)
frame_292.Position = UDim2.new(0, 6, 0, 6)
frame_292.BackgroundTransparency = 1
frame_292.ZIndex = 2
frame_559.InputBegan:Connect(function(h, b)
end)
local frame_406 = Instance.new("Frame")

frame_406.Size = UDim2.new(1, 0, 0, 44)
frame_406.Position = UDim2.new(0, 0, 0, 0)
frame_406.BackgroundTransparency = 1
local imagelabel_932 = Instance.new("ImageLabel")

imagelabel_932.Size = UDim2.new(0, 24, 0, 24)
imagelabel_932.Position = UDim2.new(0, 8, 0.5, -12)
imagelabel_932.BackgroundTransparency = 1
imagelabel_932.Image = "rbxassetid://114584661024711"
imagelabel_932.ZIndex = 3
local textlabel_688 = Instance.new("TextLabel")

textlabel_688.Size = UDim2.new(1, -120, 1, 0)
textlabel_688.Position = UDim2.new(0, 38, 0, 0)
textlabel_688.BackgroundTransparency = 1
textlabel_688.Text = "Univers Hub | Graphics script"
textlabel_688.TextColor3 = Color3.fromRGB(240, 240, 250)
textlabel_688.Font = Font.GothamBold
textlabel_688.TextSize = 16
textlabel_688.TextXAlignment = Enum.TextXAlignment.Left
local imagelabel_799 = Instance.new("ImageLabel")

imagelabel_799.Size = UDim2.new(0, 24, 0, 24)
imagelabel_799.Position = UDim2.new(0, 245, 0.5, -12)
imagelabel_799.BackgroundTransparency = 1
imagelabel_799.Image = "rbxassetid://71607909219378"
imagelabel_799.ZIndex = 3
local textbutton_655 = Instance.new("TextButton")

textbutton_655.Size = UDim2.new(0, 28, 0, 28)
textbutton_655.Position = UDim2.new(1, -72, 0.5, -14)
textbutton_655.Text = "—"
textbutton_655.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
textbutton_655.TextColor3 = Color3.fromRGB(250, 250, 250)
local uicorner_144 = Instance.new("UICorner")

uicorner_144.CornerRadius = UDim.new(0, 6)
uicorner_144.Parent = uicorner_144
local uistroke_361 = Instance.new("UIStroke")

uistroke_361.Thickness = 1
uistroke_361.Color = Color3.fromRGB(28, 16, 48)
uistroke_361.Transparency = 0
uistroke_361.Parent = uistroke_361
local textbutton_923 = Instance.new("TextButton")

textbutton_923.Size = UDim2.new(0, 28, 0, 28)
textbutton_923.Position = UDim2.new(1, -40, 0.5, -14)
textbutton_923.Text = "X"
textbutton_923.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
textbutton_923.TextColor3 = Color3.fromRGB(250, 250, 250)
local uicorner_885 = Instance.new("UICorner")

uicorner_885.CornerRadius = UDim.new(0, 6)
uicorner_885.Parent = uicorner_885
local uistroke_384 = Instance.new("UIStroke")

uistroke_384.Thickness = 1
uistroke_384.Color = Color3.fromRGB(28, 16, 48)
uistroke_384.Transparency = 0
uistroke_384.Parent = uistroke_384
local frame_896 = Instance.new("Frame")

frame_896.Name = "UniversTopBar"
frame_896.Size = UDim2.new(0, 320, 0, 45)
frame_896.Position = UDim2.new(0.5, -160, 0, 10)
frame_896.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
frame_896.Visible = false
local uicorner_794 = Instance.new("UICorner")

uicorner_794.CornerRadius = UDim.new(0, 10)
uicorner_794.Parent = uicorner_794
local uistroke_882 = Instance.new("UIStroke")

uistroke_882.Thickness = 1
uistroke_882.Color = Color3.fromRGB(158, 56, 255)
uistroke_882.Transparency = 0
uistroke_882.Parent = uistroke_882
local imagelabel_110 = Instance.new("ImageLabel")

imagelabel_110.Size = UDim2.new(0, 35, 0, 35)
imagelabel_110.Position = UDim2.new(0, 5, 0.5, -17.5)
imagelabel_110.BackgroundTransparency = 1
imagelabel_110.Image = "rbxassetid://112179445825929"
local textlabel_826 = Instance.new("TextLabel")

textlabel_826.Size = UDim2.new(0, 150, 0, 20)
textlabel_826.Position = UDim2.new(0, 45, 0, 2)
textlabel_826.BackgroundTransparency = 1
textlabel_826.Text = "UniversHub [Graphics]"
textlabel_826.TextColor3 = Color3.fromRGB(240, 240, 250)
textlabel_826.Font = Font.GothamBold
textlabel_826.TextSize = 14
textlabel_826.TextXAlignment = Enum.TextXAlignment.Left
local textlabel_799 = Instance.new("TextLabel")

textlabel_799.Size = UDim2.new(0, 200, 0, 15)
textlabel_799.Position = UDim2.new(0, 45, 0, 22)
textlabel_799.BackgroundTransparency = 1
textlabel_799.Text = "by bao9002 | https://github.com/Uranus197"
textlabel_799.TextColor3 = Color3.fromRGB(140, 140, 140)
textlabel_799.Font = Font.Gotham
textlabel_799.TextSize = 10
textlabel_799.TextXAlignment = Enum.TextXAlignment.Left
textlabel_799.TextTransparency = 0.3
local textbutton_274 = Instance.new("TextButton")

textbutton_274.Size = UDim2.new(0, 38, 0, 38)
textbutton_274.Position = UDim2.new(1, -43, 0.5, -19)
textbutton_274.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
textbutton_274.Text = "▽"
textbutton_274.TextColor3 = Color3.fromRGB(158, 56, 255)
textbutton_274.Font = Font.GothamBold
textbutton_274.TextSize = 25
local uicorner_806 = Instance.new("UICorner")

uicorner_806.CornerRadius = UDim.new(0, 8)
uicorner_806.Parent = uicorner_806
frame_896.InputBegan:Connect(function(h, b, u, X, O, I)
end)
local frame_635 = Instance.new("Frame")

frame_635.Size = UDim2.new(0, 260, 0, 140)
frame_635.Position = UDim2.new(0.5, -130, 0.5, -70)
frame_635.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
frame_635.Visible = false
frame_635.ZIndex = 20
local uicorner_966 = Instance.new("UICorner")

uicorner_966.CornerRadius = UDim.new(0, 12)
uicorner_966.Parent = uicorner_966
local uistroke_147 = Instance.new("UIStroke")

uistroke_147.Thickness = 2
uistroke_147.Color = Color3.fromRGB(255, 50, 50)
uistroke_147.Transparency = 0
uistroke_147.Parent = uistroke_147
local textlabel_617 = Instance.new("TextLabel")

textlabel_617.Size = UDim2.new(1, 0, 0.3, 0)
textlabel_617.Position = UDim2.new(0, 0, 0.05, 0)
textlabel_617.BackgroundTransparency = 1
textlabel_617.Text = "Do you want to escape?"
textlabel_617.TextColor3 = Color3.fromRGB(240, 240, 250)
textlabel_617.Font = Font.GothamBold
textlabel_617.TextSize = 16
textlabel_617.ZIndex = 21
local imagelabel_723 = Instance.new("ImageLabel")

imagelabel_723.Size = UDim2.new(0, 50, 0, 50)
imagelabel_723.Position = UDim2.new(0.5, -25, 0.45, -15)
imagelabel_723.BackgroundTransparency = 1
imagelabel_723.Image = "rbxassetid://126601715821016"
imagelabel_723.ZIndex = 21
local textbutton_203 = Instance.new("TextButton")

textbutton_203.Size = UDim2.new(0, 100, 0, 35)
textbutton_203.Position = UDim2.new(0, 20, 0.65, 0)
textbutton_203.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
textbutton_203.Text = "Yes"
textbutton_203.TextColor3 = Color3.new(1, 1, 1)
textbutton_203.Font = Font.GothamBold
textbutton_203.ZIndex = 21
local uicorner_199 = Instance.new("UICorner")

uicorner_199.CornerRadius = UDim.new(0, 6)
uicorner_199.Parent = uicorner_199
local textbutton_613 = Instance.new("TextButton")

textbutton_613.Size = UDim2.new(0, 100, 0, 35)
textbutton_613.Position = UDim2.new(1, -120, 0.65, 0)
textbutton_613.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
textbutton_613.Text = "No"
textbutton_613.TextColor3 = Color3.fromRGB(240, 240, 250)
textbutton_613.Font = Font.GothamBold
textbutton_613.ZIndex = 21
local uicorner_761 = Instance.new("UICorner")

uicorner_761.CornerRadius = UDim.new(0, 6)
uicorner_761.Parent = uicorner_761
textbutton_203.MouseButton1Click:Connect(function(h)
    local sound_959 = Instance.new("Sound")

    sound_959.SoundId = "rbxassetid://12221967"
    sound_959.Volume = 0.6
    sound_959.Parent = sound_959
    local v5 = sound_959.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    textlabel_617.Text = "don't leave me pls"
    imagelabel_723.Image = "rbxassetid://105863999014084"
    textbutton_203.Text = "Confim"
end)
textbutton_613.MouseButton1Click:Connect(function(h, b)
    local sound_136 = Instance.new("Sound")

    sound_136.SoundId = "rbxassetid://12221967"
    sound_136.Volume = 0.6
    sound_136.Parent = sound_136
    local v5 = sound_136.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    frame_635.Visible = false
    frame_559.Visible = true
    blureffect_604.Enabled = false
    textlabel_617.Text = "Do you want to escape?"
    imagelabel_723.Image = "rbxassetid://126601715821016"
    textbutton_203.Text = "Yes"
end)
textbutton_655.MouseButton1Click:Connect(function(h, b, u, X)
    local sound_427 = Instance.new("Sound")

    sound_427.SoundId = "rbxassetid://12221976"
    sound_427.Volume = 0.6
    sound_427.Parent = sound_427
    local v5 = sound_427.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    local v7 = TweenService:Create(TweenService, {}, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
    Position = UDim2.new(frame_559.Position.X.Scale, frame_559.Position.X.Offset, 0, -50),
    Size = UDim2.new(0, 380, 0, 0),
    BackgroundTransparency = 1
})
    local v8 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3), {
    Size = 0
})
    local v9 = v8:Play()
    local v10 = v7:Play()
    local v11 = v7.Completed:Wait()
    frame_559.Visible = false
    blureffect_604.Enabled = false
    frame_896.Visible = true
    frame_896.Position = UDim2.new(0.5, -160, 0, -50)
    local v16 = TweenService:Create(TweenService, {}, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
    Position = UDim2.new(0.5, -160, 0, 10)
})
    local v17 = v16:Play()
end)
textbutton_274.MouseButton1Click:Connect(function(h, b, u, X, O)
    local sound_252 = Instance.new("Sound")

    sound_252.SoundId = "rbxassetid://12221976"
    sound_252.Volume = 0.6
    sound_252.Parent = sound_252
    local v5 = sound_252.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    local v7 = TweenService:Create(TweenService, {}, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
    Position = UDim2.new(0.5, -160, 0, -50)
})
    local v8 = v7:Play()
    local v9 = v7.Completed:Wait()
    frame_896.Visible = false
    frame_559.Visible = true
    frame_559.Size = UDim2.new(0, 380, 0, 0)
    frame_559.Position = UDim2.new(0.5, -190, 0, -50)
    frame_559.BackgroundTransparency = 1
    blureffect_604.Enabled = true
    local v16 = TweenService:Create(TweenService, {}, TweenInfo.new(0.4), {
    Size = 10
})
    local v17 = v16:Play()
    local v18 = TweenService:Create(TweenService, {}, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, -190, 0.5, -160),
    Size = UDim2.new(0, 380, 0, 320),
    BackgroundTransparency = 0
})
    local v19 = v18:Play()
end)
textbutton_923.MouseButton1Click:Connect(function(h, b, u, X, O)
    local sound_542 = Instance.new("Sound")

    sound_542.SoundId = "rbxassetid://12221967"
    sound_542.Volume = 0.6
    sound_542.Parent = sound_542
    local v5 = sound_542.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    frame_559.Visible = false
    frame_896.Visible = false
    frame_635.Visible = true
    blureffect_604.Enabled = true
end)
local scrollingframe_360 = Instance.new("ScrollingFrame")

scrollingframe_360.Name = "TabFrame"
scrollingframe_360.Size = UDim2.new(0, 130, 1, -125)
scrollingframe_360.Position = UDim2.new(0, 8, 0, 52)
scrollingframe_360.BackgroundTransparency = 1
scrollingframe_360.ScrollBarThickness = 6
scrollingframe_360.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingframe_360.Active = true
scrollingframe_360.ClipsDescendants = true
scrollingframe_360.ScrollingEnabled = true
scrollingframe_360.ZIndex = 6
scrollingframe_360.ScrollBarImageColor3 = Color3.fromRGB(158, 56, 255)
scrollingframe_360.ScrollBarImageTransparency = 0
scrollingframe_360.VerticalScrollBarInset = Enum.ScrollBarInset.None
local uilistlayout_939 = Instance.new("UIListLayout")

uilistlayout_939.Padding = UDim.new(0, 8)
local v379 = uilistlayout_939.GetPropertyChangedSignal({}, "AbsoluteContentSize")
v379:Connect(function(arg1, arg2)
    scrollingframe_360.CanvasSize = UDim2.new(0, 0, 0, uilistlayout_939.AbsoluteContentSize.Y + 12)
end)
scrollingframe_360.InputBegan:Connect(function(h, b, u)
end)
local frame_341 = Instance.new("Frame")

frame_341.Size = UDim2.new(1, -154, 1, -60)
frame_341.Position = UDim2.new(0, 146, 0, 52)
frame_341.BackgroundTransparency = 1
local scrollingframe_15 = Instance.new("ScrollingFrame")

scrollingframe_15.Size = UDim2.new(1, 0, 1, 0)
scrollingframe_15.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingframe_15.ScrollBarThickness = 8
scrollingframe_15.BackgroundTransparency = 1
scrollingframe_15.Visible = false
local uilistlayout_83 = Instance.new("UIListLayout")

uilistlayout_83.Padding = UDim.new(0, 8)
local v395 = uilistlayout_83.GetPropertyChangedSignal({}, "AbsoluteContentSize")
v395:Connect(function(h, b, u)
    scrollingframe_15.CanvasSize = UDim2.new(0, 0, 0, uilistlayout_83.AbsoluteContentSize.Y + 12)
end)
local textbutton_702 = Instance.new("TextButton")

textbutton_702.Size = UDim2.new(1, -12, 0, 36)
textbutton_702.Text = "Edit Background"
textbutton_702.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
textbutton_702.TextColor3 = Color3.fromRGB(240, 240, 250)
local uicorner_937 = Instance.new("UICorner")

uicorner_937.CornerRadius = UDim.new(0, 6)
uicorner_937.Parent = uicorner_937
local frame_968 = Instance.new("Frame")

frame_968.Size = UDim2.new(1, -12, 0, 32)
frame_968.BackgroundTransparency = 1
local textbox_87 = Instance.new("TextBox")

textbox_87.Size = UDim2.new(1, 0, 1, 0)
textbox_87.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
textbox_87.TextColor3 = Color3.fromRGB(240, 240, 250)
textbox_87.PlaceholderText = "Paste Image ID"
textbox_87.ClearTextOnFocus = false
textbox_87.TextXAlignment = Enum.TextXAlignment.Left
textbox_87.TextSize = 14
textbox_87.TextWrapped = true
local uicorner_834 = Instance.new("UICorner")

uicorner_834.CornerRadius = UDim.new(0, 6)
uicorner_834.Parent = uicorner_834
textbox_87.FocusLost:Connect(function(h, b)
    textbox_87.Text = ""
end)
textbox_87.Parent.Visible = false
textbutton_702.MouseButton1Click:Connect(function(arg1, arg2)
    local sound_763 = Instance.new("Sound")

    sound_763.SoundId = "rbxassetid://8755541422"
    sound_763.Volume = 0.4
    sound_763.Parent = sound_763
    local v5 = sound_763.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    textbox_87.Parent.Visible = false
end)
local frame_968 = Instance.new("Frame")

frame_968.Size = UDim2.new(1, -12, 0, 80)
frame_968.BackgroundTransparency = 1
local uilistlayout_943 = Instance.new("UIListLayout")

uilistlayout_943.Padding = UDim.new(0, 4)
uilistlayout_943.FillDirection = Enum.FillDirection.Vertical
local textbox_590 = Instance.new("TextBox")

textbox_590.Size = UDim2.new(1, 0, 0, 28)
textbox_590.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
textbox_590.TextColor3 = Color3.fromRGB(240, 240, 250)
textbox_590.Text = "120102995443063"
textbox_590.PlaceholderText = "Paste Music ID"
textbox_590.ClearTextOnFocus = false
local uicorner_768 = Instance.new("UICorner")

uicorner_768.CornerRadius = UDim.new(0, 6)
uicorner_768.Parent = uicorner_768
textbox_590.FocusLost:Connect(function(h, b, u, X)
    local sound_217 = Instance.new("Sound")

    sound_217.SoundId = "rbxassetid://8755541422"
    sound_217.Volume = 0.4
    sound_217.Parent = sound_217
    local v5 = sound_217.Play({})
    local v6 = Debris.AddItem(Debris, {}, 2)
    local v7 = textbox_590.Text.match(textbox_590.Text, "rbxassetid://")
    textbox_590.Text = textbox_590.Text
    local sound_396 = Instance.new("Sound")

    sound_396.SoundId = textbox_590.Text
    sound_396.Volume = 0.5
    sound_396.Looped = true
    sound_396.Parent = sound_396
    local v14 = sound_396.Play({})
end)
local frame_404 = Instance.new("Frame")

frame_404.Size = UDim2.new(1, 0, 0, 28)
frame_404.BackgroundTransparency = 1
local textlabel_183 = Instance.new("TextLabel")

textlabel_183.Size = UDim2.new(0, 60, 1, 0)
textlabel_183.Position = UDim2.new(0, 0, 0, 0)
textlabel_183.BackgroundTransparency = 1
textlabel_183.Text = "Volume:"
textlabel_183.TextColor3 = Color3.fromRGB(240, 240, 250)
textlabel_183.Font = Font.GothamSemibold
textlabel_183.TextSize = 12
textlabel_183.TextXAlignment = Enum.TextXAlignment.Left
local frame_543 = Instance.new("Frame")

frame_543.Size = UDim2.new(1, -68, 0, 10)
frame_543.Position = UDim2.new(0, 68, 0.5, -5)
frame_543.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
local uicorner_21 = Instance.new("UICorner")

uicorner_21.CornerRadius = UDim.new(0, 5)
uicorner_21.Parent = uicorner_21
local frame_906 = Instance.new("Frame")

frame_906.Size = UDim2.new(0.5, 0, 1, 0)
frame_906.BackgroundColor3 = Color3.fromRGB(158, 56, 255)
local uicorner_746 = Instance.new("UICorner")

uicorner_746.CornerRadius = UDim.new(0, 5)
uicorner_746.Parent = uicorner_746
local frame_220 = Instance.new("Frame")

frame_220.Size = UDim2.new(0, 10, 0, 10)
frame_220.Position = UDim2.new(0.5, -5, 0.5, -5)
frame_220.BackgroundColor3 = Color3.fromRGB(240, 240, 250)
local uicorner_520 = Instance.new("UICorner")

uicorner_520.CornerRadius = UDim.new(0, 5)
uicorner_520.Parent = uicorner_520
frame_543.InputBegan:Connect(function(h, b, u, X, O, I)
    local relX = h.Position.X - frame_543.AbsolutePosition.X
end)
textlabel_183.Text = "Volume: 50%"
local frame_508 = Instance.new("Frame")

frame_508.Size = UDim2.new(1, -12, 0, 40)
frame_508.BackgroundTransparency = 1
local textlabel_180 = Instance.new("TextLabel")

textlabel_180.Size = UDim2.new(0, 80, 1, 0)
textlabel_180.Position = UDim2.new(0, 0, 0, 0)
textlabel_180.BackgroundTransparency = 1
textlabel_180.Text = "FOV:"
textlabel_180.TextColor3 = Color3.fromRGB(240, 240, 250)
textlabel_180.Font = Font.GothamSemibold
textlabel_180.TextSize = 12
textlabel_180.TextXAlignment = Enum.TextXAlignment.Left
local frame_655 = Instance.new("Frame")

frame_655.Size = UDim2.new(1, -88, 0, 10)
frame_655.Position = UDim2.new(0, 88, 0.5, -5)
frame_655.BackgroundColor3 = Color3.fromRGB(28, 16, 48)
local uicorner_935 = Instance.new("UICorner")

uicorner_935.CornerRadius = UDim.new(0, 5)
uicorner_935.Parent = uicorner_935
