-- Variables
local RSGCore = exports['rsg-core']:GetCoreObject()
local frozen = false
local permissions = {
    ['kill'] = 'admin',
    ['ban'] = 'admin',
    ['noclip'] = 'admin',
    ['kickall'] = 'admin',
    ['kick'] = 'admin',
    ["revive"] = "admin",
    ["goto"] = "admin",
    ["spectate"] = "admin",
    ["intovehicle"] = "admin",
    ["bring"] = "admin",
    ["inventory"] = "admin",
    ["cloth"] = "admin",
    ["deletecharacter"] = "admin"
}
local players = {}

-- Get Players
RSGCore.Functions.CreateCallback('test:getplayers', function(_, cb) -- WORKS
    cb(players)
end)

RSGCore.Functions.CreateCallback('admin:server:getrank', function(source, cb)
    if RSGCore.Functions.HasPermission(source, 'god') or IsPlayerAceAllowed(source, 'command') then
        cb(true)
    else
        cb(false)
    end
end)

-- Functions
local function tablelength(table)
    local count = 0
    for _ in pairs(table) do
        count = count + 1
    end
    return count
end

local function BanPlayer(src)
    MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)', {
        GetPlayerName(src),
        RSGCore.Functions.GetIdentifier(src, 'license'),
        RSGCore.Functions.GetIdentifier(src, 'discord'),
        RSGCore.Functions.GetIdentifier(src, 'ip'),
        "Trying to revive theirselves or other players",
        2147483647,
        'adminmenu'
    })
    TriggerEvent('qb-log:server:CreateLog', 'adminmenu', 'Player Banned', 'red', string.format('%s was banned by %s for %s', GetPlayerName(src), 'adminmenu', "Trying to trigger admin options which they dont have permission for"), true)
    DropPlayer(src, 'You were permanently banned by the server for: Exploiting')
end

RegisterNetEvent('admin:server:kill', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['kill']) or IsPlayerAceAllowed(src, 'command')  then
        TriggerClientEvent('rsg-medic:client:KillPlayer', player.id)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:revive', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['revive']) or IsPlayerAceAllowed(src, 'command')  then
        --TriggerClientEvent('admin:client:revivePlayer', player.id)
        TriggerClientEvent('rsg-medic:clent:playerRevive', src)
        --RevivePlayer()
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:kick', function(player, reason)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['kick']) or IsPlayerAceAllowed(src, 'command')  then
        TriggerEvent('qb-log:server:CreateLog', 'bans', 'Player Kicked', 'red', string.format('%s was kicked by %s for %s', GetPlayerName(player.id), GetPlayerName(src), reason), true)
        DropPlayer(player.id, Lang:t("info.kicked_server") .. ':\n' .. reason .. '\n\n' .. Lang:t("info.check_discord") .. RSGCore.Config.Server.Discord)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:ban', function(player, time, reason)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['ban']) or IsPlayerAceAllowed(src, 'command') then
        time = tonumber(time)
        local banTime = tonumber(os.time() + time)
        if banTime > 2147483647 then
            banTime = 2147483647
        end
        local timeTable = os.date('*t', banTime)
        MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)', {
            GetPlayerName(player.id),
            RSGCore.Functions.GetIdentifier(player.id, 'license'),
            RSGCore.Functions.GetIdentifier(player.id, 'discord'),
            RSGCore.Functions.GetIdentifier(player.id, 'ip'),
            reason,
            banTime,
            GetPlayerName(src)
        })
        TriggerClientEvent('chat:addMessage', -1, {
            template = "<div class=chat-message server'><strong>ANNOUNCEMENT | {0} has been banned:</strong> {1}</div>",
            args = {GetPlayerName(player.id), reason}
        })
        TriggerEvent('qb-log:server:CreateLog', 'bans', 'Player Banned', 'red', string.format('%s was banned by %s for %s', GetPlayerName(player.id), GetPlayerName(src), reason), true)
        if banTime >= 2147483647 then
            DropPlayer(player.id, Lang:t("info.banned") .. '\n' .. reason .. Lang:t("info.ban_perm") .. RSGCore.Config.Server.Discord)
        else
            DropPlayer(player.id, Lang:t("info.banned") .. '\n' .. reason .. Lang:t("info.ban_expires") .. timeTable['day'] .. '/' .. timeTable['month'] .. '/' .. timeTable['year'] .. ' ' .. timeTable['hour'] .. ':' .. timeTable['min'] .. '\n🔸 Check our Discord for more information: ' .. RSGCore.Config.Server.Discord)
        end
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:spectate', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['spectate']) or IsPlayerAceAllowed(src, 'command') then
        local targetped = GetPlayerPed(player.id)
        local coords = GetEntityCoords(targetped)
        TriggerClientEvent('admin:client:spectate', src, player.id, coords)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:goto', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['goto']) or IsPlayerAceAllowed(src, 'command') then
        local admin = GetPlayerPed(src)
        local coords = GetEntityCoords(GetPlayerPed(player.id))
        SetEntityCoords(admin, coords)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:bring', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['bring']) or IsPlayerAceAllowed(src, 'command') then
        local admin = GetPlayerPed(src)
        local coords = GetEntityCoords(admin)
        local target = GetPlayerPed(player.id)
        SetEntityCoords(target, coords)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:inventory', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['inventory']) or IsPlayerAceAllowed(src, 'command') then
        TriggerClientEvent('admin:client:inventory', src, player.id)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:cloth', function(targetId)
    local src = source
    local targetPlayer = RSGCore.Functions.GetPlayer(targetId)
    if RSGCore.Functions.HasPermission(src, permissions['cloth']) or IsPlayerAceAllowed(src, 'command') and targetPlayer  then
    --if AdminPanel.HasPermission(src, "cloth") and targetPlayer then

        TriggerClientEvent("admin:client:OpenClothingMenu", src)
        TriggerClientEvent("admin:client:OpenClothingMenu", targetId)
    end
