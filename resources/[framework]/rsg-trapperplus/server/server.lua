local RSGCore = exports['rsg-core']:GetCoreObject()

-- store pelt to inventory
RegisterNetEvent('rsg-trapperplus:server:storepelt')
AddEventHandler('rsg-trapperplus:server:storepelt', function(rewarditem1, rewarditem2, rewarditem3, rewarditem4, rewarditem5)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(rewarditem1, 1)
	Player.Functions.AddItem(rewarditem2, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem1], "add")
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem2], "add")
    if rewarditem3 then
        Player.Functions.AddItem(rewarditem3, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem3], "add")
    end
    if rewarditem4 then
        Player.Functions.AddItem(rewarditem4, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem4], "add")
    end
    if rewarditem5 then
        Player.Functions.AddItem(rewarditem5, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem5], "add")
    end
end)

-- store carcars to inventory
RegisterNetEvent('rsg-trapperplus:server:carcars')
AddEventHandler('rsg-trapperplus:server:carcars', function(rewarditem1, rewarditem2, rewarditem3, rewarditem4, rewarditem5)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(rewarditem1, 1)
	Player.Functions.AddItem(rewarditem2, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem1], "add")
	TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem2], "add")

    if rewarditem3 then
        Player.Functions.AddItem(rewarditem3, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem3], "add")
    end
    if rewarditem4 then
        Player.Functions.AddItem(rewarditem4, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem4], "add")
    end
    if rewarditem5 then
        Player.Functions.AddItem(rewarditem5, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem5], "add")
    end
end)

