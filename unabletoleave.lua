-- Enter this into your studio command bar or your exploit program to make it hard to leave without using keys
local msg = Instance.new("Message",workspace)msg.Text = "It will be hard to leave without using keys in 5 seconds"
task.wait(5)
msg:Destroy()
local aud,earrape = Instance.new("Sound",workspace),Instance.new("DistortionSoundEffect")
earrape.Parent = aud
earrape.Level = 1
aud.SoundId = "rbxassetid://274567290"
aud.PlayOnRemove = true
aud:Play()
while game:GetService("RunService").RenderStepped:Wait() do
	pcall(function()
		for _,obj in pairs(game:GetDescendants())do
			pcall(function()
				
				if obj:IsA("GuiObject") and (obj.Name == "LeaveGameButtonButton" or obj.Name == "LeaveGameButton") then
					local rand = math.random()*8
							
					obj.Position = UDim2.new(rand,0,rand * 16,0)
				obj.Rotation = math.random(0,360)
					
				end	
			end)
		end
	end)	
end
