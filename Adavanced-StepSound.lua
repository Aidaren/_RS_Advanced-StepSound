--[[
Version 2.0.1
Made by Aidaren - 究极挨打人
QQ:3026297142
--]]

local PrintMessage = true

--<声音库>--
local MaterialSounds = 
	{
		[Enum.Material.Mud] = "rbxassetid://7749521073",
		[Enum.Material.Asphalt] = "rbxassetid://7741200330" ,
		[Enum.Material.CrackedLava] = "rbxassetid://7741675074",
		[Enum.Material.LeafyGrass] = "rbxassetid://7741881013",
		[Enum.Material.Grass] = "rbxassetid://7744379043",
		[Enum.Material.Ice] = "rbxassetid://7750319484",
		[Enum.Material.Fabric] = "rbxassetid://7750815489",
		
		--<能力有限，这些都是同样的声音>--
		[Enum.Material.Concrete] = "rbxassetid://7749413376",
		[Enum.Material.Rock] = "rbxassetid://7749413376",
		[Enum.Material.Basalt] = "rbxassetid://7749413376",
		[Enum.Material.Slate] = "rbxassetid://7749413376",
		[Enum.Material.Pavement] = "rbxassetid://7749413376",
		[Enum.Material.Brick] = "rbxassetid://7749413376",
		[Enum.Material.Cobblestone] = "rbxassetid://7749413376",
		[Enum.Material.Granite] = "rbxassetid://7749413376",
		[Enum.Material.Pebble] = "rbxassetid://7749413376",
		[Enum.Material.Foil] = "rbxassetid://7749413376",
		[Enum.Material.Marble] = "rbxassetid://7749413376",
		
		[Enum.Material.Glass] = "rbxassetid://7751159454",
		[Enum.Material.ForceField] = "rbxassetid://7751159454",
		[Enum.Material.Neon] = "rbxassetid://7751159454",
		[Enum.Material.CorrodedMetal] = "rbxassetid://7751159454",
		[Enum.Material.DiamondPlate] = "rbxassetid://7751159454",
		[Enum.Material.Metal] = "rbxassetid://7751159454",
		
		[Enum.Material.Snow] = "rbxassetid://7744044913",
		[Enum.Material.Salt] = "rbxassetid://7744044913",
		[Enum.Material.Glacier] = "rbxassetid://7744044913",
		
		[Enum.Material.Ground] = "rbxassetid://7749569578",
		[Enum.Material.Sandstone] = "rbxassetid://7749569578",
		
		[Enum.Material.Limestone] = "rbxassetid://7744855362",
		[Enum.Material.Sand] = "rbxassetid://7744855362",
		
		[Enum.Material.WoodPlanks] = "rbxassetid://7750069861",
		[Enum.Material.Wood] = "rbxassetid://7750069861"
		--<能力有限，这些都是同样的声音>--


	}

--<变量>--
local Humanoid = script.Parent:WaitForChild("Humanoid")
local FootStepSound = script.Parent:WaitForChild("HumanoidRootPart")
local RunningSound = FootStepSound:WaitForChild("Running")
local Run = "rbxasset://sounds/action_footsteps_plastic.mp3"

--<主体>--
Humanoid:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
	
	local FloorMaterial = Humanoid.FloorMaterial
	local Sound = MaterialSounds[FloorMaterial]
	
	local function Material(Material , AdjustSpeed , Volume)
		
		local HumanWalkSpeed = Humanoid.WalkSpeed
		
		if FloorMaterial == Material then
			RunningSound.SoundId = Sound
			RunningSound.PlaybackSpeed = AdjustSpeed + HumanWalkSpeed / 20
			RunningSound.Volume = Volume
		end
		
		if FloorMaterial == Enum.Material.Plastic then
			RunningSound.SoundId = Run
			RunningSound.PlaybackSpeed = 1.125 + HumanWalkSpeed / 20
			RunningSound.Volume = 2
		end
		
		if FloorMaterial == Enum.Material.SmoothPlastic then
			RunningSound.SoundId = Run
			RunningSound.PlaybackSpeed = 1.125 + HumanWalkSpeed / 20
			RunningSound.Volume = 2
		end
	end
	
	Material(Enum.Material.Asphalt , 1.1 , 3)
	
	Material(Enum.Material.Fabric , 1.4 , 2.8)
	
	Material(Enum.Material.CrackedLava , 2.4 , 2.4)
	
	Material(Enum.Material.LeafyGrass , 1.2 , 2.4)
	
	Material(Enum.Material.Salt , 1.2 , 2.4)
	
	Material(Enum.Material.Snow , 1.1 , 2.4)
	
	Material(Enum.Material.Glacier , 1.1 , 2.4)
	
	Material(Enum.Material.Grass , 0.4 , 2.4)
	
	Material(Enum.Material.Sand , 1.6 , 2.4)
	
	Material(Enum.Material.Limestone , 1.6 , 2.4)
	
	Material(Enum.Material.Concrete , 0.5 , 2.4)
	
	Material(Enum.Material.Rock , 0.5 , 2.4)
	
	Material(Enum.Material.Marble , 0.5 , 2.4)
	
	Material(Enum.Material.Cobblestone , 0.5 , 2.4)
	
	Material(Enum.Material.Brick , 0.5 , 2.4)
	
	Material(Enum.Material.Foil , 0.5 , 2.4)
	
	Material(Enum.Material.Pebble , 0.5 , 2.4)
	
	Material(Enum.Material.Granite , 0.5 , 2.4)
	
	Material(Enum.Material.Basalt , 0.5 , 2.4)
	
	Material(Enum.Material.Mud , 1 , 2.5)
	
	Material(Enum.Material.Ground , 1 , 2.5)
	
	Material(Enum.Material.Wood , 0.6 , 2.5)
	
	Material(Enum.Material.WoodPlanks , 0.6 , 2.5)
	
	Material(Enum.Material.Slate , 0.4 , 2.4)
	
	Material(Enum.Material.Pavement , 0.5 , 2.4)
	
	Material(Enum.Material.Sandstone , 1 , 2.4)
	
	Material(Enum.Material.Ice , 2.5 , 2.4)
	
	Material(Enum.Material.Glass , 1.2 , 2)
	
	Material(Enum.Material.ForceField , 1.2 , 1)
	
	Material(Enum.Material.Neon , 1.2 , 1)
	
	Material(Enum.Material.CorrodedMetal , 1.2 , 2)
	
	Material(Enum.Material.DiamondPlate , 1.2 , 2)
	
	Material(Enum.Material.Metal , 1.2 , 2)
	
	if PrintMessage == true then
			print("Material" .. tostring(Humanoid.FloorMaterial))
	end
	
