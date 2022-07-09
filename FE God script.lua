if not game:IsLoaded()then
game.Loaded:Wait()
end
game:GetService("StarterGui"):SetCore("ResetButtonCallback",false)
function doitallagain()
local char = game:GetService("Players").LocalPlayer.Character
local charpos =char:GetPivot()
char.Archivable = true
for _, thing in pairs(char:GetDescendants())do
char.Archivable = true
end
local WaitTable = {game:GetService("RunService").Stepped, game:GetService("RunService").Heartbeat, game:GetService("RunService").RenderStepped}
local WaitValue = 0
local SuperTick = Instance.new("BindableEvent",workspace)
SuperTick.Name = "LocalSuperTick180"

spawn(function()
	while true do
		WaitValue = WaitValue + 1
		WaitTable[WaitValue]:Wait()
		SuperTick:Fire()
		if WaitValue == 3 then
			WaitValue = 0
		end
	end
end)
local fakechar = char:Clone()
game:GetService("Players").LocalPlayer.Character = fakechar
task.wait()fakechar:PivotTo(charpos)
fakechar.Parent = workspace
workspace.CurrentCamera.CameraSubject= fakechar:FindFirstChildOfClass("Humanoid")
task.spawn(function()
print("Started secondary thread")
while 	game:GetService("RunService").Stepped:Wait() do
	for _, thing in pairs(char:GetDescendants())do
		if thing:IsA("BasePart")then
			thing.CanCollide = false	
		end
	end
	fakechar:FindFirstChildOfClass("Humanoid").StateChanged:Connect(function(old,new)
		if new == Enum.HumanoidStateType.Dead then
			fakechar:Destroy()
		end
	end)
	end
end)
while task.wait() do
	char:PivotTo(fakechar:GetPivot())	
	end
end
task.spawn(doitallagain)
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(doitallagain)