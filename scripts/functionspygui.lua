local toLog = {
    debug.getconstants;
    getconstants;
    debug.getconstant;
    getconstant;
    debug.setconstant;
    setconstant;
    debug.getupvalues;
    debug.getupvalue;
    getupvalues;
    getupvalue;
    debug.setupvalue;
    setupvalue;
    getsenv;
    getreg;
    getgc;
    getconnections;
    firesignal;
    fireclickdetector;
    fireproximityprompt;
    firetouchinterest;
    gethiddenproperty;
    sethiddenproperty;
    hookmetamethod;
    setnamecallmethod;
    getrawmetatable;
    setrawmetatable;
    setreadonly;
    isreadonly;
    debug.setmetatable;
}

local FunctionSpy = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local LeftPanel = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local example = Instance.new("TextButton")
local name = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local FakeTitle = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local clear = Instance.new("ImageButton")
local RightPanel = Instance.new("ScrollingFrame")
local output = Instance.new("TextLabel")
local clear_2 = Instance.new("TextButton")
local copy = Instance.new("TextButton")

--Properties:

FunctionSpy.Name = "FunctionSpy"
FunctionSpy.Parent = game.CoreGui
FunctionSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = FunctionSpy
Main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 10, 0, 36)
Main.Size = UDim2.new(0, 536, 0, 328)

LeftPanel.Name = "LeftPanel"
LeftPanel.Parent = Main
LeftPanel.Active = true
LeftPanel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
LeftPanel.BorderSizePixel = 0
LeftPanel.Size = UDim2.new(0.349999994, 0, 1, 0)
LeftPanel.CanvasSize = UDim2.new(0, 0, 0, 0)
LeftPanel.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
LeftPanel.ScrollBarThickness = 3

UIListLayout.Parent = LeftPanel
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 7)

example.Name = "example"
example.Parent = LeftPanel
example.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
example.BorderSizePixel = 0
example.Position = UDim2.new(4.39481269e-08, 0, 0, 0)
example.Size = UDim2.new(0, 163, 0, 19)
example.Visible = false
example.Font = Enum.Font.SourceSans
example.Text = ""
example.TextColor3 = Color3.fromRGB(0, 0, 0)
example.TextSize = 14.000
example.TextXAlignment = Enum.TextXAlignment.Left

name.Name = "name"
name.Parent = example
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderSizePixel = 0
name.Position = UDim2.new(0, 10, 0, 0)
name.Size = UDim2.new(1, -10, 1, 0)
name.Font = Enum.Font.SourceSans
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 14.000
name.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = LeftPanel
UIPadding.PaddingBottom = UDim.new(0, 7)
UIPadding.PaddingLeft = UDim.new(0, 7)
UIPadding.PaddingRight = UDim.new(0, 7)
UIPadding.PaddingTop = UDim.new(0, 7)

FakeTitle.Name = "FakeTitle"
FakeTitle.Parent = Main
FakeTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FakeTitle.BorderSizePixel = 0
FakeTitle.Position = UDim2.new(0, 225, 0, -26)
FakeTitle.Size = UDim2.new(0.166044772, 0, 0, 26)
FakeTitle.Font = Enum.Font.GothamMedium
FakeTitle.Text = "FunctionSpy"
FakeTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
FakeTitle.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0, -26)
Title.Size = UDim2.new(1, 0, 0, 26)
Title.Font = Enum.Font.GothamMedium
Title.Text = "FunctionSpy"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextWrapped = true

clear.Name = "clear"
clear.Parent = Title
clear.BackgroundTransparency = 1.000
clear.Position = UDim2.new(1, -28, 0, 2)
clear.Size = UDim2.new(0, 24, 0, 24)
clear.ZIndex = 2
clear.Image = "rbxassetid://3926305904"
clear.ImageRectOffset = Vector2.new(924, 724)
clear.ImageRectSize = Vector2.new(36, 36)

RightPanel.Name = "RightPanel"
RightPanel.Parent = Main
RightPanel.Active = true
RightPanel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
RightPanel.BorderSizePixel = 0
RightPanel.Position = UDim2.new(0.349999994, 0, 0, 0)
RightPanel.Size = UDim2.new(0.649999976, 0, 1, 0)
RightPanel.CanvasSize = UDim2.new(0, 0, 0, 0)
RightPanel.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
RightPanel.ScrollBarThickness = 3

