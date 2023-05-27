local RSGCore = exports['rsg-core']:GetCoreObject()
local GangAccounts = {}

function GetGangAccount(account)
	return GangAccounts[account] or 0
end

function AddGangMoney(account, amount)
	if not GangAccounts[account] then
		GangAccounts[account] = 0
	end

	GangAccounts[account] = GangAccounts[account] + amount
	MySQL.insert('INSERT INTO management_funds (job_name, amount, type) VALUES (:job_name, :amount, :type) ON DUPLICATE KEY UPDATE amount = :amount',
		{
			['job_name'] = account,
			['amount'] = GangAccounts[account],
			['type'] = 'gang'
		})
end

function RemoveGangMoney(account, amount)
	local isRemoved = false
	if amount > 0 then
		if not GangAccounts[account] then
			GangAccounts[account] = 0
		end

		if GangAccounts[account] >= amount then
			GangAccounts[account] = GangAccounts[account] - amount
			isRemoved = true
		end

		MySQL.update('UPDATE management_funds SET amount = ? WHERE job_name = ? and type = "gang"', { GangAccounts[account], account })
	end
	return isRemoved
end

MySQL.ready(function ()
	local gangmenu = MySQL.query.await('SELECT job_name,amount FROM management_funds WHERE type = "gang"', {})
	if not gangmenu then return end

	for _,v in ipairs(gangmenu) do
		GangAccounts[v.job_name] = v.amount
	end
end)

RegisterNetEvent("rsg-gangmenu:server:withdrawMoney", function(amount)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)

	if not Player.PlayerData.gang.isboss then ExploitBan(src, 'withdrawMoney Exploiting') return end

	local gang = Player.PlayerData.gang.name
	if RemoveGangMoney(gang, amount) then
		Player.Functions.AddMoney("cash", amount, 'Gang menu withdraw')
		TriggerEvent('rsg-log:server:CreateLog', 'gangmenu', 'Withdraw Money', 'yellow', Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname .. ' successfully withdrew $' .. amount .. ' (' .. gang .. ')', false)
		TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.you_have_withdrawn') ..amount, "success")
	else
		TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_dont_have_enough_money_the_account'), "error")
	end

	TriggerClientEvent('rsg-gangmenu:client:OpenMenu', src)
end)

RegisterNetEvent("rsg-gangmenu:server:depositMoney", function(amount)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)

	if not Player.PlayerData.gang.isboss then ExploitBan(src, 'depositMoney Exploiting') return end

	if Player.Functions.RemoveMoney("cash", amount) then
		local gang = Player.PlayerData.gang.name
		AddGangMoney(gang, amount)
		TriggerEvent('rsg-log:server:CreateLog', 'gangmenu', Lang:t('menu.deposit_money'), 'yellow', Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname .. ' successfully deposited $' .. amount .. ' (' .. gang .. ')', false)
		TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.you_have_deposited') ..amount, "success")
	else
		TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_dont_have_enough_money_to_add'), "error")
	end

	TriggerClientEvent('rsg-gangmenu:client:OpenMenu', src)
end)

RSGCore.Functions.CreateCallback('rsg-gangmenu:server:GetAccount', function(_, cb, GangName)
	local gangmoney = GetGangAccount(GangName)
	cb(gangmoney)
end)

-- Get Employees
RSGCore.Functions.CreateCallback('rsg-gangmenu:server:GetEmployees', function(source, cb, gangname)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)

	if not Player.PlayerData.gang.isboss then ExploitBan(src, 'GetEmployees Exploiting') return end

	local employees = {}
	local players = MySQL.query.await("SELECT * FROM `players` WHERE `gang` LIKE '%".. gangname .."%'", {})
	if players[1] ~= nil then
		for _, value in pairs(players) do
			local isOnline = RSGCore.Functions.GetPlayerByCitizenId(value.citizenid)

			if isOnline then
				employees[#employees+1] = {
				empSource = isOnline.PlayerData.citizenid,
				grade = isOnline.PlayerData.gang.grade,
				isboss = isOnline.PlayerData.gang.isboss,
				name = '🟢' .. isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
				}
			else
				employees[#employees+1] = {
				empSource = value.citizenid,
				grade =  json.decode(value.gang).grade,
				isboss = json.decode(value.gang).isboss,
				name = '❌' ..  json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
				}
			end
		end
	end
	cb(employees)
end)

-- Grade Change
RegisterNetEvent('rsg-gangmenu:server:GradeUpdate', function(data)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	local Employee = RSGCore.Functions.GetPlayerByCitizenId(data.cid)

	if not Player.PlayerData.gang.isboss then ExploitBan(src, 'GradeUpdate Exploiting') return end
	if data.grade > Player.PlayerData.gang.grade.level then TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.you_cannot_promote_this_rank'), "error") return end

	if Employee then
		if Employee.Functions.SetGang(Player.PlayerData.gang.name, data.grade) then
			TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.successfully_promoted'), "success")
			TriggerClientEvent('RSGCore:Notify', Employee.PlayerData.source, Lang:t('error.you_cannot_promote_this_rank') ..data.gradename..".", "success")
		else
			TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.grade_does_not_exist'), "error")
		end
	else
		TriggerClientEvent('RSGCore:Notify', src, Lang:t('error.civilian_is_not_in_city'), "error")
	end
	TriggerClientEvent('rsg-gangmenu:client:OpenMenu', src)
end)

