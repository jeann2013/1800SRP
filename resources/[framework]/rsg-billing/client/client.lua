local RSGCore = exports['rsg-core']:GetCoreObject()
local jobcheck = false

-- billing menu
RegisterNetEvent('rsg-billing:client:billingMenu', function()
    local PlayerId = GetPlayerServerId(PlayerId())
    local BillsOptions = {
        {
            header = Lang:t("header.billing_menu"),
            isMenuHeader = true,
            icon = 'fas fa-file-invoice-dollar',
        },
        {
            header =  Lang:t("header.send_bill"),
            icon = 'fas fa-dollar-sign',
            txt    = '',
            params = { event = 'rsg-billing:client:billplayer' }
        },
        {
            header = Lang:t("header.view_your_bills"),
            icon = 'fas fa-dollar-sign',
            txt    = '',
            params = { event = 'rsg-billing:client:checkbills' }
        },
        {
            header = Lang:t("header.cancel_sent_bill"),
            icon = 'fas fa-dollar-sign',
            txt    = '',
            params = { event = 'rsg-billing:client:deletebills' }
        },
        {
            header = Lang:t("header.close"),
            icon   = 'fa-solid fa-circle-xmark',
            txt    = '',
            params = { event = 'rsg-menu:closeMenu', }
        },
    }
    exports['rsg-menu']:openMenu(BillsOptions)
end)

-- send bill to player (client:billplayer)
RegisterNetEvent('rsg-billing:client:billplayer', function()
    local dialog = exports['rsg-input']:ShowInput({
    header = Lang:t("header.create_bill"),
    submitText = Lang:t("header.send_bill"),
        inputs = {
            {
                text = Lang:t("text.playerid"),
                name = "playerid",
                type = "number",
                isRequired = false,
            },
            {
                text = Lang:t("text.bill_price"),
                name = "billprice",
                type = "number",
                isRequired = false,
            },
            {
                text = Lang:t("text.bill_price"),
                name = "billtype",
                type = "radio",
                    { value = "player", text =  Lang:t("text.bill_as_player") },
                    { value = "society", text =  Lang:t("text.bill_as_society") },
                },
            },
        }
    })
    if dialog == nil then return end
    if dialog == "" then return RSGCore.Functions.Notify("you didn't write anything", 'error') end
    if dialog.playerid == "" then return RSGCore.Functions.Notify("you didn't write the player id", 'error') end
    if dialog.billprice == "" then return RSGCore.Functions.Notify("you didn't write the bill price", 'error') end
    if dialog.billtype == 'society' then
        local playerjob = RSGCore.Functions.GetPlayerData().job.name
        jobcheck = false
        for _, name in pairs(Config.VerifySociety) do
            if name == playerjob then
                jobcheck = true
            end
        end
        if jobcheck == true then
            TriggerServerEvent('rsg-billing:server:sendSocietyBill', dialog.playerid, dialog.billprice, playerjob)    
        else
            RSGCore.Functions.Notify(Lang:t("error.you_are_not_part_society"), 'error')
        end
    end
    if dialog.billtype == 'player' then
        TriggerServerEvent('rsg-billing:server:sendPlayerBill', dialog.playerid, dialog.billprice)
    end
end, false)

-- check bills with callback (client:checkbills)
RegisterNetEvent('rsg-billing:client:checkbills', function()
    local PlayerId = GetPlayerServerId(PlayerId())
    RSGCore.Functions.TriggerCallback('rsg-billing:server:checkbills', function(bills, cid)
        local BillsShow = {
            {
                header = Lang:t("header.unpaid_bills_id") .. PlayerId,
                isMenuHeader = true,
                icon = 'fas fa-file-invoice-dollar',
            },
            {
                header = Lang:t("header.citizen_id") .. cid,
                isMenuHeader = true,
                icon = 'fas fa-id-card-clip',
            },
        }
        
        for _, v in ipairs(bills) do
            BillsShow[#BillsShow + 1] = {
                header = Lang:t("header.amount") .. v.amount .. '$',
                icon = 'fas fa-dollar-sign',
                txt = Lang:t("text.id")  ..v.id ..Lang:t("text.from") .. v.sender .. ' | ' .. v.society,
                params = { event = 'rsg-billing:server:paybills', 
                    isServer = true,
                    args = {
                        sender = v.sender, 
                        amount = v.amount, 
                        billid = v.id, 
                        society = v.society,
                        citizenid = v.citizenid,
                        sendercitizenid = v.sendercitizenid
                    } 
                }
            }
        end

        BillsShow[#BillsShow + 1] = {
            header = Lang:t("header.close"),
            icon   = 'fa-solid fa-circle-xmark',
            txt    = '',
            params = { event = 'rsg-menu:closeMenu', }
        }

        exports['rsg-menu']:openMenu(BillsShow)
    end, PlayerId)
end)

-- cancel bills with callback -> cancel bill confirm
RegisterNetEvent('rsg-billing:client:deletebills', function()

    RSGCore.Functions.TriggerCallback('rsg-billing:server:checkSentBills', function(sentbills, citizenid)

        local SentBillsShow = {
            {
                header = Lang:t("header.send_bill"),
                isMenuHeader = true,
                icon = 'fas fa-file-invoice-dollar',
            },
            {
                header = Lang:t("header.citizen_id") .. citizenid,
                isMenuHeader = true,
                icon = 'fas fa-id-card-clip',
            },
        }
        
        for _, v in ipairs(sentbills) do
            SentBillsShow[#SentBillsShow + 1] = {
                header = Lang:t("header.amount") .. v.amount .. '$',
                icon = 'fas fa-dollar-sign',
                txt = Lang:t("text.id") .. v.id .. Lang:t("text.to") .. v.citizenid,
                params = { event = 'rsg-billing:client:cancelbill', 
                    isServer = false,
                    args = {
                        billid = v.id,
                    } 
                }
            }
        end

        SentBillsShow[#SentBillsShow + 1] = {
            header =  Lang:t("header.close"),
            icon   = 'fa-solid fa-circle-xmark',
            txt    = '',
            params = { event = 'rsg-menu:closeMenu', }
        }

        exports['rsg-menu']:openMenu(SentBillsShow)
    end)
	
end)

-- cancel bill confirm
RegisterNetEvent('rsg-billing:client:cancelbill', function(data)
    local dialog = exports['rsg-input']:ShowInput({
        header = Lang:t("header.cancel_bill"),
        submitText = Lang:t("text.submit"),
        inputs = {
            {
                text = Lang:t("header.bill_id")..data.billid,
                name = "cancelbill",
                type = "radio",
                options = {
                    { value = "yes", text = Lang:t("text.yes") },
                    { value = "no", text = "No" },
                },
            },
        },
    })

    if dialog ~= nil then
        if Config.Debug == true then
            print(dialog.cancelbill)
            print(data.billid)
        end
        if dialog.cancelbill == 'yes' then
            TriggerServerEvent('rsg-billing:server:cancelbill', tonumber(data.billid))
            RSGCore.Functions.Notify(Lang:t("primary.bill_canceled"), 'primary')
        else
            RSGCore.Functions.Notify(Lang:t("primary.bill_not_canceled"), 'primary')
            return
        end
    end
end, false)
