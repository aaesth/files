-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-10-25 08:50:36
-- Luau version 6, Types version 3
-- Time taken: 0.000688 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
if require(game:GetService("ReplicatedStorage"):WaitForChild("ChinaPolicyService")):IsActive() then
	print("Teleporting to China version place")
	while true do
		local Players_upvr = game:GetService("Players")
		local TeleportService_upvr = game:GetService("TeleportService")
		spawn(function() -- Line 13
			--[[ Upvalues[2]:
				[1]: Players_upvr (readonly)
				[2]: TeleportService_upvr (readonly)
			]]
			TeleportService_upvr:Teleport(3696971654, Players_upvr.LocalPlayer)
		end)
		wait(5)
		local _
	end
end
