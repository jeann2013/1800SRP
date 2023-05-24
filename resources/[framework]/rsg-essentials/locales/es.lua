local Translations = {
    error = {
        var = 'text goes here',
    },
    success = {
            var = 'text goes here',
    },
    primary = {
            var = 'text goes here',
    },
    menu = {
            var = 'text goes here',
    },
    commands = {
        emoteMenu = 'Abre el menú de emotes',
    },
    progressbar = {
            var = 'text goes here',
    },
    label = {
        take_a_drink = 'Tomar un trago'
    },
    emotes = {
        title = ' Menú Emote',
        actions = {
            mainMenu = '🚩 Acciones',
            secondMenu = '🚩 Emotes de acciones'
        },
        greeting = {
            mainMenu = '👋 Saludos',
            secondMenu = '👋 Emotes de saludo'
        },
        reaction = {
            mainMenu = '🎭 Reaccines',
            secondMenu = '🎭 Emotes de reacciones'
        },
        taunting = {
            mainMenu = '😡 Burlándose',
            secondMenu = '😡 Emotes de Burla'
        },
        dancing = {
            mainMenu = '💃 Bailar',
            secondMenu = '💃 Emotes de bailar'
        },
        close = '❌ Salir'
    },
    log = {
        weapon_removed = '¡Arma eliminada!',
        had_weapon_them_that_they_did_not_have = '** @staff ** ${firstname} ${lastname} tenía un arma sobre ellos que no tenían en su inventario: anticheat ha eliminado el arma',
        test_webhook = 'Webhook prueba',
        webhook_setup_successfully = 'Webhook setup successfully',
        test_your_discord_webhook = 'Test Your Discord Webhook For Logs (God Only)',
    },
    afk = {
        will_kick = 'You are AFK and will be kicked in ',
        time_seconds = ' segundos!',
        time_minutes = ' minuto(s)!'
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
