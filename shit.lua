local oldscript = script
local PandaAuth = loadstring(game:HttpGet(('https://pandadevelopment.net/service_api/PandaBetaLib.lua')))()

if islclosure(getgenv().setfenv) then while true do end end -- ANTI SETFENV TAMPERING
if islclosure(getgenv().tostring) then while true do end end -- ANTI TOSTRING TAMPERING
if PandaAuth.ValidateKey then
else -- ANTI Tampering
    while true do end
end



local discordLink = loadstring(game:HttpGet(('https://pastebin.com/raw/qVc2ft0D')))()
local Notification = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Odrexyo/Script/main/UI/Notification.lua')))()
-- SCRIPT --

function executeShit()

    local Link = game:HttpGet("https://raw.githubusercontent.com/Gfgsbe63j/9dlao4c3b/main/fargt/"..game.PlaceId..".lua")
    if Link then	
	loadstring(Link)()
    end
end


for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "Magenta" then 
    	v:Destroy()
		break 
	end
end

function typewrite(object,text,length)
	for i = 1,#text, 1 do 
		object.Text = string.sub(text,1,i)
		wait(length)
	end
end

function CreateBlur(size)
	blur = Instance.new("BlurEffect", game.Lighting)
	blur.Name = "HubBlur"
	blur.Size = size
end

function DestroyBlur()
	for _, v in pairs(game.Lighting:GetChildren()) do 
		if v.Name == "HubBlur" then 
			v:Destroy()
			break
		end
	end
end

CreateBlur(56)
function CreateNotification(text, size)
    local Notification = Instance.new("ScreenGui")
    local TextLabel_1 = Instance.new("TextLabel")
    local UIStroke_1 = Instance.new("UIStroke")

    -- Properties:
    Notification.Name = "Notification"
    Notification.Parent = game.CoreGui

    TextLabel_1.Parent = Notification
    TextLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    TextLabel_1.BackgroundTransparency = 1
    TextLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
    TextLabel_1.BorderSizePixel = 0
    TextLabel_1.Position = UDim2.new(0.499971122, 0,0.87081784, 0)
    TextLabel_1.Size = UDim2.new(0, 287,0, 37)
    TextLabel_1.Font = Enum.Font.FredokaOne
    TextLabel_1.Text = text
    TextLabel_1.TextColor3 = Color3.fromRGB(255,255,255)
    TextLabel_1.TextScaled = true
    TextLabel_1.TextSize = size
    TextLabel_1.TextWrapped = true

    UIStroke_1.Parent = TextLabel_1
    UIStroke_1.Thickness = 2.2

	
    for i = 1,#text, 1 do 
		TextLabel_1.Text = string.sub(text,1,i)
		wait(0.06)
	end

    Notification.Parent = game.CoreGui
    wait(5)
    Notification:Destroy()

end




local Magenta = Instance.new("ScreenGui")
local Main_1 = Instance.new("Frame")
local UICorner_1 = Instance.new("UICorner")
local UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint")
local UISizeConstraint_1 = Instance.new("UISizeConstraint")
local UIStroke_1 = Instance.new("UIStroke")
local UIGradient_1 = Instance.new("UIGradient")
local Key_1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local Input_1 = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local UITextSizeConstraint_1 = Instance.new("UITextSizeConstraint")
local UIStroke_3 = Instance.new("UIStroke")
local Title_1 = Instance.new("TextLabel")
local UIStroke_4 = Instance.new("UIStroke")
local Description_1 = Instance.new("TextLabel")
local UIStroke_5 = Instance.new("UIStroke")
local Check_1 = Instance.new("ImageButton")
local UIScale_1 = Instance.new("UIScale")
local TextLabel_1 = Instance.new("TextLabel")
local UIStroke_6 = Instance.new("UIStroke")
local Discord_1 = Instance.new("ImageButton")
local UIScale_2 = Instance.new("UIScale")
local ImageLabel_1 = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UIStroke_7 = Instance.new("UIStroke")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Key_2 = Instance.new("ImageButton")
local UIScale_3 = Instance.new("UIScale")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local UIStroke_8 = Instance.new("UIStroke")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")


