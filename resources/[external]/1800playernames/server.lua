local RSGCore = exports['rsg-core']:GetCoreObject()
local players = {}
local names = {}

RegisterNetEvent('1800:returnPlayerName', function(source)
	local src = source
    TriggerClientEvent('1800:client:showNames', src, players)
end)

CreateThread(function(source)
    local src = source    
    while true do
        local tempPlayers = {}
        for _, v in pairs(RSGCore.Functions.GetPlayers()) do
            local targetped = GetPlayerPed(v)
            local ped = RSGCore.Functions.GetPlayer(v)		
            -- if src ~= v then	
                tempPlayers[#tempPlayers + 1] = {
                    name = v .. '-' .. (ped.PlayerData.charinfo.firstname or '') .. ' ' .. (ped.PlayerData.charinfo.lastname or ''),
                    id = v,
                    coords = GetEntityCoords(targetped),
                    cid = ped.PlayerData.charinfo.firstname .. ' ' .. ped.PlayerData.charinfo.lastname,
                    citizenid = ped.PlayerData.citizenid,
                    sources = GetPlayerPed(ped.PlayerData.source),
                    sourceplayer = ped.PlayerData.source
                }
            -- end
        end        
        table.sort(tempPlayers, function(a, b)
            return a.id < b.id
        end)
        players = tempPlayers
        Wait(1500)
    end
end)
