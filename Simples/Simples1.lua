local ok, data = pcall(function()
    return game:GetService("ReflectionService"):GetClasses({
        Security = SecurityCapabilities.fromCurrent()
    })
end)

if not (ok and typeof(data) == "table") then
    error("detected by Speack", 0)
end 
-- put here ur script
