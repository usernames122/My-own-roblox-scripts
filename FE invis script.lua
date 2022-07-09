local char = game:GetService("Players").LocalPlayer.Character
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
while task.wait() do
char:PivotTo(CFrame.new(0,999999999,0))
end
