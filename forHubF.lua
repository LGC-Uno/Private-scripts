local rootPartt = game.Players.LocalPlayer.Character.HumanoidRootPart

function getRoot(rootPartt)
	local rootPart = rootPartt:FindFirstChild('HumanoidRootPart') or rootPartt:FindFirstChild('Torso') or rootPartt:FindFirstChild('UpperTorso')
	return rootPart
end


function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end


local function float()
    local pchar = game.Players.LocalPlayer.Character
    local floatName = randomString()
	if pchar and not pchar:FindFirstChild(floatName) then
        local Float = Instance.new('Part')
        Float.Name = floatName
        Float.Parent = pchar
        Float.Transparency = 1
        Float.Size = Vector3.new(2,0.2,1.5)
        Float.Anchored = true
        local FloatValue = -3.1
        Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,FloatValue,0)
    end
end

while true do
    float()
    wait(3)
end
