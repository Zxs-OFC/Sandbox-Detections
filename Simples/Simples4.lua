local h = game:GetService("HttpService")
local a = h:UrlEncode("a b&c")
if a ~= "a%20b%26c" then
    print("dtc")
    error("")
end

print("Passed bruh")
