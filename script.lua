-- 🔒 EXPIRED TODAY (IMMEDIATE)
if os.time() >= os.time() then
    return
end

-- 📌 ORIGINAL SCRIPT
local hook
hook = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if tostring(self) == "RemoteEvent" and method == "FireServer" then
        if args[1] == "2"
            and args[2]
            and args[2].Parent
            and game.Players:FindFirstChild(args[2].Parent.Name)
            and args[2].Parent:FindFirstChild("Head")
        then
            args[2] = args[2].Parent.Head
            return hook(self, unpack(args))
        end
    end

    return hook(self, ...)
end)

