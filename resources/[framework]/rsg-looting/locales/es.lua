local Translations = {
    error = {  
        player_not_nearby = "¡El jugador no está cerca!",
        action_canceled = "Acción cancelada",    
    },
    success = {      
    },
    primary = {        
    },
    menu = {
        looted_menu = 'saqueada 🌟',  
        found_loot_baby = ' botín encontrado!',
        manage_menu = 'Administrar menú',  
    },
    text = {        
        looted_citizen = 'Ciudadano(a) saqueado(a) 🌟',
    },
    commands = {        
    },
    progressbar = {   
        robbing_player = "Jugador robando",     
    },
}


if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
