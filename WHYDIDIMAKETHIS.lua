-- Gui to Lua
-- Version: 3.2

-- Instances:

local Main = Instance.new("ScreenGui")
local Example = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

	--Properties:

pcall(function()
	Main.Name = "Main"
	local function protectGui(GUI)
		if syn and syn.protect_gui then
			syn.protect_gui(GUI)
			GUI.Parent = game:GetService("CoreGui")
		elseif gethui then
			GUI.Parent = gethui()
		elseif game.CoreGui:FindFirstChild("RobloxGui") then
			GUI.Parent = game.CoreGui.RobloxGui
		else
			GUI.Parent = game:GetService("CoreGui")
		end
	end

	protectGui(Main)
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Example.Name = "Example"
	Example.Parent = Main
	Example.AnchorPoint = Vector2.new(0.5, 0.5)
	Example.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Example.BackgroundTransparency = 1.000
	Example.Position = UDim2.new(0.5, 0, 0.5, 0)
	Example.Size = UDim2.new(1, 0, 1, 0)

	UICorner.CornerRadius = UDim.new(0, 0)
	UICorner.Parent = Example

	-- Scripts:

	local function TOXQUW_fake_script() -- Main.LocalScript 
		local script = Instance.new('LocalScript', Main)

		repeat task.wait() until game:IsLoaded()
		task.spawn(function()
			local ts = game:GetService("TweenService")
		
			-- Function to create a frame with enhanced visuals
			local function createFrame(size, position, rotation)
				local frame = Instance.new("Frame")
				frame.Size = size
				frame.Position = position
				frame.Rotation = rotation
				frame.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random())
				frame.BorderSizePixel = 0
		
				return frame
			end
			

		
			-- Create frames with enhanced visuals
			local frameCount = 20
			local frames = {}
		
			for i = 1, frameCount do
				local size = UDim2.new(0, math.random(50, 200), 0, math.random(50, 200))
				local position = UDim2.new(0, math.random(50, 500), 0, math.random(50, 300))
				local rotation = math.random(-45, 45)
		
				local frame = createFrame(size, position, rotation)
				frame.Parent = script.Parent
		
				table.insert(frames, frame)
		
				ts:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quad), { Rotation = rotation + 720 }):Play()
			end
		
			-- Transition frames to the middle of the screen
			wait(1)
		
			for _, frame in ipairs(frames) do
				local targetSize = UDim2.new(0.2, 0, 0.2, 0)
				local targetPosition = UDim2.new(0.4, 0, 0.4, 0)
		
				ts:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quad), { Size = targetSize, Position = targetPosition }):Play()
			end
		
			-- Add text label to the front visible frame
			wait(2)
		
			local frontFrame = frames[#frames]
		
			local textLabel = Instance.new("TextLabel")
			textLabel.Name = "TextLabel"
			textLabel.Text = "Made By Roge#4087"
			textLabel.Font = Enum.Font.SourceSansBold
			textLabel.TextSize = 24
			textLabel.TextColor3 = Color3.new(1, 1, 1)
			textLabel.BackgroundTransparency = 1
			textLabel.Size = UDim2.new(1, 0, 1, 0)
			textLabel.Position = UDim2.new(0, 0, 0, 0)
			textLabel.Parent = frontFrame
			textLabel.TextScaled = true
		
			ts:Create(frontFrame, TweenInfo.new(1, Enum.EasingStyle.Quart), {Rotation = 0}):Play()
		
			task.wait(5)
		
			-- Transition frames back to the original concept
		
			for _, frame in ipairs(frames) do
				local targetSize = UDim2.new(0, 0, 0, 0)
				local targetPosition = UDim2.new(0, 0, 0, 0)
		
				ts:Create(textLabel, TweenInfo.new(1, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
		
				ts:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quad), { Size = targetSize, Position = targetPosition, BackgroundTransparency = 1}):Play()
			end
		
		end)
		
		
	end
	coroutine.wrap(TOXQUW_fake_script)()
end)

task.spawn(function()
	task.wait(20)
	Main:Destroy()
end)

task.wait(6)