output.Name = "output"
output.Parent = RightPanel
output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
output.BackgroundTransparency = 1.000
output.BorderColor3 = Color3.fromRGB(27, 42, 53)
output.BorderSizePixel = 0
output.Position = UDim2.new(0, 10, 0, 10)
output.Size = UDim2.new(1, -10, 0.75, -10)
output.Font = Enum.Font.GothamMedium
output.Text = ""
output.TextColor3 = Color3.fromRGB(255, 255, 255)
output.TextSize = 14.000
output.TextXAlignment = Enum.TextXAlignment.Left
output.TextYAlignment = Enum.TextYAlignment.Top

clear_2.Name = "clear"
clear_2.Parent = RightPanel
clear_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
clear_2.BorderSizePixel = 0
clear_2.Position = UDim2.new(0.0631457642, 0, 0.826219559, 0)
clear_2.Size = UDim2.new(0, 140, 0, 33)
clear_2.Font = Enum.Font.SourceSans
clear_2.Text = "Clear logs"
clear_2.TextColor3 = Color3.fromRGB(255, 255, 255)
clear_2.TextSize = 14.000

copy.Name = "copy"
copy.Parent = RightPanel
copy.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
copy.BorderSizePixel = 0
copy.Position = UDim2.new(0.545350134, 0, 0.826219559, 0)
copy.Size = UDim2.new(0, 140, 0, 33)
copy.Font = Enum.Font.SourceSans
copy.Text = "Copy info"
copy.TextColor3 = Color3.fromRGB(255, 255, 255)
copy.TextSize = 14.000

-- Scripts:

local function AKIHDI_fake_script() -- Main.Main 
	local script = Instance.new('LocalScript', Main)

	_G.functionspy = {
		instance = script.Parent.Parent;
		logging = true;
		connections = {};
	}
	
	_G.functionspy.shutdown = function()
		for i,v in pairs(_G.functionspy.connections) do
			v:Disconnect()
		end
		_G.functionspy.connections = {}
		_G.functionspy = nil
		script.Parent.Parent:Destroy()
	end
	
	local connections = {}
	
	local currentInfo = nil
	
	function log(name, text)
		local btn = script.Parent.LeftPanel.example:Clone()
		btn.Parent = script.Parent.LeftPanel
		btn.Name = name
		btn.name.Text = name
		btn.Visible = true
		table.insert(connections, btn.MouseButton1Click:Connect(function()
			script.Parent.RightPanel.output.Text = text
			currentInfo = text
		end))
	end
	
	script.Parent.RightPanel.copy.MouseButton1Click:Connect(function()
		if currentInfo ~= nil then
			setclipboard(currentInfo)
		end
	end)
	
	script.Parent.RightPanel.clear.MouseButton1Click:Connect(function()
		for i,v in pairs(connections) do
			v:Disconnect()
		end
		for i,v in pairs(script.Parent.LeftPanel:GetDescendants()) do
			if v:IsA("TextButton") and v.Visible == true then
				v:Destroy()
			end
		end
		script.Parent.RightPanel.output.Text = ""
		currentInfo = nil
	end)
	
	local hooked = {}
    local Seralize =  loadstring(game:HttpGet('https://api.irisapp.ca/Scripts/SeralizeTable.lua', true))()
    for i,v in next, toLog do
        if type(v) == "string" then
            local suc,err = pcall(function()
                local func = loadstring("return "..v)()
                hooked[i] = hookfunction(func, function(...)
                    local args = {...}
                    if _G.functionspy then
                        pcall(function() 
                            out = ""
                            out = out..(v..", Args -> {")..("\n"):format()
                            for l,k in pairs(args) do
                                if type(k) == "function" then
                                    out = out..("    ["..tostring(l).."] "..tostring(k)..", Type -> "..type(k)..", Name -> "..getinfo(k).name)..("\n"):format()
                                elseif type(k) == "table" then
                                    out = out..("    ["..tostring(l).."] "..tostring(k)..", Type -> "..type(k)..", Data -> "..Seralize(k))..("\n"):format()
                                elseif type(k) == "boolean" then
                                    out = out..("    ["..tostring(l).."] Value -> "..tostring(k).." -> "..type(k))..("\n"):format()
                                elseif type(k) == "nil" then
                                    out = out..("    ["..tostring(l).."] null")..("\n"):format()
                                elseif type(k) == "number" then
                                    out = out..("    ["..tostring(l).."] Value -> "..tostring(k)..", Type -> "..type(k))..("\n"):format()
                                else
                                    out = out..("    ["..tostring(l).."] Value -> "..tostring(k)..", Type -> "..type(k))..("\n"):format()
                                end
                            end
                            out = out..("}, Result -> "..tostring(nil))..("\n"):format()
                            if _G.functionspy.logging == true then
                                log(v,out)
                            end
                        end)
                    end
                    return hooked[i](...)
                end)
            end)
            if not suc then
                warn("Something went wrong while hooking "..v..". Error: "..err)
            end
        elseif type(v) == "function" then
            local suc,err = pcall(function()
                hooked[i] = hookfunction(v, function(...)
					local args = {...}
                    if _G.functionspy then
                        pcall(function() 
                            out = ""
                            out = out..(getinfo(v).name..", Args -> {")..("\n"):format()
                            for l,k in pairs(args) do
                                if type(k) == "function" then
                                    out = out..("    ["..tostring(l).."] "..tostring(k)..", Type -> "..type(k)..", Name -> "..getinfo(k).name)..("\n"):format()
                                elseif type(k) == "table" then
                                    out = out..("    ["..tostring(l).."] "..tostring(k)..", Type -> "..type(k)..", Data -> "..Seralize(k))..("\n"):format()
                                elseif type(k) == "boolean" then
                                    out = out..("    ["..tostring(l).."] Value -> "..tostring(k).." -> "..type(k))..("\n"):format()
                                elseif type(k) == "nil" then
                                    out = out..("    ["..tostring(l).."] null")..("\n"):format()
                                elseif type(k) == "number" then
                                    out = out..("    ["..tostring(l).."] Value -> "..tostring(k)..", Type -> "..type(k))..("\n"):format()
                                else
                                    out = out..("    ["..tostring(l).."] Value -> "..tostring(k)..", Type -> "..type(k))..("\n"):format()
                                end
                            end
                            out = out..("}, Result -> "..tostring(nil))..("\n"):format()
                            if _G.functionspy.logging == true then
                                log(getinfo(v).name,out)
                            end
                        end)
                    end
                    return hooked[i](...)
                end)
            end)
            if not suc then
                warn("Something went wrong while hooking "..getinfo(v).name..". Error: "..err)
            end
        end
    end
	
