local Translations = {
    error = {      
    },
    success = {      
    },
    primary = {        
    },
    menu = {
        looted_menu = 'saqueada 🌟',  
        found_loot_baby = ' botín encontrado!',
    },
    text = {        
    },
    commands = {        
    },
    progressbar = {        
    },
}


if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