end)
--[[
RegisterNetEvent('admin:server:cloth', function(player)
    local src = source
    if RSGCore.Functions.HasPermission(src, permissions['cloth']) or IsPlayerAceAllowed(src, 'command') then
        TriggerEvent("rsg-clothes:LoadClothes", src)
    else
        BanPlayer(src)
    end
end)--]]

RegisterNetEvent('admin:server:setPermissions', function(targetId, group)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'god') or IsPlayerAceAllowed(src, 'command') then
        RSGCore.Functions.AddPermission(targetId, group[1].rank)
        TriggerClientEvent('RSGCore:Notify', targetId, Lang:t("info.rank_level")..group[1].label)
    else
        BanPlayer(src)
    end
end)

RegisterNetEvent('admin:server:SendReport', function(name, targetSrc, msg)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
        if RSGCore.Functions.IsOptin(src) then
            TriggerClientEvent('chat:addMessage', src, {
                color = {255, 0, 0},
                multiline = true,
                args = {Lang:t("info.admin_report")..name..' ('..targetSrc..')', msg}
            })
        end
    end
end)

RegisterServerEvent('admin:giveWeapon', function(weapon)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
        local Player = RSGCore.Functions.GetPlayer(src)
        Player.Functions.AddItem(weapon, 1)
    else
        BanPlayer(src)
    end
end)

RegisterServerEvent("admin:server:SetWeather", function(weatherType)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'weather') or IsPlayerAceAllowed(src, 'command') then
        exports.weathersync:setWeather(weatherType)
        Wait(100)
        exports.weathersync:setWeather(setWeather)
    end
end)



RegisterServerEvent("admin:server:SetTime", function(hour, minute)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
        exports.weathersync:setTime(0, hour, 0, 0, transition, freeze)
    end
end)

