local Translations = {
    error = {      
    },
    success = {      
    },
    primary = {        
    },
    menu = {
        work = 'Work ',
        user = 'User',
    },
    text = {        
    },
    commands = {        
    },
    progressbar = {        
    },
    event = {
        officer = 'Officer ',
        emergency_button_pressed = ' emergency button pressed!',
        medic = 'Medic ',
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
