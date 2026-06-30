local function LeakD4()
    return "a"
end

hookfunction(LeakD4, function()
    return "b"
end)

if LeakD4() ~= "b" then
    error("detected by LeakD", 0)
end

if getscriptbytecode(game:GetService("Players").LocalPlayer.Character) == "" then
    error("detected by LeakD", 0)
end

local LeakD5 = lz4compress("test")
if LeakD5:sub(2) ~= "test" then
    error("detected by LeakD", 0)
end

if decompile(game:GetService("Players").LocalPlayer.Character) ~= nil and string.find(tostring(decompile(game:GetService("Players").LocalPlayer.Character)), "unavailable") then
    error("detected by LeakD", 0)
end
if rconsoleinput() == "" then
    error("detected by LeakD", 0)
end

--put here ur script
