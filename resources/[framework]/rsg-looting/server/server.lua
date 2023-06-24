local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterNetEvent('rsg-looting:server:lootreward', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
    local chance = math.random(1,100)
    -- common reward (95% chance)
    if chance <= 95 then -- reward : 1 x common
        local item = Config.CommonItems[math.random(1, #Config.CommonItems)]
        -- add items
        Player.Functions.AddItem(item, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[item], "add")
        Player.Functions.AddMoney('cash', math.random(5,10))
        -- webhook
        TriggerEvent('rsg-log:server:CreateLog', 'loot', Lang:t('menu.manage_menu'), 'orange', firstname..' '..lastname..Lang:t('menu.looted_menu'))
    -- rare reward (5% chance)
    elseif chance > 95 then -- reward : 1 x rare
        local item = Config.RareItems[math.random(1, #Config.RareItems)]
        -- add items
        Player.Functions.AddItem(item, 1)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[item], "add")
        Player.Functions.AddMoney('cash', math.random(10,15))
        -- webhook
        TriggerEvent('rsg-log:server:CreateLog', 'loot', Lang:t('text.looted_citizen'), 'orange', firstname..' '..lastname..Lang:t('menu.found_loot_baby'))
    else
        print("something went wrong check for exploit!")
    end
end)

-- Callbacks
RSGCore.Functions.CreateCallback('rsg-looting:server:isPlayerDead', function(_, cb, playerId)
    local Player = RSGCore.Functions.GetPlayer(playerId)
    cb(Player.PlayerData.metadata["isdead"])
end)