-- Properties:
Magenta.Name = "Magenta"
Magenta.Parent = game:GetService("CoreGui")

Main_1.Name = "Main"
Main_1.Parent = Magenta
Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
Main_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
Main_1.BorderSizePixel = 0
Main_1.Position = UDim2.new(0.5, 0,0.664634168, 0)
Main_1.Size = UDim2.new(0.296663672, 0,0.172675267, 0)

UICorner_1.Parent = Main_1
UICorner_1.CornerRadius = UDim.new(0,15)

UIAspectRatioConstraint_1.Parent = Main_1
UIAspectRatioConstraint_1.AspectRatio = 3.0999999046325684

UISizeConstraint_1.Parent = Main_1
UISizeConstraint_1.MaxSize = Vector2.new(370, 135)

UIStroke_1.Parent = Main_1
UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_1.Thickness = 1

UIGradient_1.Parent = Main_1
UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 9, 216)), ColorSequenceKeypoint.new(0.465398, Color3.fromRGB(156, 0, 156)), ColorSequenceKeypoint.new(1, Color3.fromRGB(102, 0, 102))}
UIGradient_1.Rotation = 90
UIGradient_1.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0), NumberSequenceKeypoint.new(1,0.00624996)}

Key_1.Name = "Key"
Key_1.Parent = Main_1
Key_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Key_1.BorderColor3 = Color3.fromRGB(0,0,0)
Key_1.BorderSizePixel = 0
Key_1.Position = UDim2.new(0.0284688827, 0,0.551281571, 0)
Key_1.Size = UDim2.new(0.565999925, 0,0.390236437, 0)

UICorner_2.Parent = Key_1
UICorner_2.CornerRadius = UDim.new(0,15)

UIGradient_2.Parent = Key_1
UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0.5), NumberSequenceKeypoint.new(1,0.5)}

Input_1.Name = "Input"
Input_1.Parent = Key_1
Input_1.Active = true
Input_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Input_1.BackgroundTransparency = 1
Input_1.BorderColor3 = Color3.fromRGB(0,0,0)
Input_1.BorderSizePixel = 0
Input_1.CursorPosition = -1
Input_1.Position = UDim2.new(0.00488171028, 0,-7.1625567e-07, 0)
Input_1.Size = UDim2.new(0.995118618, 0,1.00000036, 0)
Input_1.Font = Enum.Font.FredokaOne
Input_1.PlaceholderColor3 = Color3.fromRGB(255,255,255)
Input_1.PlaceholderText = "Enter Key"
Input_1.Text = ""
Input_1.TextColor3 = Color3.fromRGB(255,255,255)
Input_1.TextScaled = true
Input_1.TextSize = 14
Input_1.TextWrapped = true
UICorner_3.Parent = Input_1

UIStroke_2.Parent = Input_1
UIStroke_2.Thickness = 2.2

UITextSizeConstraint_1.Parent = Input_1
UITextSizeConstraint_1.MaxTextSize = 25

UIStroke_3.Parent = Key_1
UIStroke_3.Thickness = 2.200000047683716

Title_1.Name = "Title"
Title_1.Parent = Main_1
Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Title_1.BackgroundTransparency = 1
Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
Title_1.BorderSizePixel = 0
Title_1.Position = UDim2.new(-0.166920185, 0,-0.152991816, 0)
Title_1.Rotation = -5
Title_1.Size = UDim2.new(0.439399838, 0,0.41060847, 0)
Title_1.Font = Enum.Font.FredokaOne
Title_1.Text = "Magenta hub!"
Title_1.TextColor3 = Color3.fromRGB(255,255,255)
Title_1.TextScaled = true
Title_1.TextSize = 14
Title_1.TextWrapped = true

UIStroke_4.Parent = Title_1
UIStroke_4.Thickness = 2.200000047683716

