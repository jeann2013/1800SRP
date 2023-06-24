local Translations = {
    error = {      
        player_not_nearby = "Player not nearby!",
        action_canceled = "Action Canceled",
    },
    success = {      
    },
    primary = {        
    },
    menu = {
        looted_menu = 'looted 🌟',  
        found_loot_baby = ' found Loot baby!',    
        manage_menu = 'Manage menu',  
    },
    text = {
        looted_citizen = 'looted citizen 🌟'
    },
    commands = {        
    },
    progressbar = {       
        robbing_player = "Robbing Player",
    },
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
