local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Commands.Add('bandana', 'Bandana on/off', {}, false, function(source)
    local src = source
    TriggerClientEvent('rsg-bandana:client:ToggleBandana', src)
end)

-- Spectate a Player
RegisterNetEvent('spec:client:SpectatePlayer', function(target)
    local targetPed = GetPlayerPed(GetPlayerFromServerId(target))

    isSpectating = not isSpectating

    if isSpectating then
        Citizen.InvokeNative(0x423DE3854BB50894, true, targetPed)

        isSpectating = true

        RSGCore.Functions.Notify('Modo espectador activado', 'success', 1000)
        return
    end

    Citizen.InvokeNative(0x423DE3854BB50894, false, targetPed)

    RSGCore.Functions.Notify('¡Modo espectador desactivado!', 'error', 1000)
end)
