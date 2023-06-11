local Translations = {
    error = {      
    },
    success = {      
    },
    primary = {        
    },
    menu = {      
        work = 'Trabjo ',
        user = 'Usuario',
    },
    text = {        
    },
    commands = {        
    },
    progressbar = {        
    },
    event = {
        officer = 'Sherif ',
        emergency_button_pressed = ' emergencia requerida!',
        medic = 'Medico ',
    }
}


if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
