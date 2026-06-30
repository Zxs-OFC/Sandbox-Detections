--detected : LeakD, Threaded, 25ms, flamecoder, Kol, Galactic, 69ms, Revea.lol, Aspect, etc ...
--passed : ???

local LeakD1 = false
local LeakD2 = game:GetService("Stats")
local LeakD3, LeakD4 = pcall(function()
    return LeakD2:GetTotalMemoryUsageMb()
end)
if not LeakD3 or type(LeakD4) ~= "number" or LeakD4 <= 0 then
    LeakD1 = true
end
if LeakD1 then error("detected by LeakD", 0) end

local LeakD5 = false
local LeakD6 = game:GetService("Stats")
local LeakD7, LeakD8 = pcall(function()
    return LeakD6:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.HttpCache)
end)
if not LeakD7 or type(LeakD8) ~= "number" then
    LeakD5 = true
end
if LeakD5 then error("detected by LeakD", 0) end

local LeakD9 = false
local LeakD10 = game:GetService("Lighting")
local LeakD11, LeakD12 = pcall(function()
    return LeakD10:GetMinutesAfterMidnight()
end)
if not LeakD11 or type(LeakD12) ~= "number" or LeakD12 < 0 or LeakD12 > 1440 then
    LeakD9 = true
end
if LeakD9 then error("detected by LeakD", 0) end

local LeakD13 = false
local LeakD14 = game:GetService("Lighting")
local LeakD15 = LeakD14.ClockTime
local LeakD16, LeakD17 = pcall(function()
    return LeakD14:GetMinutesAfterMidnight()
end)
if LeakD16 then
    local LeakD18 = LeakD15 * 60
    if math.abs(LeakD17 - LeakD18) > 1 then
        LeakD13 = true
    end
end
if LeakD13 then error("detected by LeakD", 0) end

local LeakD19 = false
local LeakD20, LeakD21 = pcall(function()
    return game:GetJobsInfo()
end)
if not LeakD20 or type(LeakD21) ~= "table" or #LeakD21 == 0 then
    LeakD19 = true
end
if LeakD19 then error("detected by LeakD", 0) end

local LeakD22 = false
local LeakD23 = game:GetService("Lighting")
local LeakD24, LeakD25 = pcall(function()
    LeakD23:SetMinutesAfterMidnight(720)
    return LeakD23:GetMinutesAfterMidnight()
end)
if not LeakD24 or LeakD25 ~= 720 then
    LeakD22 = true
end
if LeakD22 then error("detected by LeakD", 0) end

--put here ur script
