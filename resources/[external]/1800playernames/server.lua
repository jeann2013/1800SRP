local RSGCore = exports['rsg-core']:GetCoreObject()


RSGCore.Functions.CreateCallback('1800:returnPlayerName', function(callback)    
    local Callback = callback    
    local Player = RSGCore.Functions.GetPlayer(idPed)    
    Callback(Player)    
end)
