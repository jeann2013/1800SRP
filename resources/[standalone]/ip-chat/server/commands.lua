local RSGCore = exports['rsg-core']:GetCoreObject()

local canAdvertise = true

local reportCooldown = {}


if Config.AllowPlayersToClearTheirChat then
    RegisterCommand(Config.ClearChatCommand, function(source, args, rawCommand)
        TriggerClientEvent('chat:client:ClearChat', source)
    end)
end

if Config.AllowStaffsToClearEveryonesChat then
    RegisterCommand(Config.ClearEveryonesChatCommand, function(source, args, rawCommand)
        local Player = RSGCore.Functions.GetPlayer(source)
        local time = os.date(Config.DateFormat)
        local src = source

        if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
            TriggerClientEvent('chat:client:ClearChat', -1)
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div class="chat-message system"><i class="fas fa-cog"></i> <b><span style="color: #df7b00">SYSTEM</span><span style="font-size: 14px; color: #e1e1e1;">{0}</span></b>Thehas been cleared!</div></div>',
                args = { time }
            })
        end
    end)
end

if Config.EnableStaffCommand then
    RegisterCommand(Config.StaffCommand, function(source, args, rawCommand)
        local Player = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.StaffCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        playerName = Player.PlayerData.name
        local src = source

        if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div class="chat-message staff"><i class="fas fa-shield-alt"></i> <b><span style="color: #1ebc62">[ANNOUNCEMENT]</span></b>{0}</div>',
                args = { message, time }
            })
        end
    end)
end

if Config.EnableStaffOnlyCommand then
    RegisterCommand(Config.StaffOnlyCommand, function(source, args, rawCommand)
        local Player = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.StaffOnlyCommand)
        local message = rawCommand:sub(length + 2)
        local time = os.date(Config.DateFormat)
        local playerName = Player.PlayerData.name
        local src = source

        if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
            local players = getPlayersWithStaffRoles()
            for k, v in ipairs(players) do
                TriggerClientEvent('chat:addMessage', v, {
                    template = '<div class="chat-message staffonly"><i class="fas fa-eye-slash"></i> <b><span style="color: #1ebc62">[ADMIN] {0}</span><span style="font-size: 14px; color: #e1e1e1;">{2}</span></b>{1}</div>',
                    args = { playerName, message, time }
                })
            end
            TriggerClientEvent('chat:addMessage', src, {
                template = '<div class="chat-message staffonly"><i class="fas fa-eye-slash"></i> <b><span style="color: #1ebc62">[ADMIN] {0}</span><span style="font-size: 14px; color: #e1e1e1;">{2}</span></b>{1}</div>',
                args = { playerName, message, time }
            })
        end
    end)
end

if Config.EnableAdvertisementCommand then
    RegisterCommand(Config.AdvertisementCommand, function(source, args, rawCommand)
        local Player = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.AdvertisementCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        local PlayerData = Player.PlayerData
        local firstname = PlayerData.charinfo.firstname
        local lastname = PlayerData.charinfo.lastname
        local playerName = firstname .. ' ' .. lastname
        local bankMoney = PlayerData.money.bank

        if canAdvertise then
            if bankMoney >= Config.AdvertisementPrice then
                Player.Functions.RemoveMoney('bank', Config.AdvertisementPrice)
                TriggerClientEvent('chat:addMessage', -1, {
                    template = '<div class="chat-message advertisement"><b><span style="color: #81db44">{0}</span><span style="font-size: 14px; color: #e1e1e1;">{2}</span></b>{1}</div>',
                    args = { playerName, message, time }
                })

                RSGCore.Functions.Notify("Advertisement successfully made for "..Config.AdvertisementPrice..'$', success, 5000)

                local time = Config.AdvertisementCooldown * 60
                local pastTime = 0
                canAdvertise = false

                while (time > pastTime) do
                    Citizen.Wait(1000)
                    pastTime = pastTime + 1
                    timeLeft = time - pastTime
                end
                canAdvertise = true
            else
                RSGCore.Functions.Notify("You don't have enough money to make an advertisement", 'error')
            end
        else
            RSGCore.Functions.Notify("You can only advertise once every "..Config.AdvertisementCooldown.." minutes.", 'error', 5000)
        end
    end)
end