Description_1.Name = "Description"
Description_1.Parent = Main_1
Description_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Description_1.BackgroundTransparency = 1
Description_1.BorderColor3 = Color3.fromRGB(0,0,0)
Description_1.BorderSizePixel = 0
Description_1.Position = UDim2.new(0.0212791823, 0,0.166243389, 0)
Description_1.Size = UDim2.new(0.955136001, 0,0.310748875, 0)
Description_1.Font = Enum.Font.GothamBold
Description_1.Text = "Join our Discord server for the key. Bypass attempts will result in a ban."
Description_1.TextColor3 = Color3.fromRGB(255,255,255)
Description_1.TextScaled = true
Description_1.TextSize = 14
Description_1.TextWrapped = true

UIStroke_5.Parent = Description_1
UIStroke_5.Thickness = 2.200000047683716

Input_1.Changed:Connect(function(property)
    if property == "Text" then
        getgenv().UserInput = Input_1.Text
    end
end)
23


function C9caFsql4bfak9l()
    local savedKey
    if isfolder("/Magenta") then
        if readfile("/Magenta/Key.json") then
            savedKey = readfile("/Magenta/Key.json")
        end
    elseif isfolder("Magenta") then
        if readfile("Magenta/Key.json") then
            savedKey = readfile("Magenta/Key.json")
        end
        if not savedKey or savedKey == "" then
            print("LOSER1")
            return
        end
    end

	getgenv().UserInput = savedKey
	if savedKey then 
		print("Key Found")
		print(savedKey)
	else
		CreateNotification("Key not found in local storage. This indicates that the key changed.",19)
	end
	l1f9c3V18dqk()
end

	
function l1f9c3V18dqk()
    if getgenv().UserInput then
	    local enteredKey = getgenv().UserInput
        if PandaAuth:ValidateKey("magentahub", enteredKey) then
            if isfolder("/Magenta") then
                if readfile("/Magenta/Key.json") then
                    writefile("/Magenta/Key.json", enteredKey)
                end
            elseif isfolder("Magenta") then
                if readfile("Magenta/Key.json") then
                    writefile("Magenta/Key.json", enteredKey)
                end
            end
            typewrite(Input_1,"Success..", 0.06)
            wait(1)
            Magenta:Destroy()
            DestroyBlur()
            CreateNotification("Script is loading...",19)
            executeShit()
        else
            typewrite(Input_1,"Wrong Key..", 0.06)
        end
    end
end


Check_1.Name = "Check"
Check_1.Parent = Main_1
Check_1.Active = true
Check_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Check_1.BackgroundTransparency = 1
Check_1.BorderColor3 = Color3.fromRGB(0,0,0)
Check_1.BorderSizePixel = 0
Check_1.Position = UDim2.new(0.618637502, 0,0.525992036, 0)
Check_1.Size = UDim2.new(0.362037927, 0,0.415525317, 0)
Check_1.Image = "rbxassetid://11675536014"
Check_1.ImageColor3 = Color3.fromRGB(51,255,15)
Check_1.ScaleType = Enum.ScaleType.Slice
Check_1.SliceCenter = Rect.new(294, 274, 296, 274)
Check_1.SliceScale = 0.20000000298023224
Check_1.MouseButton1Click:Connect(l1f9c3V18dqk)

UIScale_1.Parent = Check_1

TextLabel_1.Parent = Check_1
TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
TextLabel_1.BorderSizePixel = 0
TextLabel_1.Position = UDim2.new(0.100746796, 0,0.13957037, 0)
TextLabel_1.Size = UDim2.new(0.79850632, 0,0.700920641, 0)
TextLabel_1.Font = Enum.Font.FredokaOne
TextLabel_1.Text = "Execute"
TextLabel_1.TextColor3 = Color3.fromRGB(255,255,255)
TextLabel_1.TextScaled = true
TextLabel_1.TextSize = 14
TextLabel_1.TextWrapped = true

UIStroke_6.Parent = TextLabel_1
UIStroke_6.Thickness = 1.600000023841858

