local RSGCore = exports['rsg-core']:GetCoreObject()


RSGCore.Functions.CreateCallback('1800:returnPlayerName', function(source,ped,callback)    
    local Callback = callback
    local _source = source    
    local Player = RSGCore.Functions.GetPlayer(ped)    
    Callback(Player)    
end)
