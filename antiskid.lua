local module = {}
function module.YOURLOADINGTARGET(plr) -- Replace YOURLOADINGTARGET With your load function (in tutorial)
	local isStudio = game:GetService("RunService"):IsStudio()
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, string.len(plr)) == string.lower(plr) then
			if(isStudio)then -- Checks if they are in studio, if they are they are gonna get kicked
				v:Kick("Your text here") -- Credits to systemGene#5382 for this
				script:Destroy()
			else
				local gui = script.YOURGUINAMEHERE:Clone()-- Place your screengui in the module, replace
				-- YourScreenGui with your screenGui name, it could be script.IDK:clone()
				gui.Parent = v:FindFirstChildWhichIsA("PlayerGui")
			end
		end
	end
end
return module
