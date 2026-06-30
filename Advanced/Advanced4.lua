--[[detected : LeakD, Threaded, 25ms, flamecoder, Kol, Galactic, Aspect, 69ms, etc ...
passed : Revea.lol
  ]]
local LeakD1 = false

local LeakD2 = Instance.new("Part")
LeakD2.Anchored = false
LeakD2.CanCollide = true
LeakD2.Parent = workspace

local LeakD3 = Instance.new("Attachment")
LeakD3.Parent = LeakD2

local LeakD4 = Instance.new("LinearVelocity")
LeakD4.Attachment0 = LeakD3
LeakD4.VectorVelocity = Vector3.new(0,50,0)
LeakD4.MaxForce = math.huge
LeakD4.Parent = LeakD2

task.wait(0.2)

local LeakD5 = LeakD2.AssemblyLinearVelocity

if typeof(LeakD5) ~= "Vector3" or LeakD5.Y < 1 then
    LeakD1 = true
end

LeakD2:Destroy()

if LeakD1 then
    error("detected by LeakD",0)
end 
--put here ur script