if Config.EnableValentineCommand then
    RegisterCommand(Config.ValentineCommand, function(source, args, rawCommand)
        local xPlayer = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.ValentineCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        playerName = xPlayer.PlayerData.name
        local job = xPlayer.PlayerData.job.name

        if job == Config.ValentineJobName then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div class="chat-message valentine"><i class="fas fa-cog"></i> <b><span style="color: #595858">[VALENTINE] {0}</span><span style="font-size: 14px; color: #fcf7f5;">{1}</div></b><div style="margin-top: 5px; font-weight: 300;"</div>',
                args = { message, time }
            })
        end
    end)
end

if Config.EnableRhodesCommand then
    RegisterCommand(Config.RhodesCommand, function(source, args, rawCommand)
        local xPlayer = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.RhodesCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        local job = xPlayer.PlayerData.job.name

        if job == Config.RhodesJobName then
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div class="chat-message rhodes"><i class="fas fa-cog"></i> <b><span style="color: #32406e">[RHODES] {0}</span><span style="font-size: 14px; color: #62a2f5;">{1}</div></b><div style="margin-top: 5px; font-weight: 300;"</div>',
                args = { message, time }
            })
        end
    end)
end

RegisterCommand('report', function(source, args, rawCommand)
    local src = source
	local msg = table.concat(args, ' ')
	local Player = RSGCore.Functions.GetPlayer(src)
	TriggerClientEvent('ip-chat:client:SendReport', -1, GetPlayerName(src), src, msg)
	TriggerEvent('rsg-log:server:CreateLog', 'report', 'Report', 'green', '**' .. GetPlayerName(src) ..' (' .. GetPlayerIdentifier(src) .. ') ** (CitizenID: ' .. Player.PlayerData.citizenid .. ' | ID: ' .. src .. ') **Report:** ' .. msg, false)
end)

RegisterNetEvent('ip-chat:server:SendReport', function(name, targetSrc, msg)
	local src = source
	if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
		TriggerClientEvent('chat:addMessage', src, {
			template =
			'<div class="chat-message report"> <b><span style="color: #e1e1e1">[REPORT] {0}</span></b>{2}</div>',
			args = { name, targetSrc, msg }
		})
	end
end)

-- RegisterCommand('reply', function(source, args, rawCommand)
--     local player = RSGCore.Functions.GetPlayer(source)
--     local playerName = player.PlayerData.name
--     local message = table.concat(args, ' ')
--     local time = os.date(Config.DateFormat)
--     local src = source

--     if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
--         -- Check if the user provided an ID and a message
--         if #args < 2 then
--             RSGCore.Functions.Notify('Usage: /reply [report ID] [message]', 'error')
--             return
--         end
        
--         -- Get the report ID and message
--         local reportId = tonumber(args[1])
--         local replyMessage = table.concat(args, ' ', 2)
        
--         -- Get the report from the ID
--         local report = reportCooldown[reportId]
--         if not report then
--             RSGCore.Functions.Notify('Invalid report ID.', 'error')
--             return
--         end
        
--         -- Get the player who made the report
--         local reportedPlayer = RSGCore.Functions.GetPlayer(report.reporter)
--         if not reportedPlayer then
--             RSGCore.Functions.Notify('Reported player is not online.', 'error')
--             return
--         end
        
--         -- Send the reply message to the player who made the report
--         TriggerClientEvent('chat:addMessage', reportedPlayer.PlayerData.source, {
--             template = '<div class="chat-message report-reply"> <b><span style="color: #feca57">[REPORT REPLY] {0}</span></b>{2}</div>',
--             args = { playerName, replyMessage, time }
--         })
        
--         -- Notify the admin that the message was sent
--         RSGCore.Functions.Notify(string.format('Your message was sent to %s.', reportedPlayer.PlayerData.name))
        
--         -- Add the reply message to the report log
--         table.insert(report.log, {
--             author = playerName,
--             message = replyMessage,
--             time = os.date(Config.DateFormat)
--         })
--     end
-- end)

-- RegisterCommand('rumor', function(source, args, rawCommand)
--     local message = table.concat(args, ' ')
--     local time = os.date(Config.DateFormat)

--     TriggerClientEvent('chat:addMessage', -1, {
--         template = '<div class="chat-message gossip"> <b><span style="color: #ffc107">[RUMOR]</span></b>{0}</div>',
--         args = { message, time }
--     })
-- end)

