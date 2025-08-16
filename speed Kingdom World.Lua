-- Services
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "UpdateNoticeUI"
ScreenGui.Parent = CoreGui

-- Main Frame
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5,0.5)
Frame.Position = UDim2.new(0.5,0,0.5,0)
Frame.Size = UDim2.new(0,400,0,200)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.1
Frame.ClipsDescendants = true
Frame.Active = true
Frame.Draggable = true

-- UICorner
local corner = Instance.new("UICorner", Frame)
corner.CornerRadius = UDim.new(0,15)

-- Title Text
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0.4,0)
Title.BackgroundTransparency = 1
Title.Text = "⚙️ السكربت جاري تحديثه ⚙️"
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextScaled = true

-- Info Text
local Info = Instance.new("TextLabel")
Info.Parent = Frame
Info.Size = UDim2.new(1,-20,0.3,0)
Info.Position = UDim2.new(0,10,0.4,0)
Info.BackgroundTransparency = 1
Info.Text = "يرجى الدخول الى سيرفر الدسكورد للأخبار عن جاهزية السكربت ❤️"
Info.Font = Enum.Font.Gotham
Info.TextWrapped = true
Info.TextColor3 = Color3.fromRGB(200,200,200)
Info.TextScaled = true

-- Copy Button
local Button = Instance.new("TextButton")
Button.Parent = Frame
Button.Size = UDim2.new(0.6,0,0.2,0)
Button.Position = UDim2.new(0.2,0,0.75,0)
Button.BackgroundColor3 = Color3.fromRGB(50,150,255)
Button.Text = "📋 نسخ رابط الدسكورد"
Button.Font = Enum.Font.GothamBold
Button.TextScaled = true
Button.TextColor3 = Color3.fromRGB(255,255,255)

-- UICorner Button
local BtnCorner = Instance.new("UICorner", Button)
BtnCorner.CornerRadius = UDim.new(0,10)

-- Copy Function
Button.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/rQwFDM89")
    Button.Text = "✅ تم النسخ!"
    task.wait(2)
    Button.Text = "📋 نسخ رابط الدسكورد"
end)
