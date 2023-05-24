local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Commands.Add("lawbadge", Lang:t('command.put_on_take_off_badge'), {}, false, function(source, args)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if Player.PlayerData.job.name == Config.LawJob and Player.PlayerData.job.onduty then
        TriggerClientEvent("rsg-lawbadge:client:lawbadge", src)
    else
        TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_must_be_on_duty_wear_your_badge'), 'error')
    end
end)
