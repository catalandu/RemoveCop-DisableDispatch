Citizen.CreateThread(function()
while true do
Citizen.Wait(0)
local playerPed = GetPlayerPed(-1)
local playerLocalisation = GetEntityCoords(playerPed)
ClearAreaOfCops(playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, 400.0)
end
end)

Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(20)
		for i=1, 15 do
			Citizen.InvokeNative(0xDC0F817884CDD856, i, false) -- EnableDispatchService(dispatchService --[[ integer ]], toggle --[[ boolean ]])
		end
    end
end)