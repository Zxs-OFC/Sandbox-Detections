local a = game:GetService("Players")
local b = a.LocalPlayer
if type(b) ~= "userdata" then
    error("bah alors on est nul")
end
if typeof(b) ~= "Instance" then
    error("bah alors on est nul")
end
local c = b:IsA("Player")
if c ~= true then
    error("bah alors on est nul")
end
local d = b:GetPropertyChangedSignal("Name")
if typeof(d) ~= "RBXScriptSignal" then
    error("bah alors on est nul")
end
local e = b.Changed
if typeof(e) ~= "RBXScriptSignal" then
    error("bah alors on est nul")
end
local f = b:GetAttributeChangedSignal("test")
if typeof(f) ~= "RBXScriptSignal" then
    error("bah alors on est nul")
end


print("Passed")
