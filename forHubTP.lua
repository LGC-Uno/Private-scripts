-- There will be 2 guis of anti-afk for make sure you won't be kicked! (you can only get kicked by your wifi connection or another reason)
-- This script will make a platform under local player, and will make teleport local player to a random pos (you can change it down here)
local minX, maxX = 1000, 2000
local minY, maxY = 1900, 3000
local minZ, maxZ = 1000, 2000

local teleportInterval = 0.4

local function teleportPlayer()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootParttt = player.Character.HumanoidRootPart

        local randomX = math.random(minX, maxX)
        local randomY = math.random(minY, maxY)
        local randomZ = math.random(minZ, maxZ)

        rootParttt.CFrame = CFrame.new(randomX, randomY, randomZ)
    end
end


while true do
    teleportPlayer()
    wait(teleportInterval)
end
