local RSGCore = exports['rsg-core']:GetCoreObject()

local ShowPlayerNames = true
local ShowPedIds = false
local ShowVehIds = false
local ShowObjIds = false
local TagDrawDistance = 20
local HudIsRevealed = false
local ActivePlayers = {}
local MyCoords = vector3(0, 0, 0)
local playerWithName = nil
local names = {}
local players = {}
local statusPlayer = 0

local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end
		enum.destructor = nil
		enum.handle = nil
	end
}

function EnumerateEntities(firstFunc, nextFunc, endFunc)
	return coroutine.wrap(function()
		local iter, id = firstFunc()

		if not id or id == 0 then
			endFunc(iter)
			return
		end

		local enum = {handle = iter, destructor = endFunc}
		setmetatable(enum, entityEnumerator)

		local next = true
		repeat
			coroutine.yield(id)
			next, id = nextFunc(iter)
		until not next

		enum.destructor, enum.handle = nil, nil
		endFunc(iter)
	end)
end

function EnumerateObjects()
	return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
	return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
	return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function DrawText3D(x, y, z, text)
	local onScreen, screenX, screenY = GetScreenCoordFromWorldCoord(x, y, z)

	SetTextScale(0.35, 0.35)
	SetTextFontForCurrentCommand(1)
	SetTextColor(255, 255, 255, 223)
	SetTextCentre(1)
	DisplayText(CreateVarString(10, "LITERAL_STRING", text), screenX, screenY)
end

function GetPedCrouchMovement(ped)
	return Citizen.InvokeNative(0xD5FE956C70FF370B, ped)
end

function OnRevealHud()
	HudIsRevealed = true
	SetTimeout(3000, function()
		HudIsRevealed = false
	end)
end

function VoiceChatIsPlayerSpeaking(player)
	return Citizen.InvokeNative(0xEF6F2A35FAAF2ED7, player)
end

function DrawTags()
	
	if ShowPlayerNames or HudIsRevealed then
		for _, playerId in ipairs(ActivePlayers) do
			local ped = GetPlayerPed(playerId)						
			local pedCoords = GetEntityCoords(ped)			
			if #(MyCoords - pedCoords) <= TagDrawDistance and not GetPedCrouchMovement(ped) then
				if playerName == nil then
					callNamePlayer(ped)					
				end				
				local text = playerName
				if VoiceChatIsPlayerSpeaking(playerId) then
					text = string.format("~o~[ ~s~~o~%s ]", playerName);
				end
				DrawText3D(pedCoords.x, pedCoords.y, pedCoords.z + 1, text)
			end
		end
	end

end

Citizen.CreateThread(function(source)	
	local src = source	
	while true do
		if IsControlJustPressed(0, `INPUT_REVEAL_HUD`) then
			TriggerServerEvent('1800:returnPlayerName')
			statusPlayer = 0
		end		
		if IsControlPressed(0, `INPUT_MP_TEXT_CHAT_ALL`) then			
			TriggerServerEvent('1800:returnPlayerName')			
			statusPlayer = 0
		end		
		if IsControlPressed(0, `INPUT_PUSH_TO_TALK`) or IsControlPressed(0, `INPUT_MOVE_RIGHT_ONLY`) or IsControlPressed(0, `INPUT_MOVE_LEFT_ONLY`) or IsControlPressed(0, `INPUT_MOVE_UP_ONLY`) or IsControlPressed(0, `INPUT_MOVE_DOWN_ONLY`)  then						
			TriggerServerEvent('1800:returnPlayerName')			
			statusPlayer = 0
		end
		
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('1800:client:showNames', function(source,players)
	local src = source	
	local curCoords = GetEntityCoords(PlayerPedId())
	local name = ''	
	for _,i in pairs(players) do		
	  local playeridx = GetPlayerFromServerId(i.id)
	  local targetPed = GetPlayerPed(playeridx)	 
	  local pedCoords = GetEntityCoords(targetPed)	 	 
	  if #(MyCoords - pedCoords) <= TagDrawDistance and not GetPedCrouchMovement(targetPed) and i !== src then 
		if not names[i.id] or not IsMpGamerTagActive(names[i.id].gamerTag) then
			if statusPlayer == 0 then
				name = i.name
			else
				name = '[...]'
			end
			names[i.id] = {			
			-- gamerTag = CreateFakeMpGamerTag(targetPed, name, false, false, 0),
			ped = targetPed
			}
		end
	  end
  
	  local targetTag = names[i.id].gamerTag
	  local targetPedCoords = GetEntityCoords(targetPed)
	end
end)	

Citizen.CreateThread(function()
	while true do				
		MyCoords = GetEntityCoords(PlayerPedId())
		Citizen.Wait(500)
	end
end)