-- Fire Member
RegisterNetEvent('rsg-gangmenu:server:FireMember', function(target)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	local Employee = RSGCore.Functions.GetPlayerByCitizenId(target)

	if not Player.PlayerData.gang.isboss then ExploitBan(src, 'FireEmployee Exploiting') return end

	if Employee then
		if target ~= Player.PlayerData.citizenid then
			if Employee.PlayerData.gang.grade.level > Player.PlayerData.gang.grade.level then TriggerClientEvent('RSGCore:Notify', src, "You cannot fire this citizen!", "error") return end
			if Employee.Functions.SetGang("none", '0') then
				TriggerEvent("rsg-log:server:CreateLog", "gangmenu", Lang:t('primary.gang_fire'), "orange", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. Lang:t('primary.successfully_fired') .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.gang.name .. ")", false)
				TriggerClientEvent('RSGCore:Notify', src,  Lang:t('success.gang_member_fired'), "success")
				TriggerClientEvent('RSGCore:Notify', Employee.PlayerData.source , "You have been expelled from the gang!", "error")
			else
				TriggerClientEvent('RSGCore:Notify', src, "Error.", "error")
			end
		else
			TriggerClientEvent('RSGCore:Notify', src,  Lang:t('error.you_cant_kick_yourself_out_of_the_gang'), "error")
		end
	else
		local player = MySQL.query.await('SELECT * FROM players WHERE citizenid = ? LIMIT 1', {target})
		if player[1] ~= nil then
			Employee = player[1]
			Employee.gang = json.decode(Employee.gang)
			if Employee.gang.grade.level > Player.PlayerData.job.grade.level then TriggerClientEvent('RSGCore:Notify', src, "You cannot fire this citizen!", "error") return end
			local gang = {}
			gang.name = "none"
			gang.label = Lang:t('menu.no_affiliation')
			gang.payment = 0
			gang.onduty = true
			gang.isboss = false
			gang.grade = {}
			gang.grade.name = nil
			gang.grade.level = 0
			MySQL.update('UPDATE players SET gang = ? WHERE citizenid = ?', {json.encode(gang), target})
			TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.gang_member_fired'), "success")
			TriggerEvent("rsg-log:server:CreateLog", "gangmenu", Lang:t('primary.gang_fire'), "orange", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname ..  Lang:t('primary.successfully_fired') .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.gang.name .. ")", false)
		else
			TriggerClientEvent('RSGCore:Notify', src,  Lang:t('error.civilian_is_not_in_city'), "error")
		end
	end
	TriggerClientEvent('rsg-gangmenu:client:OpenMenu', src)
end)

-- Recruit Player
RegisterNetEvent('rsg-gangmenu:server:HireMember', function(recruit)
	local src = source
	local Player = RSGCore.Functions.GetPlayer(src)
	local Target = RSGCore.Functions.GetPlayer(recruit)

	if not Player.PlayerData.gang.isboss then ExploitBan(src, 'HireEmployee Exploiting') return end

	if Target and Target.Functions.SetGang(Player.PlayerData.gang.name, 0) then
		TriggerClientEvent('RSGCore:Notify', src, Lang:t('success.you_hired') .. (Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname) .. Lang:t('success.come_success') .. Player.PlayerData.gang.label .. "", "success")
		TriggerClientEvent('RSGCore:Notify', Target.PlayerData.source , Lang:t('success.you_have_been_hired_as') .. Player.PlayerData.gang.label .. "", "success")
		TriggerEvent('rsg-log:server:CreateLog', 'gangmenu', 'Recruit', 'yellow', (Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname).. Lang:t('success.successfully_recruited') .. Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname .. ' (' .. Player.PlayerData.gang.name .. ')', false)
	end
	TriggerClientEvent('rsg-gangmenu:client:OpenMenu', src)
end)

-- Get closest player sv
RSGCore.Functions.CreateCallback('rsg-gangmenu:getplayers', function(source, cb)
	local src = source
	local players = {}
	local PlayerPed = GetPlayerPed(src)
	local pCoords = GetEntityCoords(PlayerPed)
	for _, v in pairs(RSGCore.Functions.GetPlayers()) do
		local targetped = GetPlayerPed(v)
		local tCoords = GetEntityCoords(targetped)
		local dist = #(pCoords - tCoords)
		if PlayerPed ~= targetped and dist < 10 then
			local ped = RSGCore.Functions.GetPlayer(v)
			players[#players+1] = {
			id = v,
			coords = GetEntityCoords(targetped),
			name = ped.PlayerData.charinfo.firstname .. " " .. ped.PlayerData.charinfo.lastname,
			citizenid = ped.PlayerData.citizenid,
			sources = GetPlayerPed(ped.PlayerData.source),
			sourceplayer = ped.PlayerData.source
			}
		end
	end
		table.sort(players, function(a, b)
			return a.name < b.name
		end)
	cb(players)
end)