end)

Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
	local function PlaySpeedChange(Material , StandardSpeed)
		
		local HumanWalkSpeed = Humanoid.WalkSpeed
		local FloorMaterial = Humanoid.FloorMaterial
		if PrintMessage == true then
			print(FloorMaterial)
		end
		if FloorMaterial == Material then
			RunningSound.PlaybackSpeed = StandardSpeed + HumanWalkSpeed / 20
			if PrintMessage == true then
				print(HumanWalkSpeed)
			end
		end
		local CheckValue = RunningSound.PlaybackSpeed
		if FloorMaterial == Enum.Material.Air then
			RunningSound.PlaybackSpeed = CheckValue
		end
	end
	
	PlaySpeedChange(Enum.Material.Plastic , 1.125)
	
	PlaySpeedChange(Enum.Material.SmoothPlastic , 1.125)
	
	PlaySpeedChange(Enum.Material.Asphalt , 1.1)

	PlaySpeedChange(Enum.Material.Fabric , 1.4)

	PlaySpeedChange(Enum.Material.CrackedLava , 2.4)

	PlaySpeedChange(Enum.Material.LeafyGrass , 1.2)

	PlaySpeedChange(Enum.Material.Salt , 1.2)

	PlaySpeedChange(Enum.Material.Snow , 1.1)

	PlaySpeedChange(Enum.Material.Glacier , 1.1)

	PlaySpeedChange(Enum.Material.Grass , 0.4)

	PlaySpeedChange(Enum.Material.Sand , 1.6)

	PlaySpeedChange(Enum.Material.Limestone , 1.6)

	PlaySpeedChange(Enum.Material.Concrete , 0.5)

	PlaySpeedChange(Enum.Material.Rock , 0.5)

	PlaySpeedChange(Enum.Material.Marble , 0.5)

	PlaySpeedChange(Enum.Material.Cobblestone , 0.5)

	PlaySpeedChange(Enum.Material.Brick , 0.5)

	PlaySpeedChange(Enum.Material.Foil , 0.5)

	PlaySpeedChange(Enum.Material.Pebble , 0.5)

	PlaySpeedChange(Enum.Material.Granite , 0.5)

	PlaySpeedChange(Enum.Material.Basalt , 0.5)

	PlaySpeedChange(Enum.Material.Mud , 1)

	PlaySpeedChange(Enum.Material.Ground , 1)

	PlaySpeedChange(Enum.Material.Wood , 0.6)

	PlaySpeedChange(Enum.Material.WoodPlanks , 0.6)

	PlaySpeedChange(Enum.Material.Slate , 0.4)

	PlaySpeedChange(Enum.Material.Pavement , 0.5)

	PlaySpeedChange(Enum.Material.Sandstone , 1)

	PlaySpeedChange(Enum.Material.Ice , 2.5)

	PlaySpeedChange(Enum.Material.Glass , 1.2)

	PlaySpeedChange(Enum.Material.ForceField , 1.2)

	PlaySpeedChange(Enum.Material.Neon , 1.2)

	PlaySpeedChange(Enum.Material.CorrodedMetal , 1.2)

	PlaySpeedChange(Enum.Material.DiamondPlate , 1.2)

	PlaySpeedChange(Enum.Material.Metal , 1.2)
	
end)
