local Translations = {
    error = {
        
    },
    success = {
        
    },
    primary = {
        returning_you_back_the_prison_zone = 'Returning you back to the Prison zone!',
        your_property_has_been_seized = 'Your property has been seized',
        you_free_from_prison_good_luck = 'You\'re free from prison, good luck',
        you_received_your_property_back = 'You received your property back',
    },
    menu = {
        open = 'Open ', 
        keep_yourself_alive = "keep yourself alive",      
        keep_touch_with_loved_ones = "keep in touch with loved ones", 
        telegram_menu = "| Telegram Menu |",
        read_messages = "📥 | Read Messages",
        send_telegram = "📤 | Send Telegram",
        back = "<<< Back",
        prison_shop = "Prison Shop",
        freedom_in = 'Freedom in ',
        minutes = ' mins!'
    },
    text = {
        read_your_telegram_messages = "read your telegram messages",
        send_telegram_another_player = "send a telegram to another player",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})