function onJoinDiscordClick()
    setclipboard(discordLink)
    toclipboard(discordLink)
	typewrite(TextLabel_2,"Copied!",0.05)
	wait(4)
	typewrite(TextLabel_2," ",0.05)
end

Discord_1.Name = "Discord"
Discord_1.Parent = Main_1
Discord_1.Active = true
Discord_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Discord_1.BackgroundTransparency = 1
Discord_1.BorderColor3 = Color3.fromRGB(0,0,0)
Discord_1.BorderSizePixel = 0
Discord_1.Position = UDim2.new(1.01788855, 0,0.534832597, 0)
Discord_1.Size = UDim2.new(0.133894369, 0,0.415525317, 0)
Discord_1.Image = "rbxassetid://11675536014"
Discord_1.ImageColor3 = Color3.fromRGB(255,0,255)
Discord_1.ScaleType = Enum.ScaleType.Slice
Discord_1.SliceCenter = Rect.new(294, 274, 296, 274)
Discord_1.SliceScale = 0.20000000298023224
Discord_1.MouseButton1Click:Connect(onJoinDiscordClick)


UIScale_2.Parent = Discord_1

ImageLabel_1.Parent = Discord_1
ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ImageLabel_1.BackgroundTransparency = 1
ImageLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
ImageLabel_1.BorderSizePixel = 0
ImageLabel_1.Position = UDim2.new(0.0851953328, 0,0.0851024985, 0)
ImageLabel_1.Size = UDim2.new(0.829609334, 0,0.819215059, 0)
ImageLabel_1.Image = "rbxassetid://14486469180"