RegisterServerEvent('rsg-trapperplus:server:sellpelts')
AddEventHandler('rsg-trapperplus:server:sellpelts', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local haspelts = false
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                -- bear_pelt
                if Player.PlayerData.items[k].name == "poor_bear_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_bear_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_bear_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- black_bear_pelt
                elseif Player.PlayerData.items[k].name == "poor_black_bear_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_black_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_black_bear_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_black_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_black_bear_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_black_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- poor_boar_pelt
                elseif Player.PlayerData.items[k].name == "poor_boar_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_boar_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_boar_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- buck_pelt
                elseif Player.PlayerData.items[k].name == "poor_buck_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_buck_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_buck_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_buck_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_buck_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_buck_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- buffalo_pelt
                elseif Player.PlayerData.items[k].name == "poor_buffalo_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_buffalo_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_buffalo_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_buffalo_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_buffalo_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_buffalo_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- bull_pelt
                elseif Player.PlayerData.items[k].name == "poor_bull_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_bull_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_bull_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_bull_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_bull_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_bull_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- cougar_pelt
                elseif Player.PlayerData.items[k].name == "poor_cougar_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_cougar_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_cougar_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- cow_pelt
                elseif Player.PlayerData.items[k].name == "poor_cow_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_cow_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_cow_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- coyote_pelt
                elseif Player.PlayerData.items[k].name == "poor_coyote_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_coyote_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_coyote_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_coyote_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_coyote_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- deer_pelt
                elseif Player.PlayerData.items[k].name == "poor_deer_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_deer_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_deer_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_deer_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_deer_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_deer_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- elk_pelt
                elseif Player.PlayerData.items[k].name == "poor_elk_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_elk_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_elk_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_elk_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_elk_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_elk_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- fox_pelt
                elseif Player.PlayerData.items[k].name == "poor_fox_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_fox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_fox_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_fox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_fox_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_fox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- goat_pelt
                elseif Player.PlayerData.items[k].name == "poor_goat_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_goat_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_goat_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_goat_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_goat_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_goat_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- javelina_pelt
                elseif Player.PlayerData.items[k].name == "poor_javelina_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_javelina_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_javelina_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_javelina_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_javelina_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_javelina_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- moose_pelt
                elseif Player.PlayerData.items[k].name == "poor_moose_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_moose_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_moose_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_moose_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_moose_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_moose_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- ox_pelt
                elseif Player.PlayerData.items[k].name == "poor_ox_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_ox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_ox_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_ox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_ox_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_ox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- panther_pelt
                elseif Player.PlayerData.items[k].name == "poor_panther_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_panther_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_panther_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- pig_pelt
                elseif Player.PlayerData.items[k].name == "poor_pig_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_pig_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_pig_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_pig_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_pig_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_pig_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- pronghorn_pelt
                elseif Player.PlayerData.items[k].name == "poor_pronghorn_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_pronghorn_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_pronghorn_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_pronghorn_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_pronghorn_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_pronghorn_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- bighornram_pelt
                elseif Player.PlayerData.items[k].name == "poor_bighornram_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_bighornram_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_bighornram_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_bighornram_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_bighornram_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_bighornram_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- sheep_pelt
                elseif Player.PlayerData.items[k].name == "poor_sheep_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_sheep_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_sheep_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_sheep_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_sheep_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_sheep_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- wolf_pelt
                elseif Player.PlayerData.items[k].name == "poor_wolf_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_wolf_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_wolf_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- alligator_pelt
                elseif Player.PlayerData.items[k].name == "poor_alligator_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_alligator_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_alligator_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- legendary_alligator_pelt
                elseif Player.PlayerData.items[k].name == "legendary_alligator_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- legendary_boar_pelt
                elseif Player.PlayerData.items[k].name == "legendary_boar_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- legendary_cougar_pelt
                elseif Player.PlayerData.items[k].name == "legendary_cougar_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- legendary_coyote_pelt
                elseif Player.PlayerData.items[k].name == "legendary_coyote_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_coyote_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- legendary_panther_pelt
                elseif Player.PlayerData.items[k].name == "legendary_panther_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- legendary_wolf_pelt
                elseif Player.PlayerData.items[k].name == "legendary_wolf_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                -- raccoon_pelt
                elseif Player.PlayerData.items[k].name == "poor_raccoon_pelt" then 
                    price = price + (Config.PoorPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_raccoon_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "good_raccoon_pelt" then 
                    price = price + (Config.GoodPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_raccoon_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "perfect_raccoon_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_raccoon_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "provision_snake_skin" then 
                    price = price + (Config.provision_snake_skin * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("provision_snake_skin", Player.PlayerData.items[k].amount, k)
                    haspelts = true                        
                end
            end
        end
        if haspelts == true then
            Player.Functions.AddMoney(Config.PaymentType, price, "pelts-sold")
            RSGCore.Functions.Notify(source, Lang:t('success.you_have_sold_all_your_pelts_for')..price, 'success')
            haspelts = false
        else
            RSGCore.Functions.Notify(source, Lang:t('error.you_dont_have_any_pelts_to_sell'), 'error')
        end
    end
end)

RegisterServerEvent('rsg-trapperplus:server:sellcarcars')
AddEventHandler('rsg-trapperplus:server:sellcarcars', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local haspelts = false
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                
                if Player.PlayerData.items[k].name == "claws_opossumc" then 
                    price = price + (Config.claws_opossumc * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_opossumc", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "tail_rabbitpaw" then 
                    price = price + (Config.tail_rabbitpaw * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tail_rabbitpaw", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "tooth_snaket" then 
                    price = price + (Config.tooth_snaket * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_snaket", Player.PlayerData.items[k].amount, k)
                    haspelts = true                
                elseif Player.PlayerData.items[k].name == "Snake_Poison" then 
                    price = price + (Config.Snake_Poison * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("Snake_Poison", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "animal_snake" then 
                    price = price + (Config.animal_snake * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("animal_snake", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "consumable_meat_game_cooked" then 
                    price = price + (Config.consumable_meat_game_cooked * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("consumable_meat_game_cooked", Player.PlayerData.items[k].amount, k)
                    haspelts = true                
                elseif Player.PlayerData.items[k].name == "feather_feather" then 
                    price = price + (Config.feather_feather * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("feather_feather", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "feather_feather2" then 
                    price = price + (Config.feather_feather2 * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("feather_feather2", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "feather_feather3" then 
                    price = price + (Config.feather_feather3 * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("feather_feather3", Player.PlayerData.items[k].amount, k)
                    haspelts = true                
                elseif Player.PlayerData.items[k].name == "provision_meat_gamey_bird" then 
                    price = price + (Config.provision_meat_gamey_bird * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("provision_meat_gamey_bird", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_goosef" then 
                    price = price + (Config.beak_goosef * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_goosef", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_vulturef" then 
                    price = price + (Config.beak_vulturef * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_vulturef", Player.PlayerData.items[k].amount, k)
                    haspelts = true                
                elseif Player.PlayerData.items[k].name == "beak_egretf" then 
                    price = price + (Config.beak_egretf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_egretf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_seagullf" then 
                    price = price + (Config.beak_seagullf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_seagullf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_boobyf" then 
                    price = price + (Config.beak_boobyf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_boobyf", Player.PlayerData.items[k].amount, k)
                    haspelts = true                
                elseif Player.PlayerData.items[k].name == "beak_chickenf" then 
                    price = price + (Config.beak_chickenf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_chickenf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_pelicanf" then 
                    price = price + (Config.beak_pelicanf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_pelicanf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_condorf" then 
                    price = price + (Config.beak_condorf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_condorf", Player.PlayerData.items[k].amount, k)
                    haspelts = true                
                elseif Player.PlayerData.items[k].name == "beak_chickenf" then 
                    price = price + (Config.beak_chickenf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_chickenf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_hawkf" then 
                    price = price + (Config.beak_hawkf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_hawkf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "beak_loonf" then 
                    price = price + (Config.beak_loonf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_loonf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                
                elseif Player.PlayerData.items[k].name == "beak_owlf" then 
                    price = price + (Config.beak_owlf * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_owlf", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "claws_owlt" then 
                    price = price + (Config.claws_owlt * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_owlt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "claws_hawkt" then 
                    price = price + (Config.claws_hawkt * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_hawkt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                
                elseif Player.PlayerData.items[k].name == "beak_prairif" then 
                    price = price + (Config.beak_prairif * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_prairif", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                elseif Player.PlayerData.items[k].name == "heart_chicken" then 
                    price = price + (Config.heart_chicken * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("heart_chicken", Player.PlayerData.items[k].amount, k)
                    haspelts = true    
                elseif Player.PlayerData.items[k].name == "claws_eaglet" then 
                    price = price + (Config.claws_eaglet * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_eaglet", Player.PlayerData.items[k].amount, k)
                    haspelts = true    
                end
            end
        end
        if haspelts == true then
            Player.Functions.AddMoney(Config.PaymentType, price, "pelts-sold")
            RSGCore.Functions.Notify(source, Lang:t('success.you_have_sold_all_your_carcars_for')..price, 'success')
            haspelts = false
        else
            RSGCore.Functions.Notify(source, Lang:t('error.you_dont_have_any_carcars_to_sell'), 'error')
        end
    end
end)
