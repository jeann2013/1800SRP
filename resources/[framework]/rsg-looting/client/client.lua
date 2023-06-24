local looting = false

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		Citizen.Wait(0)
		if IsControlJustPressed(0, 1101824977) and not IsPedInAnyVehicle(player, true) and not looting then
        if IsControlJustPressed(0, 1101824977) and not IsPedInAnyVehicle(player, true) and not looting then
			local shape = true
            local shape = true
			while shape do
            while shape do
				Wait(0)
                Wait(0)
				local player = PlayerPedId()
                local player = PlayerPedId()
				local coords = GetEntityCoords(player)
                local coords = GetEntityCoords(player)
				local entityHit = 0
                local entityHit = 0
				local shapeTest = StartShapeTestBox(coords.x, coords.y, coords.z, 2.0, 2.0, 2.0, 0.0, 0.0, 0.0, true, 8, player)
                local shapeTest = StartShapeTestBox(coords.x, coords.y, coords.z, 2.0, 2.0, 2.0, 0.0, 0.0, 0.0, true, 8, player)
				local rtnVal, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(shapeTest)
                local rtnVal, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(shapeTest)
				local type = GetPedType(entityHit)
                local type = GetPedType(entityHit)
				--local dead = IsEntityDead(entityHit)
                --local dead = IsEntityDead(entityHit)
				local PressTime = 0
                local PressTime = 0
				--if type == 4 and dead then -- only dead npcs
                --if type == 4 and dead then -- only dead npcs
				if type == 4 then
                if type == 4 then
					local looted = Citizen.InvokeNative(0x8DE41E9902E85756, entityHit)
                    local looted = Citizen.InvokeNative(0x8DE41E9902E85756, entityHit)
					if not looted then
                    if not looted then
						shape = false
                        shape = false
						looting = true
                        looting = true
						PressTime = GetGameTimer()
                        PressTime = GetGameTimer()
						while looting do
                        while looting do
							Wait(0)
                            Wait(0)
							if IsControlJustReleased(0, 1101824977) then
                            if IsControlJustReleased(0, 1101824977) then
								KeyHeldTime = GetGameTimer() - PressTime
                                KeyHeldTime = GetGameTimer() - PressTime
								PressTime = 0
                                PressTime = 0
								if KeyHeldTime > 250 then
                                if KeyHeldTime > 250 then
									looting = false
                                    looting = false
									Wait(500)
                                    Wait(500)
									local lootedcheck = Citizen.InvokeNative(0x8DE41E9902E85756, entityHit)
                                    local lootedcheck = Citizen.InvokeNative(0x8DE41E9902E85756, entityHit)
									if lootedcheck then
                                    if lootedcheck then
										TriggerServerEvent('rsg-looting:server:lootreward')
                                        TriggerServerEvent('rsg-looting:server:lootreward')
									else
                                    else
										looting = false
                                        looting = false
									end
                                    end
								else
                                else
									looting = false
                                    looting = false
								end
                                end
							end
                            end
						end
                        end
					end
                    end
				end
                end
			end
            end
		end
        end
    end
end)

local function IsTargetDead(playerId)
    local retval = false
    local hasReturned = false
    RSGCore.Functions.TriggerCallback('rsg-looting:server:isPlayerDead', function(result)
        retval = result
        hasReturned = true
    end, playerId)
    while not hasReturned do
        Wait(10)
    end
    return retval
end

-- rob other player
RegisterNetEvent('rsg-looting:client:RobPlayer', function()
    local player, distance = RSGCore.Functions.GetClosestPlayer()
    local ped = PlayerPedId()
    if player ~= -1 and distance < 2.5 then
        local playerPed = GetPlayerPed(player)
        local playerId = GetPlayerServerId(player)
        if IsEntityPlayingAnim(playerPed, "script_proc@robberies@homestead@lonnies_shack@deception", "hands_up_loop", 3) or IsTargetDead(playerId) then
            RSGCore.Functions.Progressbar("robbing_player", Lang:t('progressbar.robbing_player'), math.random(5000, 7000), false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper",
                anim = "inspectfloor_player",
                flags = 16,
            }, {}, {}, function() -- Done
                local plyCoords = GetEntityCoords(playerPed)
                local pos = GetEntityCoords(ped)
                if #(pos - plyCoords) < 2.5 then
                    StopAnimTask(ped, "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper", "inspectfloor_player", 1.0)
                    TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", playerId)
                else
                    RSGCore.Functions.Notify(Lang:t('error.player_not_nearby'), "error")
                end
            end, function() -- Cancel
                StopAnimTask(ped, "script_rc@cldn@ig@rsc2_ig1_questionshopkeeper", "inspectfloor_player", 1.0)
                RSGCore.Functions.Notify(Lang:t('error.action_canceled'), "error")
            end)
        end
    else
        RSGCore.Functions.Notify(Lang:t('error.player_not_nearby'), "error")
    end
end)