local Translations = {
    error = {
        
    },
    success = {
        
    },
    primary = {
        return_you_back_the_prison_zone = '¡Te devuelvo a la zona de prisión!',
        your_property_has_been_seized = 'Su propiedad ha sido confiscada',
        you_free_from_prison_good_luck = 'Estás libre de prisión, buena suerte',
        you_received_your_property_back = 'Recibió su propiedad de vuelta',
    },
    menu = {
        open = 'Abrir ', 
        keep_yourself_alive = "mantenerse vivo",
        keep_touch_with_loved_ones = "mantenerse en contacto con sus seres queridos",
        telegram_menu = "| Menú Telegrama |",
        read_messages = "📥 | Leer mensajes",
        send_telegram = "📤 | Enviar Telegrama",
        back = "<<< Atrás",
        prision_shop = "Tienda de la Prisión",
        freedom_in = 'Libertad en ',
        minutes = ' minutos!'
    },
    text = {
        read_your_telegram_messages = "leer sus mensajes de telegrama",
         send_telegram_another_player = "enviar un telegrama a otro jugador",
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end