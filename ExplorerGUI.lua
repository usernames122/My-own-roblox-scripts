-- Instances:

local ExplorerGUI = Instance.new("ScreenGui")
local ExplorerCloose = Instance.new("Frame")
local Open = Instance.new("TextButton")
local ExplorerOopen = Instance.new("Frame")
local Open_2 = Instance.new("TextButton")
local ExplorerPanel = Instance.new("Frame")

--Properties:

ExplorerGUI.Name = "Explorer GUI"
ExplorerGUI.Parent = game.CoreGui

ExplorerCloose.Name = "ExplorerCloose"
ExplorerCloose.Parent = ExplorerGUI
ExplorerCloose.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ExplorerCloose.BorderSizePixel = 0
ExplorerCloose.Size = UDim2.new(0, 0, 0, 100)
ExplorerCloose.Visible = false
ExplorerCloose.Style = Enum.FrameStyle.RobloxRound

Open.Name = "Open"
Open.Parent = ExplorerCloose
Open.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Open.BorderColor3 = Color3.fromRGB(255, 255, 255)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 4, 0, 494)
Open.Size = UDim2.new(0, 70, 0, 20)
Open.ZIndex = 10
Open.AutoButtonColor = false
Open.Font = Enum.Font.ArialBold
Open.Text = "Close"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextSize = 14.000
Open.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)

ExplorerOopen.Name = "ExplorerOopen"
ExplorerOopen.Parent = ExplorerGUI
ExplorerOopen.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ExplorerOopen.BorderSizePixel = 0
ExplorerOopen.Size = UDim2.new(0, 0, 0, 100)
ExplorerOopen.Style = Enum.FrameStyle.RobloxRound

Open_2.Name = "Open"
Open_2.Parent = ExplorerOopen
Open_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Open_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Open_2.BorderSizePixel = 0
Open_2.Position = UDim2.new(0, 4, 0, 494)
Open_2.Size = UDim2.new(0, 70, 0, 20)
Open_2.Font = Enum.Font.ArialBold
Open_2.Text = "Explorer"
Open_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Open_2.TextSize = 14.000
Open_2.TextStrokeTransparency = 0.000

ExplorerPanel.Name = "ExplorerPanel"
ExplorerPanel.Parent = ExplorerGUI
ExplorerPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExplorerPanel.BackgroundTransparency = 0.100
ExplorerPanel.BorderColor3 = Color3.fromRGB(191, 191, 191)
ExplorerPanel.Position = UDim2.new(1, -308, 0, 10)
ExplorerPanel.Size = UDim2.new(0, 300, 1, -250)
ExplorerPanel.Visible = false

-- Scripts:

local function SQXPC_fake_script() -- Open.LocalScript 
	local script = Instance.new('LocalScript', Open)

	local player = game.Players.LocalPlayer
	
	function click()
	player.PlayerGui.AdminGui.ExplorerPanel.Visible = false
	player.PlayerGui.AdminGui.ExplorerOopen.Visible = true
	player.PlayerGui.AdminGui.ExplorerCloose.Visible = false
	player.PlayerGui.AdminGui.PropertiesPanel.Visible = false
	player.PlayerGui.AdminGui.CommandPanel.Visible = false
	player.PlayerGui.AdminGui.OutputPanel.Visible = false
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(SQXPC_fake_script)()
local function OYLRF_fake_script() -- Open_2.LocalScript 
	local script = Instance.new('LocalScript', Open_2)

	local player = game.Players.LocalPlayer
	
	function click()
	player.PlayerGui.AdminGui.ExplorerPanel.Visible = true
	player.PlayerGui.AdminGui.ExplorerOopen.Visible = false
	player.PlayerGui.AdminGui.ExplorerCloose.Visible = true
	player.PlayerGui.AdminGui.PropertiesPanel.Visible = true
	--player.PlayerGui.AdminGui.CommandPanel.Visible = true
	--player.PlayerGui.AdminGui.OutputPanel.Visible = true
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(OYLRF_fake_script)()
local function ILTPN_fake_script() -- ExplorerPanel.LocalScript 
	local script = Instance.new('LocalScript', ExplorerPanel)

	-- initial states
	local Option = {
		-- can modify objects
		Modifiable = true;
		-- can select objects
		Selectable = true;
	}
	
	-- general size of GUI objects, in pixels
	local GUI_SIZE = 16
	-- padding between items within each entry
	local ENTRY_PADDING = 1
	-- padding between each entry
	local ENTRY_MARGIN = 1
	
	--[[
	
	# Explorer Panel
	
	A GUI panel that displays the game hierarchy.
	
	
	## Selection Bindables
	
	- `Function GetSelection ( )`
	
		Returns an array of objects representing the objects currently
		selected in the panel.
	
	- `Function SetSelection ( Objects selection )`
	
		Sets the objects that are selected in the panel. `selection` is an array
		of objects.
	
	- `Event SelectionChanged ( )`
	
		Fired after the selection changes.
	
	
	## Option Bindables
	
	- `Function GetOption ( string optionName )`
	
		If `optionName` is given, returns the value of that option. Otherwise,
		returns a table of options and their current values.
	
	- `Function SetOption ( string optionName, bool value )`
	
		Sets `optionName` to `value`.
	
		Options:
	
		- Modifiable
	
			Whether objects can be modified by the panel.
	
			Note that modifying objects depends on being able to select them. If
			Selectable is false, then Actions will not be available. Reparenting
			is still possible, but only for the dragged object.
	
		- Selectable
	
			Whether objects can be selected.
	
			If Modifiable is false, then left-clicking will perform a drag
			selection.
	
	## Updates
	
	- 2013-09-18
		- Fixed explorer icons to match studio explorer.
	
	- 2013-09-14
		- Added GetOption and SetOption bindables.
			- Option: Modifiable; sets whether objects can be modified by the panel.
			- Option: Selectable; sets whether objects can be selected.
		- Slight modification to left-click selection behavior.
		- Improved layout and scaling.
	
	- 2013-09-13
		- Added drag to reparent objects.
			- Left-click to select/deselect object.
			- Left-click and drag unselected object to reparent single object.
			- Left-click and drag selected object to move reparent entire selection.
			- Right-click while dragging to cancel.
	
	- 2013-09-11
		- Added explorer panel header with actions.
			- Added Cut action.
			- Added Copy action.
			- Added Paste action.
			- Added Delete action.
		- Added drag selection.
			- Left-click: Add to selection on drag.
			- Right-click: Add to or remove from selection on drag.
		- Ensured SelectionChanged fires only when the selection actually changes.
		- Added documentation and change log.
		- Fixed thread issue.
	
	- 2013-09-09
		- Added basic multi-selection.
			- Left-click to set selection.
			- Right-click to add to or remove from selection.
		- Removed "Selection" ObjectValue.
			- Added GetSelection BindableFunction.
			- Added SetSelection BindableFunction.
			- Added SelectionChanged BindableEvent.
		- Changed font to SourceSans.
	
	- 2013-08-31
		- Improved GUI sizing based off of `GUI_SIZE` constant.
		- Automatic font size detection.
	
	- 2013-08-27
		- Initial explorer panel.
	
	
	## Todo
	
	- Sorting
		- by ExplorerOrder
		- by children
		- by name
	- Drag objects to reparent
	
	]]
	
	local ENTRY_SIZE = GUI_SIZE + ENTRY_PADDING*2
	local ENTRY_BOUND = ENTRY_SIZE + ENTRY_MARGIN
	local HEADER_SIZE = ENTRY_SIZE
	
	local FONT = 'SourceSans'
	local FONT_SIZE do
		local size = {8,9,10,11,12,14,18,24,36,48}
		local s
		local n = math.huge
		for i = 1,#size do
			if size[i] <= GUI_SIZE then
				FONT_SIZE = i - 1
			end
		end
	end
	
	local GuiColor = {
		Background      = Color3.new(233/255, 233/255, 233/255);
		Border          = Color3.new(149/255, 149/255, 149/255);
		Selected        = Color3.new( 96/255, 140/255, 211/255);
		BorderSelected  = Color3.new( 86/255, 125/255, 188/255);
		Text            = Color3.new(  0/255,   0/255,   0/255);
		TextDisabled    = Color3.new(128/255, 128/255, 128/255);
		TextSelected    = Color3.new(255/255, 255/255, 255/255);
		Button          = Color3.new(221/255, 221/255, 221/255);
		ButtonBorder    = Color3.new(149/255, 149/255, 149/255);
		ButtonSelected  = Color3.new(255/255,   0/255,   0/255);
		Field           = Color3.new(255/255, 255/255, 255/255);
		FieldBorder     = Color3.new(191/255, 191/255, 191/255);
		TitleBackground = Color3.new(178/255, 178/255, 178/255);
	}
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	---- Icon map constants
	
	local MAP_ID = 129293660
	
	-- Indices based on implementation of Icon function.
	local ACTION_CUT         = 160
	local ACTION_COPY        = 161
	local ACTION_PASTE       = 162
	local ACTION_DELETE      = 163
	local ACTION_SORT        = 164
	local ACTION_CUT_OVER    = 174
	local ACTION_COPY_OVER   = 175
	local ACTION_PASTE_OVER  = 176
	local ACTION_DELETE_OVER = 177
	local ACTION_SORT_OVER   = 178
	
	local NODE_COLLAPSED      = 165
	local NODE_EXPANDED       = 166
	local NODE_COLLAPSED_OVER = 179
	local NODE_EXPANDED_OVER  = 180
	
	local ExplorerIndex = {
		["Accoutrement"] = 32;
		["Animation"] = 60;
		["AnimationTrack"] = 60;
		["ArcHandles"] = 56;
		["Backpack"] = 20;
		["BillboardGui"] = 64;
		["BindableEvent"] = 67;
		["BindableFunction"] = 66;
		["BlockMesh"] = 8;
		["BodyAngularVelocity"] = 14;
		["BodyForce"] = 14;
		["BodyGyro"] = 14;
		["BodyPosition"] = 14;
		["BodyThrust"] = 14;
		["BodyVelocity"] = 14;
		["BoolValue"] = 4;
		["BrickColorValue"] = 4;
		["Camera"] = 5;
		["CFrameValue"] = 4;
		["CharacterMesh"] = 60;
		["ClickDetector"] = 41;
		["Color3Value"] = 4;
		["Configuration"] = 58;
		["CoreGui"] = 46;
		["CornerWedgePart"] = 1;
		["CustomEvent"] = 4;
		["CustomEventReceiver"] = 4;
		["CylinderMesh"] = 8;
		["Debris"] = 30;
		["Decal"] = 7;
		["Dialog"] = 62;
		["DialogChoice"] = 63;
		["DoubleConstrainedValue"] = 4;
		["Explosion"] = 36;
		["Fire"] = 61;
		["Flag"] = 38;
		["FlagStand"] = 39;
		["FloorWire"] = 4;
		["ForceField"] = 37;
		["Frame"] = 48;
		["GuiButton"] = 52;
		["GuiMain"] = 47;
		["Handles"] = 53;
		["Hat"] = 45;
		["Hint"] = 33;
		["HopperBin"] = 22;
		["Humanoid"] = 9;
		["ImageButton"] = 52;
		["ImageLabel"] = 49;
		["IntConstrainedValue"] = 4;
		["IntValue"] = 4;
		["JointInstance"] = 34;
		["Keyframe"] = 60;
		["Lighting"] = 13;
		["LocalScript"] = 18;
		["MarketplaceService"] = 46;
		["Message"] = 33;
		["Model"] = 2;
		["NetworkClient"] = 16;
		["NetworkReplicator"] = 29;
		["NetworkServer"] = 15;
		["NumberValue"] = 4;
		["ObjectValue"] = 4;
		["Pants"] = 44;
		["ParallelRampPart"] = 1;
		["Part"] = 1;
		["PartPairLasso"] = 57;
		["Platform"] = 35;
		["Player"] = 12;
		["PlayerGui"] = 46;
		["Players"] = 21;
		["PointLight"] = 13;
		["Pose"] = 60;
		["PrismPart"] = 1;
		["PyramidPart"] = 1;
		["RayValue"] = 4;
		["ReplicatedStorage"] = 0;
		["RightAngleRampPart"] = 1;
		["RocketPropulsion"] = 14;
		["ScreenGui"] = 47;
		["Script"] = 6;
		["Seat"] = 35;
		["SelectionBox"] = 54;
		["SelectionPartLasso"] = 57;
		["SelectionPointLasso"] = 57;
		["ServerScriptService"] = 0;
		["ServerStorage"] = 0;
		["Shirt"] = 43;
		["ShirtGraphic"] = 40;
		["SkateboardPlatform"] = 35;
		["Sky"] = 28;
		["Smoke"] = 59;
		["Sound"] = 11;
		["SoundService"] = 31;
		["Sparkles"] = 42;
		["SpawnLocation"] = 25;
		["SpecialMesh"] = 8;
		["SpotLight"] = 13;
		["StarterGear"] = 20;
		["StarterGui"] = 46;
		["StarterPack"] = 20;
		["Status"] = 2;
		["StringValue"] = 4;
		["SurfaceSelection"] = 55;
		["Team"] = 24;
		["Teams"] = 23;
		["Terrain"] = 65;
		["TestService"] = 68;
		["TextBox"] = 51;
		["TextButton"] = 51;
		["TextLabel"] = 50;
		["Texture"] = 10;
		["TextureTrail"] = 4;
		["Tool"] = 17;
		["TouchTransmitter"] = 37;
		["TrussPart"] = 1;
		["Vector3Value"] = 4;
		["VehicleSeat"] = 35;
		["WedgePart"] = 1;
		["Weld"] = 34;
		["Workspace"] = 19;
	}
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	
	function Create(ty,data)
		local obj
		if type(ty) == 'string' then
			obj = Instance.new(ty)
		else
			obj = ty
		end
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
	
	-- Connects a function to an event such that it fires asynchronously
	function Connect(event,func)
		return event:connect(function(...)
			local a = {...}
			Spawn(function() func(unpack(a)) end)
		end)
	end
	
	-- returns the ascendant ScreenGui of an object
	function GetScreen(screen)
		if screen == nil then return nil end
		while not screen:IsA("ScreenGui") do
			screen = screen.Parent
			if screen == nil then return nil end
		end
		return screen
	end
	
	do
		local ZIndexLock = {}
		-- Sets the ZIndex of an object and its descendants. Objects are locked so
		-- that SetZIndexOnChanged doesn't spawn multiple threads that set the
		-- ZIndex of the same object.
		function SetZIndex(object,z)
			if not ZIndexLock[object] then
				ZIndexLock[object] = true
				if object:IsA'GuiObject' then
					object.ZIndex = z
				end
				local children = object:GetChildren()
				for i = 1,#children do
					SetZIndex(children[i],z)
				end
				ZIndexLock[object] = nil
			end
		end
	
		function SetZIndexOnChanged(object)
			return object.Changed:connect(function(p)
				if p == "ZIndex" then
					SetZIndex(object,object.ZIndex)
				end
			end)
		end
	end
	
	---- IconMap ----
	-- Image size: 256px x 256px
	-- Icon size: 16px x 16px
	-- Padding between each icon: 2px
	-- Padding around image edge: 1px
	-- Total icons: 14 x 14 (196)
	local Icon do
		local iconMap = 'http://www.roblox.com/asset/?id=' .. MAP_ID
		Game:GetService('ContentProvider'):Preload(iconMap)
		local iconDehash do
			-- 14 x 14, 0-based input, 0-based output
			local f=math.floor
			function iconDehash(h)
				return f(h/14%14),f(h%14)
			end
		end
	
		function Icon(IconFrame,index)
			local row,col = iconDehash(index)
			local mapSize = Vector2.new(256,256)
			local pad,border = 2,1
			local iconSize = 16
	
			local class = 'Frame'
			if type(IconFrame) == 'string' then
				class = IconFrame
				IconFrame = nil
			end
	
			if not IconFrame then
				IconFrame = Create(class,{
					Name = "Icon";
					BackgroundTransparency = 1;
					ClipsDescendants = true;
					Create('ImageLabel',{
						Name = "IconMap";
						Active = false;
						BackgroundTransparency = 1;
						Image = iconMap;
						Size = UDim2.new(mapSize.x/iconSize,0,mapSize.y/iconSize,0);
					});
				})
			end
	
			IconFrame.IconMap.Position = UDim2.new(-col - (pad*(col+1) + border)/iconSize,0,-row - (pad*(row+1) + border)/iconSize,0)
			return IconFrame
		end
	end
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	---- ScrollBar
	do
		-- AutoButtonColor doesn't always reset properly
		local function ResetButtonColor(button)
			local active = button.Active
			button.Active = not active
			button.Active = active
		end
	
		local function ArrowGraphic(size,dir,scaled,template)
			local Frame = Create('Frame',{
				Name = "Arrow Graphic";
				BorderSizePixel = 0;
				Size = UDim2.new(0,size,0,size);
				Transparency = 1;
			})
			if not template then
				template = Instance.new("Frame")
				template.BorderSizePixel = 0
			end
	
			local transform
			if dir == nil or dir == 'Up' then
				function transform(p,s) return p,s end
			elseif dir == 'Down' then
				function transform(p,s) return UDim2.new(0,p.X.Offset,0,size-p.Y.Offset-1),s end
			elseif dir == 'Left' then
				function transform(p,s) return UDim2.new(0,p.Y.Offset,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
			elseif dir == 'Right' then
				function transform(p,s) return UDim2.new(0,size-p.Y.Offset-1,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
			end
	
			local scale
			if scaled then
				function scale(p,s) return UDim2.new(p.X.Offset/size,0,p.Y.Offset/size,0),UDim2.new(s.X.Offset/size,0,s.Y.Offset/size,0) end
			else
				function scale(p,s) return p,s end
			end
	
			local o = math.floor(size/4)
			if size%2 == 0 then
				local n = size/2-1
				for i = 0,n do
					local t = template:Clone()
					local p,s = scale(transform(
						UDim2.new(0,n-i,0,o+i),
						UDim2.new(0,(i+1)*2,0,1)
					))
					t.Position = p
					t.Size = s
					t.Parent = Frame
				end
			else
				local n = (size-1)/2
				for i = 0,n do
					local t = template:Clone()
					local p,s = scale(transform(
						UDim2.new(0,n-i,0,o+i),
						UDim2.new(0,i*2+1,0,1)
					))
					t.Position = p
					t.Size = s
					t.Parent = Frame
				end
			end
			if size%4 > 1 then
				local t = template:Clone()
				local p,s = scale(transform(
					UDim2.new(0,0,0,size-o-1),
					UDim2.new(0,size,0,1)
				))
				t.Position = p
				t.Size = s
				t.Parent = Frame
			end
			return Frame
		end
	
	
		local function GripGraphic(size,dir,spacing,scaled,template)
			local Frame = Create('Frame',{
				Name = "Grip Graphic";
				BorderSizePixel = 0;
				Size = UDim2.new(0,size.x,0,size.y);
				Transparency = 1;
			})
			if not template then
				template = Instance.new("Frame")
				template.BorderSizePixel = 0
			end
	
			spacing = spacing or 2
	
			local scale
			if scaled then
				function scale(p) return UDim2.new(p.X.Offset/size.x,0,p.Y.Offset/size.y,0) end
			else
				function scale(p) return p end
			end
	
			if dir == 'Vertical' then
				for i=0,size.x-1,spacing do
					local t = template:Clone()
					t.Size = scale(UDim2.new(0,1,0,size.y))
					t.Position = scale(UDim2.new(0,i,0,0))
					t.Parent = Frame
				end
			elseif dir == nil or dir == 'Horizontal' then
				for i=0,size.y-1,spacing do
					local t = template:Clone()
					t.Size = scale(UDim2.new(0,size.x,0,1))
					t.Position = scale(UDim2.new(0,0,0,i))
					t.Parent = Frame
				end
			end
	
			return Frame
		end
	
		local mt = {
			__index = {
				GetScrollPercent = function(self)
					return self.ScrollIndex/(self.TotalSpace-self.VisibleSpace)
				end;
				CanScrollDown = function(self)
					return self.ScrollIndex + self.VisibleSpace < self.TotalSpace
				end;
				CanScrollUp = function(self)
					return self.ScrollIndex > 0
				end;
				ScrollDown = function(self)
					self.ScrollIndex = self.ScrollIndex + self.PageIncrement
					self:Update()
				end;
				ScrollUp = function(self)
					self.ScrollIndex = self.ScrollIndex - self.PageIncrement
					self:Update()
				end;
				ScrollTo = function(self,index)
					self.ScrollIndex = index
					self:Update()
				end;
				SetScrollPercent = function(self,percent)
					self.ScrollIndex = math.floor((self.TotalSpace - self.VisibleSpace)*percent + 0.5)
					self:Update()
				end;
			};
		}
		mt.__index.CanScrollRight = mt.__index.CanScrollDown
		mt.__index.CanScrollLeft = mt.__index.CanScrollUp
		mt.__index.ScrollLeft = mt.__index.ScrollUp
		mt.__index.ScrollRight = mt.__index.ScrollDown
	
		function ScrollBar(horizontal)
			-- create row scroll bar
			local ScrollFrame = Create('Frame',{
				Name = "ScrollFrame";
				Position = horizontal and UDim2.new(0,0,1,-GUI_SIZE) or UDim2.new(1,-GUI_SIZE,0,0);
				Size = horizontal and UDim2.new(1,0,0,GUI_SIZE) or UDim2.new(0,GUI_SIZE,1,0);
				BackgroundTransparency = 1;
				Create('ImageButton',{
					Name = "ScrollDown";
					Position = horizontal and UDim2.new(1,-GUI_SIZE,0,0) or UDim2.new(0,0,1,-GUI_SIZE);
					Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE);
					BackgroundColor3 = GuiColor.Button;
					BorderColor3 = GuiColor.Border;
					--BorderSizePixel = 0;
				});
				Create('ImageButton',{
					Name = "ScrollUp";
					Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE);
					BackgroundColor3 = GuiColor.Button;
					BorderColor3 = GuiColor.Border;
					--BorderSizePixel = 0;
				});
				Create('ImageButton',{
					Name = "ScrollBar";
					Size = horizontal and UDim2.new(1,-GUI_SIZE*2,1,0) or UDim2.new(1,0,1,-GUI_SIZE*2);
					Position = horizontal and UDim2.new(0,GUI_SIZE,0,0) or UDim2.new(0,0,0,GUI_SIZE);
					AutoButtonColor = false;
					BackgroundColor3 = Color3.new(0.94902, 0.94902, 0.94902);
					BorderColor3 = GuiColor.Border;
					--BorderSizePixel = 0;
					Create('ImageButton',{
						Name = "ScrollThumb";
						AutoButtonColor = false;
						Size = UDim2.new(0, GUI_SIZE, 0, GUI_SIZE);
						BackgroundColor3 = GuiColor.Button;
						BorderColor3 = GuiColor.Border;
						--BorderSizePixel = 0;
					});
				});
			})
	
			local graphicTemplate = Create('Frame',{
				Name="Graphic";
				BorderSizePixel = 0;
				BackgroundColor3 = GuiColor.Border;
			})
			local graphicSize = GUI_SIZE/2
	
			local ScrollDownFrame = ScrollFrame.ScrollDown
				local ScrollDownGraphic = ArrowGraphic(graphicSize,horizontal and 'Right' or 'Down',true,graphicTemplate)
				ScrollDownGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
				ScrollDownGraphic.Parent = ScrollDownFrame
			local ScrollUpFrame = ScrollFrame.ScrollUp
				local ScrollUpGraphic = ArrowGraphic(graphicSize,horizontal and 'Left' or 'Up',true,graphicTemplate)
				ScrollUpGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
				ScrollUpGraphic.Parent = ScrollUpFrame
			local ScrollBarFrame = ScrollFrame.ScrollBar
			local ScrollThumbFrame = ScrollBarFrame.ScrollThumb
			do
				local size = GUI_SIZE*3/8
				local Decal = GripGraphic(Vector2.new(size,size),horizontal and 'Vertical' or 'Horizontal',2,graphicTemplate)
				Decal.Position = UDim2.new(0.5,-size/2,0.5,-size/2)
				Decal.Parent = ScrollThumbFrame
			end
	
			local Class = setmetatable({
				GUI = ScrollFrame;
				ScrollIndex = 0;
				VisibleSpace = 0;
				TotalSpace = 0;
				PageIncrement = 1;
			},mt)
	
			local UpdateScrollThumb
			if horizontal then
				function UpdateScrollThumb()
					ScrollThumbFrame.Size = UDim2.new(Class.VisibleSpace/Class.TotalSpace,0,0,GUI_SIZE)
					if ScrollThumbFrame.AbsoluteSize.x < GUI_SIZE then
						ScrollThumbFrame.Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE)
					end
					local barSize = ScrollBarFrame.AbsoluteSize.x
					ScrollThumbFrame.Position = UDim2.new(Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.x)/barSize,0,0,0)
				end
			else
				function UpdateScrollThumb()
					ScrollThumbFrame.Size = UDim2.new(0,GUI_SIZE,Class.VisibleSpace/Class.TotalSpace,0)
					if ScrollThumbFrame.AbsoluteSize.y < GUI_SIZE then
						ScrollThumbFrame.Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE)
					end
					local barSize = ScrollBarFrame.AbsoluteSize.y
					ScrollThumbFrame.Position = UDim2.new(0,0,Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.y)/barSize,0)
				end
			end
	
			local lastDown
			local lastUp
			local scrollStyle = {BackgroundColor3=GuiColor.Border,BackgroundTransparency=0}
			local scrollStyle_ds = {BackgroundColor3=GuiColor.Border,BackgroundTransparency=0.7}
	
			local function Update()
				local t = Class.TotalSpace
				local v = Class.VisibleSpace
				local s = Class.ScrollIndex
				if v <= t then
					if s > 0 then
						if s + v > t then
							Class.ScrollIndex = t - v
						end
					else
						Class.ScrollIndex = 0
					end
				else
					Class.ScrollIndex = 0
				end
	
				if Class.UpdateCallback then
					if Class.UpdateCallback(Class) == false then
						return
					end
				end
	
				local down = Class:CanScrollDown()
				local up = Class:CanScrollUp()
				if down ~= lastDown then
					lastDown = down
					ScrollDownFrame.Active = down
					ScrollDownFrame.AutoButtonColor = down
					local children = ScrollDownGraphic:GetChildren()
					local style = down and scrollStyle or scrollStyle_ds
					for i = 1,#children do
						Create(children[i],style)
					end
				end
				if up ~= lastUp then
					lastUp = up
					ScrollUpFrame.Active = up
					ScrollUpFrame.AutoButtonColor = up
					local children = ScrollUpGraphic:GetChildren()
					local style = up and scrollStyle or scrollStyle_ds
					for i = 1,#children do
						Create(children[i],style)
					end
				end
				ScrollThumbFrame.Visible = down or up
				UpdateScrollThumb()
			end
			Class.Update = Update
	
			SetZIndexOnChanged(ScrollFrame)
	
			local MouseDrag = Create('ImageButton',{
				Name = "MouseDrag";
				Position = UDim2.new(-0.25,0,-0.25,0);
				Size = UDim2.new(1.5,0,1.5,0);
				Transparency = 1;
				AutoButtonColor = false;
				Active = true;
				ZIndex = 10;
			})
	
			local scrollEventID = 0
			ScrollDownFrame.MouseButton1Down:connect(function()
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollDownFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				Class:ScrollDown()
				wait(0.2) -- delay before auto scroll
				while scrollEventID == current do
					Class:ScrollDown()
					if not Class:CanScrollDown() then break end
					wait()
				end
			end)
	
			ScrollDownFrame.MouseButton1Up:connect(function()
				scrollEventID = tick()
			end)
	
			ScrollUpFrame.MouseButton1Down:connect(function()
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				Class:ScrollUp()
				wait(0.2)
				while scrollEventID == current do
					Class:ScrollUp()
					if not Class:CanScrollUp() then break end
					wait()
				end
			end)
	
			ScrollUpFrame.MouseButton1Up:connect(function()
				scrollEventID = tick()
			end)
	
			if horizontal then
				ScrollBarFrame.MouseButton1Down:connect(function(x,y)
					scrollEventID = tick()
					local current = scrollEventID
					local up_con
					up_con = MouseDrag.MouseButton1Up:connect(function()
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollUpFrame)
						up_con:disconnect(); drag = nil
					end)
					MouseDrag.Parent = GetScreen(ScrollFrame)
					if x > ScrollThumbFrame.AbsolutePosition.x then
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait(0.2)
						while scrollEventID == current do
							if x < ScrollThumbFrame.AbsolutePosition.x + ScrollThumbFrame.AbsoluteSize.x then break end
							Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
							wait()
						end
					else
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait(0.2)
						while scrollEventID == current do
							if x > ScrollThumbFrame.AbsolutePosition.x then break end
							Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
							wait()
						end
					end
				end)
			else
				ScrollBarFrame.MouseButton1Down:connect(function(x,y)
					scrollEventID = tick()
					local current = scrollEventID
					local up_con
					up_con = MouseDrag.MouseButton1Up:connect(function()
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollUpFrame)
						up_con:disconnect(); drag = nil
					end)
					MouseDrag.Parent = GetScreen(ScrollFrame)
					if y > ScrollThumbFrame.AbsolutePosition.y then
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait(0.2)
						while scrollEventID == current do
							if y < ScrollThumbFrame.AbsolutePosition.y + ScrollThumbFrame.AbsoluteSize.y then break end
							Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
							wait()
						end
					else
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait(0.2)
						while scrollEventID == current do
							if y > ScrollThumbFrame.AbsolutePosition.y then break end
							Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
							wait()
						end
					end
				end)
			end
	
			if horizontal then
				ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
					scrollEventID = tick()
					local mouse_offset = x - ScrollThumbFrame.AbsolutePosition.x
					local drag_con
					local up_con
					drag_con = MouseDrag.MouseMoved:connect(function(x,y)
						local bar_abs_pos = ScrollBarFrame.AbsolutePosition.x
						local bar_drag = ScrollBarFrame.AbsoluteSize.x - ScrollThumbFrame.AbsoluteSize.x
						local bar_abs_one = bar_abs_pos + bar_drag
						x = x - mouse_offset
						x = x < bar_abs_pos and bar_abs_pos or x > bar_abs_one and bar_abs_one or x
						x = x - bar_abs_pos
						Class:SetScrollPercent(x/(bar_drag))
					end)
					up_con = MouseDrag.MouseButton1Up:connect(function()
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end)
					MouseDrag.Parent = GetScreen(ScrollFrame)
				end)
			else
				ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
					scrollEventID = tick()
					local mouse_offset = y - ScrollThumbFrame.AbsolutePosition.y
					local drag_con
					local up_con
					drag_con = MouseDrag.MouseMoved:connect(function(x,y)
						local bar_abs_pos = ScrollBarFrame.AbsolutePosition.y
						local bar_drag = ScrollBarFrame.AbsoluteSize.y - ScrollThumbFrame.AbsoluteSize.y
						local bar_abs_one = bar_abs_pos + bar_drag
						y = y - mouse_offset
						y = y < bar_abs_pos and bar_abs_pos or y > bar_abs_one and bar_abs_one or y
						y = y - bar_abs_pos
						Class:SetScrollPercent(y/(bar_drag))
					end)
					up_con = MouseDrag.MouseButton1Up:connect(function()
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end)
					MouseDrag.Parent = GetScreen(ScrollFrame)
				end)
			end
	
			function Class:Destroy()
				ScrollFrame:Destroy()
				MouseDrag:Destroy()
				for k in pairs(Class) do
					Class[k] = nil
				end
				setmetatable(Class,nil)
			end
	
			Update()
	
			return Class
		end
	end
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	---- Explorer panel
	
	local explorerPanel = script.Parent
	Create(explorerPanel,{
		BackgroundColor3 = GuiColor.Field;
		BorderColor3 = GuiColor.Border;
		Active = true;
	})
	
	local listFrame = Create('Frame',{
		Name = "List";
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Position = UDim2.new(0,0,0,HEADER_SIZE);
		Size = UDim2.new(1,-GUI_SIZE,1,-HEADER_SIZE);
		Parent = explorerPanel;
	})
	
	local scrollBar = ScrollBar(false)
	scrollBar.PageIncrement = 1
	Create(scrollBar.GUI,{
		Position = UDim2.new(1,-GUI_SIZE,0,HEADER_SIZE);
		Size = UDim2.new(0,GUI_SIZE,1,-HEADER_SIZE);
		Parent = explorerPanel;
	})
	
	local scrollBarH = ScrollBar(true)
	scrollBarH.PageIncrement = GUI_SIZE
	Create(scrollBarH.GUI,{
		Position = UDim2.new(0,0,1,-GUI_SIZE);
		Size = UDim2.new(1,-GUI_SIZE,0,GUI_SIZE);
		Visible = false;
		Parent = explorerPanel;
	})
	
	local headerFrame = Create('Frame',{
		Name = "Header";
		BackgroundColor3 = GuiColor.Background;
		BorderColor3 = GuiColor.Border;
		Position = UDim2.new(0,0,0,0);
		Size = UDim2.new(1,0,0,HEADER_SIZE);
		Parent = explorerPanel;
		Create('TextLabel',{
			Text = "Explorer";
			BackgroundTransparency = 1;
			TextColor3 = GuiColor.Text;
			TextXAlignment = 'Left';
			Font = FONT;
			FontSize = FONT_SIZE;
			Position = UDim2.new(0,4,0,0);
			Size = UDim2.new(1,-4,1,0);
		});
	})
	
	SetZIndexOnChanged(explorerPanel)
	
	local getTextWidth do
		local text = Create('TextLabel',{
			Name = "TextWidth";
			TextXAlignment = 'Left';
			TextYAlignment = 'Center';
			Font = FONT;
			FontSize = FONT_SIZE;
			Text = "";
			Position = UDim2.new(0,0,0,0);
			Size = UDim2.new(1,0,1,0);
			Visible = false;
			Parent = explorerPanel;
		})
		function getTextWidth(s)
			text.Text = s
			return text.TextBounds.x
		end
	end
	
	-- Holds the game tree converted to a list.
	local TreeList = {}
	-- Matches objects to their tree node representation.
	local NodeLookup = {}
	
	local nodeWidth = 0
	
	local updateList,rawUpdateList,updateScroll,rawUpdateSize do
		local function r(t)
			for i = 1,#t do
				TreeList[#TreeList+1] = t[i]
	
				local w = (t[i].Depth)*(2+ENTRY_PADDING+GUI_SIZE) + 2 + ENTRY_SIZE + 4 + getTextWidth(t[i].Object.Name) + 4
				if w > nodeWidth then
					nodeWidth = w
				end
				if t[i].Expanded then
					r(t[i])
				end
			end
		end
	
		function rawUpdateSize()
			scrollBarH.TotalSpace = nodeWidth
			scrollBarH.VisibleSpace = listFrame.AbsoluteSize.x
			scrollBarH:Update()
			local visible = scrollBarH:CanScrollDown() or scrollBarH:CanScrollUp()
			scrollBarH.GUI.Visible = visible
	
			listFrame.Size = UDim2.new(1,-GUI_SIZE,1,-GUI_SIZE*(visible and 1 or 0) - HEADER_SIZE)
	
			scrollBar.VisibleSpace = math.ceil(listFrame.AbsoluteSize.y/ENTRY_BOUND)
			scrollBar.GUI.Size = UDim2.new(0,GUI_SIZE,1,-GUI_SIZE*(visible and 1 or 0) - HEADER_SIZE)
	
			scrollBar.TotalSpace = #TreeList+1
			scrollBar:Update()
		end
	
		function rawUpdateList()
			-- Clear then repopulate the entire list. It appears to be fast enough.
			TreeList = {}
			nodeWidth = 0
			r(NodeLookup[Game])
			rawUpdateSize()
		end
	
		-- Adding or removing large models will cause many updates to occur. We
		-- can reduce the number of updates by creating a delay, then dropping any
		-- updates that occur during the delay.
		local updatingList = false
		function updateList()
			if updatingList then return end
			updatingList = true
			wait(0.25)
			updatingList = false
			rawUpdateList()
		end
	
		local updatingScroll = false
		function updateScroll()
			if updatingScroll then return end
			updatingScroll = true
			wait(0.25)
			updatingScroll = false
			scrollBar:Update()
		end
	end
	
	local Selection do
		local bindGetSelection = script.Parent:FindFirstChild("GetSelection")
		if not bindGetSelection then
			bindGetSelection = Create('BindableFunction',{Name = "GetSelection"})
			bindGetSelection.Parent = script.Parent
		end
	
		local bindSetSelection = script.Parent:FindFirstChild("SetSelection")
		if not bindSetSelection then
			bindSetSelection = Create('BindableFunction',{Name = "SetSelection"})
			bindSetSelection.Parent = script.Parent
		end
	
		local bindSelectionChanged = script.Parent:FindFirstChild("SelectionChanged")
		if not bindSelectionChanged then
			bindSelectionChanged = Create('BindableEvent',{Name = "SelectionChanged"})
			bindSelectionChanged.Parent = script.Parent
		end
	
		local SelectionList = {}
		local SelectionSet = {}
		Selection = {
			Selected = SelectionSet;
			List = SelectionList;
		}
	
		local function addObject(object)
			-- list update
			local lupdate = false
			-- scroll update
			local supdate = false
	
			if not SelectionSet[object] then
				local node = NodeLookup[object]
				if node then
					table.insert(SelectionList,object)
					SelectionSet[object] = true
					node.Selected = true
	
					-- expand all ancestors so that selected node becomes visible
					node = node.Parent
					while node do
						if not node.Expanded then
							node.Expanded = true
							lupdate = true
						end
						node = node.Parent
					end
					supdate = true
				end
			end
			return lupdate,supdate
		end
	
		function Selection:Set(objects)
			local lupdate = false
			local supdate = false
	
			if #SelectionList > 0 then
				for i = 1,#SelectionList do
					local object = SelectionList[i]
					local node = NodeLookup[object]
					if node then
						node.Selected = false
						SelectionSet[object] = nil
					end
				end
	
				SelectionList = {}
				Selection.List = SelectionList
				supdate = true
			end
	
			for i = 1,#objects do
				local l,s = addObject(objects[i])
				lupdate = l or lupdate
				supdate = s or supdate
			end
	
			if lupdate then
				rawUpdateList()
				supdate = true
			elseif supdate then
				scrollBar:Update()
			end
	
			if supdate then
				bindSelectionChanged:Fire()
			end
		end
	
		function Selection:Add(object)
			local l,s = addObject(object)
			if l then
				rawUpdateList()
				bindSelectionChanged:Fire()
			elseif s then
				scrollBar:Update()
				bindSelectionChanged:Fire()
			end
		end
	
		function Selection:Remove(object,noupdate)
			if SelectionSet[object] then
				local node = NodeLookup[object]
				if node then
					node.Selected = false
					SelectionSet[object] = nil
					for i = 1,#SelectionList do
						if SelectionList[i] == object then
							table.remove(SelectionList,i)
							break
						end
					end
	
					if not noupdate then
						scrollBar:Update()
					end
					bindSelectionChanged:Fire()
				end
			end
		end
	
		function Selection:Get()
			local list = {}
			for i = 1,#SelectionList do
				list[i] = SelectionList[i]
			end
			return list
		end
	
		bindSetSelection.OnInvoke = function(...)
			Selection:Set(...)
		end
	
		bindGetSelection.OnInvoke = function()
			return Selection:Get()
		end
	end
	
	local function cancelReparentDrag()end
	local function cancelSelectDrag()end
	do
		local listEntries = {}
		local nameConnLookup = {}
	
		local mouseDrag = Create('ImageButton',{
			Name = "MouseDrag";
			Position = UDim2.new(-0.25,0,-0.25,0);
			Size = UDim2.new(1.5,0,1.5,0);
			Transparency = 1;
			AutoButtonColor = false;
			Active = true;
			ZIndex = 10;
		})
		local function dragSelect(last,add,button)
			local connDrag
			local conUp
	
			conDrag = mouseDrag.MouseMoved:connect(function(x,y)
				local pos = Vector2.new(x,y) - listFrame.AbsolutePosition
				local size = listFrame.AbsoluteSize
				if pos.x < 0 or pos.x > size.x or pos.y < 0 or pos.y > size.y then return end
	
				local i = math.ceil(pos.y/ENTRY_BOUND) + scrollBar.ScrollIndex
				-- Mouse may have made a large step, so interpolate between the
				-- last index and the current.
				for n = i<last and i or last, i>last and i or last do
					local node = TreeList[n]
					if node then
						if add then
							Selection:Add(node.Object)
						else
							Selection:Remove(node.Object)
						end
					end
				end
				last = i
			end)
	
			function cancelSelectDrag()
				mouseDrag.Parent = nil
				conDrag:disconnect()
				conUp:disconnect()
				function cancelSelectDrag()end
			end
	
			conUp = mouseDrag[button]:connect(cancelSelectDrag)
	
			mouseDrag.Parent = GetScreen(listFrame)
		end
	
		local function dragReparent(object,dragGhost,clickPos,ghostOffset)
			local connDrag
			local conUp
			local conUp2
	
			local parentIndex = nil
			local dragged = false
	
			local parentHighlight = Create('Frame',{
				Transparency = 1;
				Visible = false;
				Create('Frame',{
					BorderSizePixel = 0;
					BackgroundColor3 = Color3.new(0,0,0);
					BackgroundTransparency = 0.1;
					Position = UDim2.new(0,0,0,0);
					Size = UDim2.new(1,0,0,1);
				});
				Create('Frame',{
					BorderSizePixel = 0;
					BackgroundColor3 = Color3.new(0,0,0);
					BackgroundTransparency = 0.1;
					Position = UDim2.new(1,0,0,0);
					Size = UDim2.new(0,1,1,0);
				});
				Create('Frame',{
					BorderSizePixel = 0;
					BackgroundColor3 = Color3.new(0,0,0);
					BackgroundTransparency = 0.1;
					Position = UDim2.new(0,0,1,0);
					Size = UDim2.new(1,0,0,1);
				});
				Create('Frame',{
					BorderSizePixel = 0;
					BackgroundColor3 = Color3.new(0,0,0);
					BackgroundTransparency = 0.1;
					Position = UDim2.new(0,0,0,0);
					Size = UDim2.new(0,1,1,0);
				});
			})
			SetZIndex(parentHighlight,9)
	
			conDrag = mouseDrag.MouseMoved:connect(function(x,y)
				local dragPos = Vector2.new(x,y)
				if dragged then
					local pos = dragPos - listFrame.AbsolutePosition
					local size = listFrame.AbsoluteSize
	
					parentIndex = nil
					parentHighlight.Visible = false
					if pos.x >= 0 and pos.x <= size.x and pos.y >= 0 and pos.y <= size.y then
						local i = math.ceil(pos.y/ENTRY_BOUND)
						local node = TreeList[i + scrollBar.ScrollIndex]
						if node and node.Object ~= object and not object:IsAncestorOf(node.Object) then
							parentIndex = i
							local entry = listEntries[i]
							if entry then
								parentHighlight.Visible = true
								parentHighlight.Position = UDim2.new(0,1,0,entry.AbsolutePosition.y-listFrame.AbsolutePosition.y)
								parentHighlight.Size = UDim2.new(0,size.x-4,0,entry.AbsoluteSize.y)
							end
						end
					end
	
					dragGhost.Position = UDim2.new(0,dragPos.x+ghostOffset.x,0,dragPos.y+ghostOffset.y)
				elseif (clickPos-dragPos).magnitude > 8 then
					dragged = true
					SetZIndex(dragGhost,9)
					dragGhost.IndentFrame.Transparency = 0.25
					dragGhost.IndentFrame.EntryText.TextColor3 = GuiColor.TextSelected
					dragGhost.Position = UDim2.new(0,dragPos.x+ghostOffset.x,0,dragPos.y+ghostOffset.y)
					dragGhost.Parent = GetScreen(listFrame)
					parentHighlight.Parent = listFrame
				end
			end)
	
			function cancelReparentDrag()
				mouseDrag.Parent = nil
				conDrag:disconnect()
				conUp:disconnect()
				conUp2:disconnect()
				dragGhost:Destroy()
				parentHighlight:Destroy()
				function cancelReparentDrag()end
			end
	
			local wasSelected = Selection.Selected[object]
			if not wasSelected and Option.Selectable then
				Selection:Set({object})
			end
	
			conUp = mouseDrag.MouseButton1Up:connect(function()
				cancelReparentDrag()
				if dragged then
					if parentIndex then
						local parentNode = TreeList[parentIndex + scrollBar.ScrollIndex]
						if parentNode then
							parentNode.Expanded = true
	
							local parentObj = parentNode.Object
							local function parent(a,b)
								a.Parent = b
							end
							if Option.Selectable then
								local list = Selection.List
								for i = 1,#list do
									pcall(parent,list[i],parentObj)
								end
							else
								pcall(parent,object,parentObj)
							end
						end
					end
				else
					-- do selection click
					if wasSelected and Option.Selectable then
						Selection:Set({})
					end
				end
			end)
			conUp2 = mouseDrag.MouseButton2Down:connect(function()
				cancelReparentDrag()
			end)
	
			mouseDrag.Parent = GetScreen(listFrame)
		end
	
		local entryTemplate = Create('ImageButton',{
			Name = "Entry";
			Transparency = 1;
			AutoButtonColor = false;
			Position = UDim2.new(0,0,0,0);
			Size = UDim2.new(1,0,0,ENTRY_SIZE);
			Create('Frame',{
				Name = "IndentFrame";
				BackgroundTransparency = 1;
				BackgroundColor3 = GuiColor.Selected;
				BorderColor3 = GuiColor.BorderSelected;
				Position = UDim2.new(0,0,0,0);
				Size = UDim2.new(1,0,1,0);
				Create(Icon('ImageButton',0),{
					Name = "Expand";
					AutoButtonColor = false;
					Position = UDim2.new(0,-GUI_SIZE,0.5,-GUI_SIZE/2);
					Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE);
				});
				Create(Icon(nil,0),{
					Name = "ExplorerIcon";
					Position = UDim2.new(0,2+ENTRY_PADDING,0.5,-GUI_SIZE/2);
					Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE);
				});
				Create('TextLabel',{
					Name = "EntryText";
					BackgroundTransparency = 1;
					TextColor3 = GuiColor.Text;
					TextXAlignment = 'Left';
					TextYAlignment = 'Center';
					Font = FONT;
					FontSize = FONT_SIZE;
					Text = "";
					Position = UDim2.new(0,2+ENTRY_SIZE+4,0,0);
					Size = UDim2.new(1,-2,1,0);
				});
			});
		})
	
		function scrollBar.UpdateCallback(self)
			for i = 1,self.VisibleSpace do
				local node = TreeList[i + self.ScrollIndex]
				if node then
					local entry = listEntries[i]
					if not entry then
						entry = Create(entryTemplate:Clone(),{
							Position = UDim2.new(0,2,0,ENTRY_BOUND*(i-1)+2);
							Size = UDim2.new(0,nodeWidth,0,ENTRY_SIZE);
							ZIndex = listFrame.ZIndex;
						})
						listEntries[i] = entry
	
						local expand = entry.IndentFrame.Expand
						expand.MouseEnter:connect(function()
							local node = TreeList[i + self.ScrollIndex]
							if #node > 0 then
								if node.Expanded then
									Icon(expand,NODE_EXPANDED_OVER)
								else
									Icon(expand,NODE_COLLAPSED_OVER)
								end
							end
						end)
						expand.MouseLeave:connect(function()
							local node = TreeList[i + self.ScrollIndex]
							if #node > 0 then
								if node.Expanded then
									Icon(expand,NODE_EXPANDED)
								else
									Icon(expand,NODE_COLLAPSED)
								end
							end
						end)
						expand.MouseButton1Down:connect(function()
							local node = TreeList[i + self.ScrollIndex]
							if #node > 0 then
								node.Expanded = not node.Expanded
								-- use raw update so the list updates instantly
								rawUpdateList()
							end
						end)
	
						entry.MouseButton1Down:connect(function(x,y)
							local node = TreeList[i + self.ScrollIndex]
							if Option.Modifiable then
								local pos = Vector2.new(x,y)
								dragReparent(node.Object,entry:Clone(),pos,entry.AbsolutePosition-pos)
							elseif Option.Selectable then
								if Selection.Selected[node.Object] then
									Selection:Set({})
								else
									Selection:Set({node.Object})
								end
								dragSelect(i+self.ScrollIndex,true,'MouseButton1Up')
							end
						end)
	
						entry.MouseButton2Down:connect(function()
							if not Option.Selectable then return end
	
							local node = TreeList[i + self.ScrollIndex]
							if Selection.Selected[node.Object] then
								Selection:Remove(node.Object)
								dragSelect(i+self.ScrollIndex,false,'MouseButton2Up')
							else
								Selection:Add(node.Object)
								dragSelect(i+self.ScrollIndex,true,'MouseButton2Up')
							end
						end)
	
						entry.Parent = listFrame
					end
	
					entry.Visible = true
	
					local object = node.Object
	
					-- update expand icon
					if #node == 0 then
						entry.IndentFrame.Expand.Visible = false
					elseif node.Expanded then
						Icon(entry.IndentFrame.Expand,NODE_EXPANDED)
						entry.IndentFrame.Expand.Visible = true
					else
						Icon(entry.IndentFrame.Expand,NODE_COLLAPSED)
						entry.IndentFrame.Expand.Visible = true
					end
	
					-- update explorer icon
					Icon(entry.IndentFrame.ExplorerIcon,ExplorerIndex[object.ClassName] or 0)
	
					-- update indentation
					local w = (node.Depth)*(2+ENTRY_PADDING+GUI_SIZE)
					entry.IndentFrame.Position = UDim2.new(0,w,0,0)
					entry.IndentFrame.Size = UDim2.new(1,-w,1,0)
	
					-- update name change detection
					if nameConnLookup[entry] then
						nameConnLookup[entry]:disconnect()
					end
					local text = entry.IndentFrame.EntryText
					text.Text = object.Name
					nameConnLookup[entry] = node.Object.Changed:connect(function(p)
						if p == 'Name' then
							text.Text = object.Name
						end
					end)
	
					-- update selection
					entry.IndentFrame.Transparency = node.Selected and 0 or 1
					text.TextColor3 = GuiColor[node.Selected and 'TextSelected' or 'Text']
	
					entry.Size = UDim2.new(0,nodeWidth,0,ENTRY_SIZE)
				elseif listEntries[i] then
					listEntries[i].Visible = false
				end
			end
			for i = self.VisibleSpace+1,self.TotalSpace do
				local entry = listEntries[i]
				if entry then
					listEntries[i] = nil
					entry:Destroy()
				end
			end
		end
	
		function scrollBarH.UpdateCallback(self)
			for i = 1,scrollBar.VisibleSpace do
				local node = TreeList[i + scrollBar.ScrollIndex]
				if node then
					local entry = listEntries[i]
					if entry then
						entry.Position = UDim2.new(0,2 - scrollBarH.ScrollIndex,0,ENTRY_BOUND*(i-1)+2)
					end
				end
			end
		end
	
		Connect(listFrame.Changed,function(p)
			if p == 'AbsoluteSize' then
				rawUpdateSize()
			end
		end)
	
		local wheelAmount = 6
		explorerPanel.MouseWheelForward:connect(function()
			if scrollBar.VisibleSpace - 1 > wheelAmount then
				scrollBar:ScrollTo(scrollBar.ScrollIndex - wheelAmount)
			else
				scrollBar:ScrollTo(scrollBar.ScrollIndex - scrollBar.VisibleSpace)
			end
		end)
		explorerPanel.MouseWheelBackward:connect(function()
			if scrollBar.VisibleSpace - 1 > wheelAmount then
				scrollBar:ScrollTo(scrollBar.ScrollIndex + wheelAmount)
			else
				scrollBar:ScrollTo(scrollBar.ScrollIndex + scrollBar.VisibleSpace)
			end
		end)
	end
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	---- Object detection
	
	-- Inserts `v` into `t` at `i`. Also sets `Index` field in `v`.
	local function insert(t,i,v)
		for n = #t,i,-1 do
			local v = t[n]
			v.Index = n+1
			t[n+1] = v
		end
		v.Index = i
		t[i] = v
	end
	
	-- Removes `i` from `t`. Also sets `Index` field in removed value.
	local function remove(t,i)
		local v = t[i]
		for n = i+1,#t do
			local v = t[n]
			v.Index = n-1
			t[n-1] = v
		end
		t[#t] = nil
		v.Index = 0
		return v
	end
	
	-- Returns how deep `o` is in the tree.
	local function depth(o)
		local d = -1
		while o do
			o = o.Parent
			d = d + 1
		end
		return d
	end
	
	
	local connLookup = {}
	
	-- Returns whether a node would be present in the tree list
	local function nodeIsVisible(node)
		local visible = true
		node = node.Parent
		while node and visible do
			visible = visible and node.Expanded
			node = node.Parent
		end
		return visible
	end
	
	-- Removes an object's tree node. Called when the object stops existing in the
	-- game tree.
	local function removeObject(object)
		local objectNode = NodeLookup[object]
		if not objectNode then
			return
		end
	
		local visible = nodeIsVisible(objectNode)
	
		Selection:Remove(object,true)
	
		local parent = objectNode.Parent
		remove(parent,objectNode.Index)
		NodeLookup[object] = nil
		connLookup[object]:disconnect()
		connLookup[object] = nil
	
		if visible then
			updateList()
		elseif nodeIsVisible(parent) then
			updateScroll()
		end
	end
	
	-- Moves a tree node to a new parent. Called when an existing object's parent
	-- changes.
	local function moveObject(object,parent)
		local objectNode = NodeLookup[object]
		if not objectNode then
			return
		end
	
		local parentNode = NodeLookup[parent]
		if not parentNode then
			return
		end
	
		local visible = nodeIsVisible(objectNode)
	
		remove(objectNode.Parent,objectNode.Index)
		objectNode.Parent = parentNode
	
		objectNode.Depth = depth(object)
		local function r(node,d)
			for i = 1,#node do
				node[i].Depth = d
				r(node[i],d+1)
			end
		end
		r(objectNode,objectNode.Depth+1)
	
		insert(parentNode,#parentNode+1,objectNode)
	
		if visible or nodeIsVisible(objectNode) then
			updateList()
		elseif nodeIsVisible(objectNode.Parent) then
			updateScroll()
		end
	end
	
	-- ScriptContext['/Libraries/LibraryRegistration/LibraryRegistration']
	-- This RobloxLocked object lets me index its properties for some reason
	
	local function check(object)
		return object.AncestryChanged
	end
	
	-- Creates a new tree node from an object. Called when an object starts
	-- existing in the game tree.
	local function addObject(object,noupdate)
		if script then
			-- protect against naughty RobloxLocked objects
			local s = pcall(check,object)
			if not s then
				return
			end
		end
	
		local parentNode = NodeLookup[object.Parent]
		if not parentNode then
			return
		end
	
		local objectNode = {
			Object = object;
			Parent = parentNode;
			Index = 0;
			Expanded = false;
			Selected = false;
			Depth = depth(object);
		}
	
		connLookup[object] = Connect(object.AncestryChanged,function(c,p)
			if c == object then
				if p == nil then
					removeObject(c)
				else
					moveObject(c,p)
				end
			end
		end)
	
		NodeLookup[object] = objectNode
		insert(parentNode,#parentNode+1,objectNode)
	
		if not noupdate then
			if nodeIsVisible(objectNode) then
				updateList()
			elseif nodeIsVisible(objectNode.Parent) then
				updateScroll()
			end
		end
	end
	
	do
		NodeLookup[Game] = {
			Object = Game;
			Parent = nil;
			Index = 0;
			Expanded = true;
		}
	
		Connect(Game.DescendantAdded,addObject)
		Connect(Game.DescendantRemoving,removeObject)
	
		local function get(o)
			return o:GetChildren()
		end
	
		local function r(o)
			local s,children = pcall(get,o)
			if s then
				for i = 1,#children do
					addObject(children[i],true)
					r(children[i])
				end
			end
		end
	
		r(Game)
	
		scrollBar.VisibleSpace = math.ceil(listFrame.AbsoluteSize.y/ENTRY_BOUND)
		updateList()
	end
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	---- Actions
	
	local actionButtons do
		actionButtons = {}
	
		local totalActions = (4) + 1
		local currentActions = totalActions
		local function makeButton(icon,over,name)
			local button = Create(Icon('ImageButton',icon),{
				Name = name .. "Button";
				Visible = Option.Modifiable and Option.Selectable;
				Position = UDim2.new(1,-(GUI_SIZE+2)*currentActions+2,0.5,-GUI_SIZE/2);
				Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE);
				Parent = headerFrame;
			})
	
			local tipText = Create('TextLabel',{
				Name = name .. "Text";
				Text = name;
				Visible = false;
				BackgroundTransparency = 1;
				TextXAlignment = 'Right';
				Font = FONT;
				FontSize = FONT_SIZE;
				Position = UDim2.new(0,0,0,0);
				Size = UDim2.new(1,-(GUI_SIZE+2)*totalActions,1,0);
				Parent = headerFrame;
			})
	
	
			button.MouseEnter:connect(function()
				Icon(button,over)
				tipText.Visible = true
			end)
			button.MouseLeave:connect(function()
				Icon(button,icon)
				tipText.Visible = false
			end)
	
			currentActions = currentActions - 1
			actionButtons[#actionButtons+1] = button
			return button
		end
	
		local clipboard = {}
		local function delete(o)
			o.Parent = nil
		end
	
		-- CUT
		makeButton(ACTION_CUT,ACTION_CUT_OVER,"Cut").MouseButton1Click:connect(function()
			if not Option.Modifiable then return end
			clipboard = {}
			local list = Selection.List
			local cut = {}
			for i = 1,#list do
				local obj = list[i]:Clone()
				if obj then
					table.insert(clipboard,obj)
					table.insert(cut,list[i])
				end
			end
			for i = 1,#cut do
				pcall(delete,cut[i])
			end
		end)
	
		-- COPY
		makeButton(ACTION_COPY,ACTION_COPY_OVER,"Copy").MouseButton1Click:connect(function()
			if not Option.Modifiable then return end
			clipboard = {}
			local list = Selection.List
			for i = 1,#list do
				table.insert(clipboard,list[i]:Clone())
			end
		end)
	
		-- PASTE
		makeButton(ACTION_PASTE,ACTION_PASTE_OVER,"Paste").MouseButton1Click:connect(function()
			if not Option.Modifiable then return end
			local parent = Selection.List[1] or Workspace
			for i = 1,#clipboard do
				clipboard[i]:Clone().Parent = parent
			end
		end)
	
		-- DELETE
		makeButton(ACTION_DELETE,ACTION_DELETE_OVER,"Delete").MouseButton1Click:connect(function()
			if not Option.Modifiable then return end
			local list = Selection:Get()
			for i = 1,#list do
				pcall(delete,list[i])
			end
			Selection:Set({})
		end)
	
		-- SORT
		-- local actionSort = makeButton(ACTION_SORT,ACTION_SORT_OVER,"Sort")
	end
	
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	----------------------------------------------------------------
	---- Option Bindables
	
	do
		local optionCallback = {
			Modifiable = function(value)
				for i = 1,#actionButtons do
					actionButtons[i].Visible = value and Option.Selectable
				end
				cancelReparentDrag()
			end;
			Selectable = function(value)
				for i = 1,#actionButtons do
					actionButtons[i].Visible = value and Option.Modifiable
				end
				cancelSelectDrag()
				Selection:Set({})
			end;
		}
	
		local bindSetOption = script.Parent:FindFirstChild("SetOption")
		if not bindSetOption then
			bindSetOption = Create('BindableFunction',{Name = "SetOption"})
			bindSetOption.Parent = script.Parent
		end
	
		bindSetOption.OnInvoke = function(optionName,value)
			if optionCallback[optionName] then
				Option[optionName] = value
				optionCallback[optionName](value)
			end
		end
	
		local bindGetOption = script.Parent:FindFirstChild("GetOption")
		if not bindGetOption then
			bindGetOption = Create('BindableFunction',{Name = "GetOption"})
			bindGetOption.Parent = script.Parent
		end
	
		bindGetOption.OnInvoke = function(optionName)
			if optionName then
				return Option[optionName]
			else
				local options = {}
				for k,v in pairs(Option) do
					options[k] = v
				end
				return options
			end
		end
	end
	
end
coroutine.wrap(ILTPN_fake_script)()
