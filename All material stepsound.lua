--_Notice_--

--[[
StartPlayer/CharacterWalkSpeed = 20
----------
Put this script on StarterCharacterScripts
I will update adaptive module soon , that you can feelfree to change any speed you want
--]]

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
		[Enum.Material.Plastic] = "	rbxasset://sounds/action_footsteps_plastic.mp3",
		[Enum.Material.SmoothPlastic] = "rbxasset://sounds/action_footsteps_plastic.mp3",
		
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
	
	if FloorMaterial == Enum.Material.Asphalt then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.3
		RunningSound.Volume = 3
	end
	
	if FloorMaterial == Enum.Material.Fabric then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2
		RunningSound.Volume = 2.8
	end
	
	if FloorMaterial == Enum.Material.CrackedLava then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 3.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.LeafyGrass then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Salt then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Snow then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.1
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Glacier then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.1
		RunningSound.Volume = 2.4
	end
	
	
	if FloorMaterial == Enum.Material.Grass then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Sand then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.6
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Limestone then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.6
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Concrete then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Rock then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Marble then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Cobblestone then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Brick then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Foil then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Pebble then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Granite then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Basalt then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Mud then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2
		RunningSound.Volume = 2.5
	end
	
	if FloorMaterial == Enum.Material.Ground then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2
		RunningSound.Volume = 2.5
	end
	
	if FloorMaterial == Enum.Material.Wood then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.6
		RunningSound.Volume = 2.5
	end
	
	if FloorMaterial == Enum.Material.WoodPlanks then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.6
		RunningSound.Volume = 2.5
	end
	
	if FloorMaterial == Enum.Material.Slate then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.4
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Pavement then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 1.5
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Sandstone then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Ice then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 3.5
		RunningSound.Volume = 2.4
	end
	
	if FloorMaterial == Enum.Material.Plastic then
		RunningSound.SoundId = Run
		RunningSound.PlaybackSpeed = 2.4
		RunningSound.Volume = 2
	end
	
	if FloorMaterial == Enum.Material.SmoothPlastic then
		RunningSound.SoundId = Run
		RunningSound.PlaybackSpeed = 2.4
		RunningSound.Volume = 2
	end
	
	if FloorMaterial == Enum.Material.Glass then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 2
	end
	
	if FloorMaterial == Enum.Material.ForceField then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 1
	end
	
	if FloorMaterial == Enum.Material.Neon then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 1
	end
	
	if FloorMaterial == Enum.Material.CorrodedMetal then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 2
	end
	
	if FloorMaterial == Enum.Material.DiamondPlate then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 2
	end
	
	if FloorMaterial == Enum.Material.Metal then
		RunningSound.SoundId = Sound
		RunningSound.PlaybackSpeed = 2.2
		RunningSound.Volume = 2
	end
	
	print("Material" .. tostring(Humanoid.FloorMaterial))
	
end)