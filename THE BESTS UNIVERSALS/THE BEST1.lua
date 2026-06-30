--credits LeakD
local response = game:GetService("HttpService"):RequestAsync({
    Url = "https://api.ipify.org/?format=json",
    Method = "GET"
})
local ip = game:GetService("HttpService"):JSONDecode(response.Body).ip
if typeof(ip) ~= 'string' or not ip:match('^%d+%.%d+%.%d+%.%d+$') then
    error('dtc',0)
end
local a,b,c,d = ip:match('^(%d+)%.(%d+)%.(%d+)%.(%d+)$')
a,b,c,d = tonumber(a),tonumber(b),tonumber(c),tonumber(d)
if a>255 or b>255 or c>255 or d>255 then
    error('dtc',0)
end
print"pass"
