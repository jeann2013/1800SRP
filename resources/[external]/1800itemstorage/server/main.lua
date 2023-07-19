local RSGCore = exports['rsg-core']:GetCoreObject()

Citizen.CreateThread(function()
	for i=1, #Config.Storage do
		RSGCore.Functions.CreateUseableItem(Config.Storage[i].name, function(source, item)
			local src = source
			TriggerClientEvent("itemstorage:client:OpenItemStorage", src, item, Config.Storage[i].weight, Config.Storage[i].slots, Config.Storage[i].label, Config.Storage[i].items)
		end)
	end
end)

RSGCore.Functions.CreateCallback('itemstorage:GenerateUniqueName', function(source, cb, name, item, stashitems, weight, slots)
	local Player = RSGCore.Functions.GetPlayer(source)
	local stash = 0
	stashID = Player.PlayerData.items[item.slot].info.stash
	if stashID then
		stash = stashID
	else
		stash = RSGCore.Shared.RandomInt(1) .. RSGCore.Shared.RandomStr(2) .. RSGCore.Shared.RandomInt(3) .. RSGCore.Shared.RandomStr(2)
		Player.PlayerData.items[item.slot].info.stash = stash
		Player.Functions.SetInventory(Player.PlayerData.items, true)
	end
	
	local result = MySQL.Sync.fetchScalar('SELECT stash FROM stashitems WHERE stash = ?', {name .. stash})
	if result then
		TriggerClientEvent("itemstorage:client:CreateInventory", source, result, weight, slots)
		cb(result)
	else
		TriggerClientEvent("itemstorage:client:CreateInventory", source, name .. stash, weight, slots)
		TriggerEvent("rsg-inventory:server:SaveStashItems", name .. stash, stashitems)
		cb(name .. stash)
	end
end)

RSGCore.Functions.CreateCallback('itemstorage:Time', function(source, cb)
	local time = os.time()
	cb(time)
end)
