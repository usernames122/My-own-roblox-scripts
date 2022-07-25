local createUI = function()
	local UI = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local header = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local opt2 = Instance.new("TextBox")
	local opt4 = Instance.new("TextBox")
	local opt3 = Instance.new("TextBox")
	local opt1 = Instance.new("TextBox")
	local startvote = Instance.new("TextButton")

	--Properties:

	UI.Name = "UI"
	UI.Parent = game:GetService("CoreGui")
	UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = UI
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.196509868, 0, 0.226966292, 0)
	Frame.Size = UDim2.new(0.235053122, 0, 0.424719095, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Frame

	header.Name = "header"
	header.Parent = Frame
	header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	header.BorderSizePixel = 0
	header.Position = UDim2.new(-0.0014831759, 0, -0.00021992033, 0)
	header.Size = UDim2.new(1.0014832, 0, 0.144295827, 0)
	header.Text = "Server Vote"
	header.TextScaled = true
	header.TextWrapped = true
	header.TextXAlignment = Enum.TextXAlignment.Left

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 170, 255)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(0, 170, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 255))}
	UIGradient_2.Rotation = 270
	UIGradient_2.Parent = header

	opt2.Name = "opt2"
	opt2.Parent = Frame
	opt2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	opt2.BackgroundTransparency = 1.000
	opt2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	opt2.Position = UDim2.new(0.464815974, 0, 0.171957672, 0)
	opt2.Size = UDim2.new(0.42443496, 0, 0.0791005418, 0)
	opt2.ZIndex = 5
	opt2.Font = Enum.Font.PermanentMarker
	opt2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	opt2.PlaceholderText = "Option 2"
	opt2.Text = ""
	opt2.TextColor3 = Color3.fromRGB(0, 0, 0)
	opt2.TextScaled = true
	opt2.TextSize = 14.000
	opt2.TextWrapped = true

	opt4.Name = "opt4"
	opt4.Parent = Frame
	opt4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	opt4.BackgroundTransparency = 1.000
	opt4.BorderColor3 = Color3.fromRGB(27, 42, 53)
	opt4.Position = UDim2.new(0.464815974, 0, 0.285714269, 0)
	opt4.Size = UDim2.new(0.42443496, 0, 0.0791005418, 0)
	opt4.ZIndex = 5
	opt4.Font = Enum.Font.PermanentMarker
	opt4.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	opt4.PlaceholderText = "Option 4"
	opt4.Text = ""
	opt4.TextColor3 = Color3.fromRGB(0, 0, 0)
	opt4.TextScaled = true
	opt4.TextSize = 14.000
	opt4.TextWrapped = true

	opt3.Name = "opt3"
	opt3.Parent = Frame
	opt3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	opt3.BackgroundTransparency = 1.000
	opt3.BorderColor3 = Color3.fromRGB(27, 42, 53)
	opt3.Position = UDim2.new(0, 0, 0.285714269, 0)
	opt3.Size = UDim2.new(0.42443496, 0, 0.0791005418, 0)
	opt3.ZIndex = 5
	opt3.Font = Enum.Font.PermanentMarker
	opt3.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	opt3.PlaceholderText = "Option 3"
	opt3.Text = ""
	opt3.TextColor3 = Color3.fromRGB(0, 0, 0)
	opt3.TextScaled = true
	opt3.TextSize = 14.000
	opt3.TextWrapped = true

	opt1.Name = "opt1"
	opt1.Parent = Frame
	opt1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	opt1.BackgroundTransparency = 1.000
	opt1.BorderColor3 = Color3.fromRGB(27, 42, 53)
	opt1.Position = UDim2.new(0, 0, 0.171957672, 0)
	opt1.Size = UDim2.new(0.42443496, 0, 0.0791005418, 0)
	opt1.ZIndex = 5
	opt1.Font = Enum.Font.PermanentMarker
	opt1.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	opt1.PlaceholderText = "Option 1"
	opt1.Text = ""
	opt1.TextColor3 = Color3.fromRGB(0, 0, 0)
	opt1.TextScaled = true
	opt1.TextSize = 14.000
	opt1.TextWrapped = true

	startvote.Name = "startvote"
	startvote.Parent = Frame
	startvote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	startvote.BackgroundTransparency = 0.700
	startvote.BorderColor3 = Color3.fromRGB(27, 42, 53)
	startvote.Position = UDim2.new(0.255003214, 0, 0.460317463, 0)
	startvote.Size = UDim2.new(0.42443496, 0, 0.0791005418, 0)
	startvote.ZIndex = 5
	startvote.Font = Enum.Font.PermanentMarker
	startvote.Text = "Start Vote"
	startvote.TextColor3 = Color3.fromRGB(255, 255, 255)
	startvote.TextScaled = true
	startvote.TextSize = 14.000
	startvote.TextStrokeTransparency = 0.000
	startvote.TextWrapped = true

	-- Scripts:

	local function VABPEPS_fake_script() -- Frame.LocalScript 
		local script = Instance.new('WeldConstraint', Frame)

		local text = nil
		local wait = function(time)
			if not time == 0 then
				return task.wait(time)
			else
				return task.wait(1/15)	
			end
		end
		task.spawn(function()
			text = {}
			text.Color = Color3.fromRGB(0,0,0)
			local add = 10
			local k = 1
			while k <= 255 do
				text.Color = Color3.new(k/255,0/255,0/255)
				k = k + add
				wait()
			end
			while true do
				k = 1
				while k <= 255 do
					text.Color = Color3.new(255/255,k/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.Color = Color3.new(255/255 - k/255,255/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.Color = Color3.new(0/255,255/255,k/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.Color = Color3.new(0/255,255/255 - k/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.Color = Color3.new(k/255,0/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.Color = Color3.new(255/255,0/255,255/255 - k/255)
					k = k + add
					wait()
				end
				while k <= 255 do
					text.Color = Color3.new(255/255 - k/255,0/255,0/255)
					k = k + add
					wait()
				end
			end
		end)
		wait(.1)
		task.spawn(function()
			while wait() do
				script.Parent.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,text.Color),ColorSequenceKeypoint.new(1,Color3.new(0, 0, 0))})
			end
		end)
	end
	coroutine.wrap(VABPEPS_fake_script)()
	local function WUYONK_fake_script() -- Frame.Dragify 
		local script = Instance.new('WeldConstraint', Frame)

		local UIS = game:GetService("UserInputService")
		local function dragify(Frame)
			local dragToggle = nil
			local dragSpeed = 0.50
			local dragInput = nil
			local dragStart = nil
			local dragPos = nil
			local startPos = nil
			local function updateInput(input)
				local Delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end

		dragify(script.Parent)
	end
	coroutine.wrap(WUYONK_fake_script)()
return UI
end

local GUI = createUI()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
function chat(msg)
	ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg, "All")	
end
function startVote()
	local SVoteMSG = "Server vote: "
	SVoteMSG = SVoteMSG.." "..GUI:FindFirstChild("Frame"):FindFirstChild("opt1").Text
		.."="
		..string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt1").Text,1,1)
		.." "
		..GUI:FindFirstChild("Frame"):FindFirstChild("opt2").Text
		.."="
		..string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt2").Text,1,1)
		.." "
		..GUI:FindFirstChild("Frame"):FindFirstChild("opt3").Text
		.."="
		..string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt3").Text,1,1)
		.." "
		..GUI:FindFirstChild("Frame"):FindFirstChild("opt4").Text
		.."="
		..string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt4").Text,1,1)
	local chatTable = {0,0,0,0}
	local playervotedTable = {}
	for _, thing in pairs(game:GetService("Players"):GetPlayers())do
		thing.Chatted:Connect(function(msg:string)
			if not table.find(playervotedTable,thing)then
			table.insert(playervotedTable,thing)
			if msg:upper() == string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt1").Text,1,1):upper() then
			chatTable[1] = chatTable[1] + 1
			end
			if msg:upper() == string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt2").Text,1,1):upper() then
				chatTable[2] = chatTable[2] + 1
			end
			if msg:upper() == string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt3").Text,1,1):upper() then
				chatTable[3] = chatTable[3] + 1
			end
			if msg:upper() == string.sub(GUI:FindFirstChild("Frame"):FindFirstChild("opt4").Text,1,1):upper() then
				chatTable[4] = chatTable[4] + 1
				end
				else
				chat("As a reminder, you cant vote twice.")
				end
		end)
	end
	chat(SVoteMSG)
	chat("20 seconds left")
	task.wait(5)
	chat("15 seconds left")
	task.wait(5)
	chat("10 seconds left")
	task.wait(5)
	chat("5 seconds left")
	task.wait(5)
	chat("Times up.")
	local highestnumber = 0
	local highestnumberkey = 0
	for i, v in pairs(chatTable) do
		local number = tonumber(v)
		if number > highestnumber then
			highestnumber = number
			highestnumberkey = i
		end
	end
	chat(GUI:FindFirstChild("Frame"):FindFirstChild("opt"..highestnumberkey).Text.." won the vote.")
end
GUI:FindFirstChild("Frame"):FindFirstChild("startvote").Activated:Connect(startVote)