-- RegisterCommand('me', function(source, args, rawCommand)
--     local message = table.concat(args, ' ')
--     local time = os.date(Config.DateFormat)
--     local Player = RSGCore.Functions.GetPlayer(source)
--     local PlayerData = Player.PlayerData
--     local firstname = PlayerData.charinfo.firstname
--     local lastname = PlayerData.charinfo.lastname
--     local playerName = firstname .. ' ' .. lastname

--     TriggerClientEvent('chat:addMessage', -1, {
--         template = '<div class="chat-message twitter"> <b><span style="color: #c2a3da"> * {2} </span></b>{0}</div>',
--         args = { message, time, playerName }
--     })
-- end)

-- RegisterCommand('do', function(source, args, rawCommand)
--     local message = table.concat(args, ' ')
--     local time = os.date(Config.DateFormat)
--     local Player = RSGCore.Functions.GetPlayer(source)
--     local PlayerData = Player.PlayerData
--     local firstname = PlayerData.charinfo.firstname
--     local lastname = PlayerData.charinfo.lastname
--     local playerName = firstname .. ' ' .. lastname

--     TriggerClientEvent('chat:addMessage', -1, {
--         template = '<div class="chat-message twitter"> <b><span style="color: #c2a3da"> * </span></b>{0}. (({2}))</div>',
--         args = { message, time, playerName }
--     })
-- end)


-- RegisterCommand('ooc', function(source, args, rawCommand)
    
--     local Player = RSGCore.Functions.GetPlayer(source)
--     local message = table.concat(args, ' ')
--     local time = os.date(Config.DateFormat)
--     local PlayerData = Player.PlayerData
--     local firstname = PlayerData.charinfo.firstname
--     local lastname = PlayerData.charinfo.lastname
--     local playerName = firstname .. ' ' .. lastname
--     TriggerClientEvent('chat:addMessage', -1, {
--         template = '<div class="chat-message ooc"> <b><span style="color: #bbbbbb"> (({0}: </span></b> {2}))</div>',
--         args = {playerName, time, message}
--     })
--     TriggerEvent('rsg-log:server:CreateLog', 'ooc', 'OOC', 'white', '**' .. GetPlayerName(source) .. '** (CitizenID: ' .. Player.PlayerData.citizenid .. ' | ID: ' .. source .. ') **Message:** ' .. message, false)
-- end)

if Config.EnableWhisperCommand then
    RegisterCommand(Config.WhisperCommand, function(source, args, rawCommand)
        local xPlayer = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.WhisperCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        playerName = xPlayer.PlayerData.name
        TriggerClientEvent('chat:whisper', -1, source, playerName, message, time)
    end)
end

if Config.EnableDoCommand then
    RegisterCommand(Config.DoCommand, function(source, args, rawCommand)
        local xPlayer = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.DoCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        playerName = xPlayer.PlayerData.name
        TriggerClientEvent('chat:do', -1, source, playerName, message, time)
    end)
end

if Config.EnableOocCommand then
    RegisterCommand(Config.OocCommand, function(source, args, rawCommand)
        local xPlayer = RSGCore.Functions.GetPlayer(source)
        local length = string.len(Config.OocCommand)
        local message = rawCommand:sub(length + 1)
        local time = os.date(Config.DateFormat)
        playerName = xPlayer.PlayerData.name
        TriggerClientEvent('chat:ooc', -1, source, playerName, message, time)
    end)
end

--restart announcement

local times = {
    [1800] = '30 munutos',
    [900] = '15 munutos',
    [600] = '10 munutos',
    [300] = '5 munutos',
    [240] = '4 munutos',
    [180] = '3 munutos',
    [120] = '2 munutos',
    [60] = '1 minuto. Por favor desconectate.',
}

AddEventHandler('txAdmin:events:announcement', function(data)
	local time = os.date(Config.DateFormat)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message staff"> <b><span style="color: #1ebc62">[ANNOUNCEMENT]</span></b>{0}</div>',
        args = { data.message, time }
    })
end)

AddEventHandler('txAdmin:events:scheduledRestart', function(data)
	local time = os.date(Config.DateFormat)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message staff"><b><span style="color: #1ebc62">[ANNOUNCEMENT]</span></b>{0}</div>',
        args = { 'This server is scheduled to restart in ' .. times[data.secondsRemaining], time }
    })
end)

function getPlayersWithStaffRoles()
    local players = {}
    for k, v in ipairs(RSGCore.Functions.GetPlayers()) do
        for k, x in ipairs(Config.StaffGroups) do
            if RSGCore.Functions.GetPermission(v) == x then
                table.insert(players, v)
                break
            end
        end
    end

    return players
end
