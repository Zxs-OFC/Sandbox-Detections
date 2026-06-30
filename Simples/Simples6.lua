local ok, err = pcall(function()
    return #game
end)

if ok then
    error('detected by Speack',0)
end 
print("pass")