TextLabel_2.Parent = Discord_1
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.fromRGB(0,0,0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.00581069477, 0,0.286626577, 0)
TextLabel_2.Size = UDim2.new(1.01155579, 0,0.700920701, 0)
TextLabel_2.Visible = true
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.fromRGB(255,255,255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

UIStroke_7.Parent = TextLabel_2
UIStroke_7.Thickness = 1.600000023841858
UIStroke_7.Parent = TextLabel_2
UIStroke_7.Thickness = 1.600000023841858

UITextSizeConstraint_2.Parent = TextLabel_2
UITextSizeConstraint_2.MaxTextSize = 14
UITextSizeConstraint_2.MinTextSize = 14



function onKeyClick()
    local KeyLink = PandaAuth:GetLink("magentahub")
    setclipboard(PandaAuth:GetLink("magentahub"))
	toclipboard(PandaAuth:GetLink("magentahub"))
	typewrite(TextLabel_3,"Copied!",0.05)
	wait(4)
	typewrite(TextLabel_3," ",0.05)
end

Key_2.Name = "Key"
Key_2.Parent = Main_1
Key_2.Active = true
Key_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
Key_2.BackgroundTransparency = 1
Key_2.BorderColor3 = Color3.fromRGB(0,0,0)
Key_2.BorderSizePixel = 0
Key_2.Position = UDim2.new(1.01788855, 0,0.104258895, 0)
Key_2.Size = UDim2.new(0.133894369, 0,0.415525317, 0)
Key_2.Image = "rbxassetid://11675536014"
Key_2.ImageColor3 = Color3.fromRGB(255,0,255)
Key_2.ScaleType = Enum.ScaleType.Slice
Key_2.SliceCenter = Rect.new(294, 274, 296, 274)
Key_2.SliceScale = 0.20000000298023224
Key_2.MouseButton1Click:Connect(onKeyClick)

UIScale_3.Parent = Key_2

ImageLabel_2.Parent = Key_2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.BorderColor3 = Color3.fromRGB(0,0,0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.162997022, 0,0.162818611, 0)
ImageLabel_2.Size = UDim2.new(0.674007416, 0,0.656482577, 0)
ImageLabel_2.Image = "rbxassetid://14663910821"

TextLabel_3.Parent = Key_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255,255,255)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.fromRGB(0,0,0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(-0.00581069477, 0,0.260721177, 0)
TextLabel_3.Size = UDim2.new(1.01155579, 0,0.700920701, 0)
TextLabel_3.Font = Enum.Font.FredokaOne
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.fromRGB(255,255,255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

UIStroke_8.Parent = TextLabel_3
UIStroke_8.Thickness = 1.600000023841858

UITextSizeConstraint_3.Parent = TextLabel_3
UITextSizeConstraint_3.MaxTextSize = 14
UITextSizeConstraint_3.MinTextSize = 14



local function EbHFIIEKSxQBLTdM()
local script = Instance.new("LocalScript",Check_1)
local btn = script.Parent

local isHovering = false


btn.MouseEnter:Connect(function()
	isHovering = true
	btn:TweenSize(UDim2.new(0.382, 0, 0.43, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseLeave:Connect(function()
	isHovering = false

	btn:TweenSize(UDim2.new(0.362, 0, 0.416, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Down:Connect(function()

	btn:TweenSize(UDim2.new(0.332, 0, 0.426, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Up:Connect(function()

	if not isHovering then
		btn:TweenSize(UDim2.new(0.362, 0, 0.416, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	else
		btn:TweenSize(UDim2.new(0.382, 0, 0.43, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end
end)
end
coroutine.wrap(EbHFIIEKSxQBLTdM)()


local function PFZtwHnOYqbKUMfb()
local script = Instance.new("LocalScript",Discord_1)
local btn = script.Parent

local isHovering = false


btn.MouseEnter:Connect(function()
	isHovering = true
	btn:TweenSize(UDim2.new(0.144, 0, 0.454, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseLeave:Connect(function()
	isHovering = false

	btn:TweenSize(UDim2.new(0.134, 0, 0.416, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Down:Connect(function()

	btn:TweenSize(UDim2.new(0.124, 0, 0.436, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Up:Connect(function()

	if not isHovering then
		btn:TweenSize(UDim2.new(0.144, 0, 0.454, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	else
		btn:TweenSize(UDim2.new(0.134, 0, 0.416, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end
end)
end
coroutine.wrap(PFZtwHnOYqbKUMfb)()


local function udyEpPqCARopbQCr()
local script = Instance.new("LocalScript",Key_2)
local btn = script.Parent

local isHovering = false


btn.MouseEnter:Connect(function()
	isHovering = true
	btn:TweenSize(UDim2.new(0.144, 0, 0.454, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseLeave:Connect(function()
	isHovering = false

	btn:TweenSize(UDim2.new(0.134, 0, 0.416, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Down:Connect(function()

	btn:TweenSize(UDim2.new(0.124, 0, 0.436, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Up:Connect(function()

	if not isHovering then
		btn:TweenSize(UDim2.new(0.144, 0, 0.454, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	else
		btn:TweenSize(UDim2.new(0.134, 0, 0.416, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end
end)
end
coroutine.wrap(udyEpPqCARopbQCr)()

local function RandomString(length)
    local randomString = ""
    for i = 1, length do
        local randomNumber = math.random(97, 122)
        randomString = randomString .. string.char(randomNumber)
    end
    return tostring(randomString)
end

Check = true
local oldstring = ""
spawn(function()
    while Check do
        local String = RandomString(10)
        if String == oldstring then
            while true do end
        end 
        if PandaAuth:ValidateKey("magentahub", RandomString(10)) then
            while true do end
        end
        oldstring = RandomString(10)
        task.wait(2)
    end
end)

if isfolder("/Magenta") then
    if isfile("/Magenta/key.json", "") then
		C9caFsql4bfak9l()
    else
        writefile("/Magenta/Key.json", "")
		C9caFsql4bfak9l()
    end
elseif isfolder("Magenta") then
    if isfile("Magenta/key.json", "") then
		C9caFsql4bfak9l()
    else
        writefile("Magenta/Key.json", "")
		C9caFsql4bfak9l()
    end
else
    
    makefolder("Magenta")
    pcall(function()
        writefile("/Magenta/Key.json", "")
    end)
    pcall(function()
        writefile("Magenta/Key.json", "")
    end)
	C9caFsql4bfak9l()
end
setfenv(1,{})
script = oldscript