RegisterNetEvent('admin:server:SaveCar', function(mods, vehicle, _, plate)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
        local Player = RSGCore.Functions.GetPlayer(src)
        local result = MySQL.query.await('SELECT plate FROM player_vehicles WHERE plate = ?', { plate })
        if result[1] == nil then
            MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state) VALUES (?, ?, ?, ?, ?, ?, ?)', {
                Player.PlayerData.license,
                Player.PlayerData.citizenid,
                vehicle.model,
                vehicle.hash,
                json.encode(mods),
                plate,
                0
            })
            TriggerClientEvent('RSGCore:Notify', src, Lang:t("success.success_vehicle_owner"), 'success', 5000)
        else
            TriggerClientEvent('RSGCore:Notify', src, Lang:t("error.failed_vehicle_owner"), 'error', 3000)
        end
    else
        BanPlayer(src)
    end
end)

RegisterServerEvent("admin:server:DeleteCharacter", function(citizenId)
    local src = source
    if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
        local playerId = src
        local Player = RSGCore.Functions.GetPlayer(tonumber(playerId))
        if Player then
            local citizenid = Player.PlayerData.citizenid
            DropPlayer(playerId,Lang:t("info.kick_message"))
            CreateThread(function()
                Wait(200)
        
                exports.oxmysql:execute('DELETE FROM players WHERE citizenid = ?', { citizenid })
                exports.oxmysql:execute('DELETE FROM player_wagons WHERE citizenid = ?', { citizenid })
                exports.oxmysql:execute('DELETE FROM playeroutfit WHERE citizenid = ?', { citizenid })
                exports.oxmysql:execute('DELETE FROM player_houses WHERE citizenid = ?', { citizenid })
                exports.oxmysql:execute('DELETE FROM player_contacts WHERE citizenid =?', { citizenid })
                exports.oxmysql:execute('DELETE FROM playerskins WHERE citizenid =?', { citizenid })
                TriggerClientEvent("RSGCore:Notify",src,Lang:t("info.command_executed"))
            end)
        else
            TriggerClientEvent('RSGCore:Notify', src, Lang:t("command.player_not_found"), 'error')
        end
    end
end)