end
coroutine.wrap(AKIHDI_fake_script)()
local function KVVJTK_fake_script() -- FakeTitle.DragScript 
	local script = Instance.new('LocalScript', FakeTitle)

	--Not made by me, check out this video: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s
	--Put this inside of your Frame and configure the speed if you would like.
	--Enjoy! Credits go to: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	table.insert(_G.functionspy.connections, frame.Title.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end))
	
	table.insert(_G.functionspy.connections, UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end))
	
end
coroutine.wrap(KVVJTK_fake_script)()
local function BIPVKVC_fake_script() -- FakeTitle.LocalScript 
	local script = Instance.new('LocalScript', FakeTitle)

	table.insert(_G.functionspy.connections, script.Parent.MouseEnter:Connect(function()
		if _G.functionspy.logging == true then
			game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(0,1,0)}):Play()
		elseif _G.functionspy.logging == false then
			game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(1,0,0)}):Play()
		end
	end))
	
	table.insert(_G.functionspy.connections, script.Parent.MouseMoved:Connect(function()
		if _G.functionspy.logging == true then
			game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(0,1,0)}):Play()
		elseif _G.functionspy.logging == false then
			game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(1,0,0)}):Play()
		end
	end))
	
	table.insert(_G.functionspy.connections, script.Parent.MouseButton1Click:Connect(function()
		_G.functionspy.logging = not _G.functionspy.logging
		if _G.functionspy.logging == true then
			game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(0,1,0)}):Play()
		elseif _G.functionspy.logging == false then
			game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(1,0,0)}):Play()
		end
	end))
	
	table.insert(_G.functionspy.connections, script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent.Parent.Title, TweenInfo.new(0.3), {TextColor3 = Color3.new(1,1,1)}):Play()
	end))
end
coroutine.wrap(BIPVKVC_fake_script)()
local function PRML_fake_script() -- clear.LocalScript 
	local script = Instance.new('LocalScript', clear)

	script.Parent.MouseButton1Click:Connect(function()
		_G.functionspy.shutdown()
	end)
end
coroutine.wrap(PRML_fake_script)()
