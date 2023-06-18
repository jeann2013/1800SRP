-- Toggle all UI ON/OFF
RegisterCommand('hideui', function()
    TriggerEvent('HideAllUI')
end)

CreateThread(function ()
    Wait(1000)
    TriggerEvent('chat:addSuggestion','/hideui', 'Toggle all UIs ON/OFF (i.e. for taking Screenshot)', {})
end)

RSGCore.Commands.Add('spectate', "Especteando un Jugador", { { name = "id", help = "ID del Jugador" } }, true, function(source, args)
    local player = tonumber(args[1])
    local Player = RSGCore.Functions.GetPlayer(player)

    if Player ~= nil then
        TriggerClientEvent('spec:client:SpectatePlayer', source, player)
        return
    end

    RSGCore.Functions.Notify(source, "Juagdo no existe!", 'error', 3000)
end, 'admin')