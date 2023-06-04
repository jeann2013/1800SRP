local RSGCore = exports['rsg-core']:GetCoreObject()


RSGCore.Functions.CreateCallback('1800:returnPlayerName', function(source,callback)    
    local Callback = callback
    local _source = source    
    local Player = RSGCore.Functions.GetPlayer(_source)    
    Callback(Player)    
end)
