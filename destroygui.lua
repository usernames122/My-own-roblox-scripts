local msg = Instance.new("Message",workspace)msg.Text = "All guis is gonna self destruct in T-5 Seconds."
task.wait(5)
msg:Destroy()
local aud,earrape = Instance.new("Sound",workspace),Instance.new("DistortionSoundEffect")
earrape.Parent = aud
earrape.Level = 1
aud.SoundId = "rbxassetid://274567290"
aud.PlayOnRemove = true
aud:Play()
while task.wait() do
	pcall(function()
		for _,obj in pairs(game:GetDescendants())do
			pcall(function()
				
				if obj:IsA("GuiObject")then
					obj.BackgroundColor3 = BrickColor.random().Color
					obj.BorderColor3 = BrickColor.random().Color
					obj:TweenPosition(UDim2.new(math.random(),0,math.random(),0),Enum.EasingDirection.Out,Enum.EasingStyle.Linear)
				obj.Rotation = math.random(0,360)
					-- do it all tween
				end	
			end)
		end
	end)	
end
