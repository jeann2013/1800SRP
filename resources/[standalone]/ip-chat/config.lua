Config = {}
--------------------------------
-- [Date Format]

Config.DateFormat = '%H:%M' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- [Staff Groups]

Config.StaffGroups = {
    'god',
    'admin'
}

Config.EnableReportCommand = true

Config.ReportCommand = 'report'

--------------------------------
-- [Clear Player Chat]

Config.AllowPlayersToClearTheirChat = true

Config.ClearChatCommand = 'clear'

--------------------------------
-- [Staff]

Config.EnableStaffCommand = true

Config.StaffCommand = 'announce'

Config.AllowStaffsToClearEveryonesChat = true

Config.ClearEveryonesChatCommand = 'clearall'

-- [Staff Only Chat]

Config.EnableStaffOnlyCommand = true

Config.StaffOnlyCommand = 'admin'

--------------------------------
-- [Advertisements]

Config.EnableAdvertisementCommand = true

Config.AdvertisementCommand = 'advert'

Config.AdvertisementPrice = 5

Config.AdvertisementCooldown = 5 -- in minutes

--------------------------------

-- [valentine]

Config.EnableValentineCommand = true

Config.ValentineCommand = 'valentine'

Config.ValentineJobName = 'valentine'

--------------------------------
-- [Rhodes]

Config.EnableRhodesCommand = true

Config.RhodesCommand = 'rhodes'

Config.RhodesJobName = 'rhodes'


-- [me]
Config.EnableMeCommand = true
Config.MeCommand = 'me'
Config.MeDistance = 10

-- [do]
Config.EnableDoCommand = true
Config.DoCommand = 'do'
Config.DoDistance = 10

-- [ooc]
Config.EnableOocCommand = true
Config.OocCommand = 'ooc'
Config.OocDistance = 10

-- [whisper]
Config.EnableWhisperCommand = true
Config.WhisperCommand = 'mp'
Config.WhisperDistance = 10