-- Commands
RSGCore.Commands.Add('names', Lang:t("commands.player_name_overhead"), {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:toggleNames', src)
end, 'admin')

RSGCore.Commands.Add('coords', Lang:t("commands.coords_dev_command"), {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:ToggleCoords', src)
end, 'admin')

RSGCore.Commands.Add('noclip', Lang:t("commands.toogle_noclip"), {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:ToggleNoClipMode', src)
end, 'admin')

RSGCore.Commands.Add('announce', Lang:t("commands.make_announcement"), {}, false, function(_, args)
    local msg = table.concat(args, ' ')
    if msg == '' then return end
    TriggerClientEvent('chat:addMessage', -1, {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Announcement", msg}
    })
end, 'admin')

RegisterServerEvent('admin:server:RequestVehicleSpawn', function(modelName)
    local src = source
    if AdminPanel.HasPermission(src, "spawncar") then
        TriggerClientEvent('RSGCore:Command:SpawnVehicle', src, modelName)
    end
end)

RSGCore.Functions.CreateCallback("slrp-admin:server:HasPermission", function(source, cb, permission)
    if AdminPanel.HasPermission(source, permission) or IsPlayerAceAllowed (source, 'admin') then
        return cb(true)
    end
end)

RSGCore.Commands.Add('admin', Lang:t("commands.open_admin"), {}, false, function(source, _)
    TriggerClientEvent('admin:client:openMenu', source)
end, 'admin')

RSGCore.Commands.Add('report', Lang:t("info.admin_report"), {{name='message', help='Message'}}, true, function(source, args)
    local src = source
    local msg = table.concat(args, ' ')
    local Player = RSGCore.Functions.GetPlayer(source)
    TriggerClientEvent('admin:client:SendReport', -1, GetPlayerName(src), src, msg)
    TriggerEvent('qb-log:server:CreateLog', 'report', 'Report', 'green', '**'..GetPlayerName(source)..'** (CitizenID: '..Player.PlayerData.citizenid..' | ID: '..source..') **Report:** ' ..msg, false)
end)

RSGCore.Commands.Add('staffchat', Lang:t("commands.staffchat_message"), {{name='message', help='Message'}}, true, function(source, args)
    local msg = table.concat(args, ' ')
    local name = GetPlayerName(source)

    local plrs = RSGCore.Functions.GetPlayers()

    for i = 1, #plrs, 1 do
        local plr = plrs[i]
        if RSGCore.Functions.HasPermission(plr, 'admin') or IsPlayerAceAllowed(plr, 'command') then
            if RSGCore.Functions.IsOptin(plr) then
                TriggerClientEvent('chat:addMessage', plr, {
                    color = {255, 0, 0},
                    multiline = true,
                    args = {Lang:t("info.staffchat")..name, msg}
                })
            end
        end
    end
end, 'admin')

RSGCore.Commands.Add('givenuifocus', Lang:t("commands.nui_focus"), {{name='id', help='Player id'}, {name='focus', help='Set focus on/off'}, {name='mouse', help='Set mouse on/off'}}, true, function(_, args)
    local playerid = tonumber(args[1])
    local focus = args[2]
    local mouse = args[3]
    TriggerClientEvent('admin:client:GiveNuiFocus', playerid, focus, mouse)
end, 'admin')

RSGCore.Commands.Add('warn', Lang:t("commands.warn_a_player"), {{name='ID', help='Player'}, {name='Reason', help='Mention a reason'}}, true, function(source, args)
    local targetPlayer = RSGCore.Functions.GetPlayer(tonumber(args[1]))
    local senderPlayer = RSGCore.Functions.GetPlayer(source)
    table.remove(args, 1)
    local msg = table.concat(args, ' ')
    local warnId = 'WARN-'..math.random(1111, 9999)
    if targetPlayer ~= nil then
		TriggerClientEvent('chat:addMessage', targetPlayer.PlayerData.source, { args = { "SYSTEM", Lang:t("info.warning_chat_message")..GetPlayerName(source).."," .. Lang:t("info.reason") .. ": "..msg }, color = 255, 0, 0 })
		TriggerClientEvent('chat:addMessage', source, { args = { "SYSTEM", Lang:t("info.warning_staff_message")..GetPlayerName(targetPlayer.PlayerData.source)..", for: "..msg }, color = 255, 0, 0 })
        MySQL.insert('INSERT INTO player_warns (senderIdentifier, targetIdentifier, reason, warnId) VALUES (?, ?, ?, ?)', {
            senderPlayer.PlayerData.license,
            targetPlayer.PlayerData.license,
            msg,
            warnId
        })
    else
        TriggerClientEvent('RSGCore:Notify', source, Lang:t("error.not_online"), 'error')
    end
end, 'admin')

RSGCore.Commands.Add('checkwarns', Lang:t("commands.check_player_warning"), {{name='id', help='Player'}, {name='Warning', help='Number of warning, (1, 2 or 3 etc..)'}}, false, function(source, args)
    if args[2] == nil then
        local targetPlayer = RSGCore.Functions.GetPlayer(tonumber(args[1]))
        local result = MySQL.query.await('SELECT * FROM player_warns WHERE targetIdentifier = ?', { targetPlayer.PlayerData.license })
        TriggerClientEvent('chat:addMessage', source, 'SYSTEM', 'warning', targetPlayer.PlayerData.name..' has '..tablelength(result)..' warnings!')
    else
        local targetPlayer = RSGCore.Functions.GetPlayer(tonumber(args[1]))
        local warnings = MySQL.query.await('SELECT * FROM player_warns WHERE targetIdentifier = ?', { targetPlayer.PlayerData.license })
        local selectedWarning = tonumber(args[2])
        if warnings[selectedWarning] ~= nil then
            local sender = RSGCore.Functions.GetPlayer(warnings[selectedWarning].senderIdentifier)
            TriggerClientEvent('chat:addMessage', source, 'SYSTEM', 'warning', targetPlayer.PlayerData.name..' has been warned by '..sender.PlayerData.name..', Reason: '..warnings[selectedWarning].reason)
        end
    end
end, 'admin')

RSGCore.Commands.Add('delwarn', Lang:t("commands.delete_player_warning"), {{name='id', help='Player'}, {name='Warning', help='Number of warning, (1, 2 or 3 etc..)'}}, true, function(source, args)
    local targetPlayer = RSGCore.Functions.GetPlayer(tonumber(args[1]))
    local warnings = MySQL.query.await('SELECT * FROM player_warns WHERE targetIdentifier = ?', { targetPlayer.PlayerData.license })
    local selectedWarning = tonumber(args[2])
    if warnings[selectedWarning] ~= nil then
        TriggerClientEvent('chat:addMessage', source, 'SYSTEM', 'warning', 'You have deleted warning ('..selectedWarning..') , Reason: '..warnings[selectedWarning].reason)
        MySQL.query('DELETE FROM player_warns WHERE warnId = ?', { warnings[selectedWarning].warnId })
    end
end, 'admin')

RSGCore.Commands.Add('reportr', Lang:t("commands.reply_to_report"), {{name='id', help='Player'}, {name = 'message', help = 'Message to respond with'}}, false, function(source, args)
    local src = source
    local playerId = tonumber(args[1])
    table.remove(args, 1)
    local msg = table.concat(args, ' ')
    local OtherPlayer = RSGCore.Functions.GetPlayer(playerId)
    if msg == '' then return end
    if not OtherPlayer then return TriggerClientEvent('RSGCore:Notify', src, 'Player is not online', 'error') end
    if not RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') ~= 1 then return end
    TriggerClientEvent('chat:addMessage', playerId, {
        color = {255, 0, 0},
        multiline = true,
        args = {'Admin Response', msg}
    })
    TriggerClientEvent('chat:addMessage', src, {
        color = {255, 0, 0},
        multiline = true,
        args = {'Report Response ('..playerId..')', msg}
    })
    TriggerClientEvent('RSGCore:Notify', src, 'Reply Sent')
    TriggerEvent('qb-log:server:CreateLog', 'report', 'Report Reply', 'red', '**'..GetPlayerName(src)..'** replied on: **'..OtherPlayer.PlayerData.name.. ' **(ID: '..OtherPlayer.PlayerData.source..') **Message:** ' ..msg, false)
end, 'admin')

RSGCore.Commands.Add('setmodel', Lang:t("commands.change_ped_model"), {{name='model', help='Name of the model'}, {name='id', help='Id of the Player (empty for yourself)'}}, false, function(source, args)
    local model = args[1]
    local target = tonumber(args[2])
    if model ~= nil or model ~= '' then
        if target == nil then
            TriggerClientEvent('admin:client:SetModel', source, tostring(model))
        else
            local Trgt = RSGCore.Functions.GetPlayer(target)
            if Trgt ~= nil then
                TriggerClientEvent('admin:client:SetModel', target, tostring(model))
            else
                TriggerClientEvent('RSGCore:Notify', source, Lang:t("error.not_online"), 'error')
            end
        end
    else
        TriggerClientEvent('RSGCore:Notify', source, Lang:t("error.failed_set_model"), 'error')
    end
end, 'admin')

RSGCore.Commands.Add('setspeed', Lang:t("commands.set_player_foot_speed"), {}, false, function(source, args)
    local speed = args[1]
    if speed ~= nil then
        TriggerClientEvent('admin:client:SetSpeed', source, tostring(speed))
    else
        TriggerClientEvent('RSGCore:Notify', source, Lang:t("error.failed_set_speed"), 'error')
    end
end, 'admin')

RSGCore.Commands.Add('reporttoggle', Lang:t("commands.report_toggle"), {}, false, function(source, _)
    local src = source
    RSGCore.Functions.ToggleOptin(src)
    if RSGCore.Functions.IsOptin(src) then
        TriggerClientEvent('RSGCore:Notify', src, Lang:t("success.receive_reports"), 'success')
    else
        TriggerClientEvent('RSGCore:Notify', src, Lang:t("error.no_receive_report"), 'error')
    end
end, 'admin')

RSGCore.Commands.Add('kickall', Lang:t("commands.kick_all"), {}, false, function(source, args)
    local src = source
    if src > 0 then
        local reason = table.concat(args, ' ')
        if RSGCore.Functions.HasPermission(src, 'god') or IsPlayerAceAllowed(src, 'command') then
            if reason and reason ~= '' then
                for _, v in pairs(RSGCore.Functions.GetPlayers()) do
                    local Player = RSGCore.Functions.GetPlayer(v)
                    if Player then
                        DropPlayer(Player.PlayerData.source, reason)
                    end
                end
            else
                TriggerClientEvent('RSGCore:Notify', src, Lang:t("info.no_reason_specified"), 'error')
            end
        end
    else
        for _, v in pairs(RSGCore.Functions.GetPlayers()) do
            local Player = RSGCore.Functions.GetPlayer(v)
            if Player then
                DropPlayer(Player.PlayerData.source, Lang:t("info.server_restart") .. RSGCore.Config.Server.Discord)
            end
        end
    end
end, 'god')

RSGCore.Commands.Add('setammo', Lang:t("commands.ammo_amount_set"), {{name='amount', help='Amount of bullets, for example: 20'}, {name='weapon', help='Name of the weapon, for example: WEAPON_VINTAGEPISTOL'}}, false, function(source, args)
    local src = source
    local weapon = args[2]
    local amount = tonumber(args[1])

    if weapon ~= nil then
        TriggerClientEvent('qb-weapons:client:SetWeaponAmmoManual', src, weapon, amount)
    else
        TriggerClientEvent('qb-weapons:client:SetWeaponAmmoManual', src, 'current', amount)
    end
end, 'admin')

RSGCore.Commands.Add('vector2', 'Copy vector2 to clipboard (Admin only)', {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:copyToClipboard', src, 'coords2')
end, 'admin')

RSGCore.Commands.Add('vector3', 'Copy vector3 to clipboard (Admin only)', {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:copyToClipboard', src, 'coords3')
end, 'admin')

RSGCore.Commands.Add('vector4', 'Copy vector4 to clipboard (Admin only)', {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:copyToClipboard', src, 'coords4')
end, 'admin')

RSGCore.Commands.Add('heading', 'Copy heading to clipboard (Admin only)', {}, false, function(source)
    local src = source
    TriggerClientEvent('admin:client:copyToClipboard', src, 'heading')
end, 'admin')

CreateThread(function()
    while true do
        local tempPlayers = {}
        for _, v in pairs(RSGCore.Functions.GetPlayers()) do
            local targetped = GetPlayerPed(v)
            local ped = RSGCore.Functions.GetPlayer(v)
            tempPlayers[#tempPlayers + 1] = {
                name = (ped.PlayerData.charinfo.firstname or '') .. ' ' .. (ped.PlayerData.charinfo.lastname or '') .. ' | (' .. (GetPlayerName(v) or '') .. ')',
                id = v,
                coords = GetEntityCoords(targetped),
                cid = ped.PlayerData.charinfo.firstname .. ' ' .. ped.PlayerData.charinfo.lastname,
                citizenid = ped.PlayerData.citizenid,
                sources = GetPlayerPed(ped.PlayerData.source),
                sourceplayer = ped.PlayerData.source

            }
        end
        -- Sort players list by source ID (1,2,3,4,5, etc) --
        table.sort(tempPlayers, function(a, b)
            return a.id < b.id
        end)
        players = tempPlayers
        Wait(1500)
    end
end)
