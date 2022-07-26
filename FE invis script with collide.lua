local char = game:GetService("Players").LocalPlayer.Character
local ContextActionService = game:GetService("ContextActionService")
 
local charpos =char:GetPivot()
char.Archivable = true
for _, thing in pairs(char:GetDescendants())do
char.Archivable = true
end
local fakechar = char:Clone()
game:GetService("Players").LocalPlayer.Character = fakechar
task.wait()fakechar:PivotTo(charpos)
fakechar.Parent = workspace
workspace.CurrentCamera.CameraSubject= fakechar:FindFirstChildOfClass("Humanoid")
task.spawn(function()
while task.wait(.2) do
char:PivotTo(CFrame.new(0,999999999,0))
end
    end)
-- A car horn sound
local honkSound = Instance.new("Sound", workspace)
honkSound.Looped = true
honkSound.SoundId = "rbxassetid://3017580236"
 
local function handleAction(actionName, inputState, inputObject)
char:PivotTo(fakechar:GetPivot())
end
 
-- When the player sits in the vehicle:
ContextActionService:BindAction("Collide", handleAction, true, Enum.KeyCode.H, Enum.KeyCode.ButtonY)
 
