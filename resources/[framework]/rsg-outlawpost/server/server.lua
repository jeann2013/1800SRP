local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('rsg-outlawpost:server:sellbloodmoney')
AddEventHandler('rsg-outlawpost:server:sellbloodmoney', function(amount)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local amount = tonumber(amount)
    local amountbloodmoney = Player.Functions.GetMoney('bloodmoney')
    if amountbloodmoney ~= nil then
        if amountbloodmoney >= amount then
            bloodmoneyprice = Config.BloodMoneyPrice
            totalcash = (amount * bloodmoneyprice)
            Player.Functions.RemoveMoney('bloodmoney', amount)
            Player.Functions.AddMoney('cash', totalcash)
            TriggerClientEvent('RSGCore:Notify', src,  Lang:t('success.you_sold') ..amount.. Lang:t('success.blood_money_for')..totalcash, 'success')
        else
            TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_do_not_have_enough_blood_money'), 'error')
        end
    else
        TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_do_not_have_any_blood_money'), 'error')
    end
end)

-- sell gold bars
RegisterServerEvent('rsg-outlawpost:server:sellgoldbars')
AddEventHandler('rsg-outlawpost:server:sellgoldbars', function(amount)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local amount = tonumber(amount)
    local checkbars = Player.Functions.GetItemByName("goldbar")
    if checkbars ~= nil then
        local amountbars = Player.Functions.GetItemByName('goldbar').amount
        if amountbars >= amount then
            goldbarprice = Config.GoldBarPrice
            totalcash = (amount * goldbarprice) 
            Player.Functions.RemoveItem('goldbar', amount)
            TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['goldbar'], "remove")
            Player.Functions.AddMoney('cash', totalcash)
            TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.you_sold') ..amount.. Lang:t('success.gold_bars_for')..totalcash, 'success')
        else
            TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_do_not_have_enough_gold_bars'), 'error')
        end
    else
        TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_do_not_have_any_gold_bars'), 'error')
    end
end)
