local RSGcore = exports['rsg-core']:GetCoreObject()

RegisterNetEvent('chat:me')
AddEventHandler('chat:me', function(id, name, message, time)
    local id1 = PlayerId()
    local id2 = GetPlayerFromServerId(id)
    local sourcePlayer = GetPlayerFromServerId(id1) 

    -- Asynchronously retrieve the player data
    RSGcore.Functions.GetPlayerData(function(PlayerData)
        local firstname = PlayerData.charinfo.firstname
        local lastname = PlayerData.charinfo.lastname
        local playerName = firstname .. ' ' .. lastname

        -- Check the distance and broadcast the message if it's within the bisikDistance limit
        if id2 == id1 or GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(id1)), GetEntityCoords(GetPlayerPed(id2)), true) < Config.MeDistance then
            TriggerEvent('chat:addMessage', {
                template = '<div class="chat-message twitter"> <b><span style="color: #c2a3da"> * </b>{0} {1}</span></div>',
                args = {playerName, message, time}
            })
        end
    end)
end)

RegisterNetEvent('ip-chat:client:SendReport', function(name, src, msg)
    TriggerServerEvent('ip-chat:server:SendReport', name, src, msg)
end)
