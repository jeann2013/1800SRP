local Translations = {
    error = {
        something_went_wrong = '¡algo salió mal!',
        you_dont_have_any_horse_to_sell = "¡No tienes ningún caballo para vender!",
        dont_have_animal = "no lleves ningún animal contigo"
    },
    success = {
        you_have_sold_all_your_horse_for = 'has vendido tu caballo por $',
    },
    primary = {
        var = 'text goes here',
    },
    menu = {
        open = 'Abrir ',
        sell_stored_horse = 'Vender un caballo salvaje',
        sellwildhorse_menu = 'Menú de caballos salvajes',
        open_sellwildhorse_shop = 'Abrir tienda de caballos salvajes',
        close_menu = 'Cerrar menú',
    },
    commands = {
        var = 'text goes here',
        wild_horse = 'CABALLO SALVAJE 🐎',
        horse_sold_for = ' Horse sold for ',
    },
    progressbar = {
        checking_horse = 'Comprobando caballo ',
    },
    text = {
        sell_store_horse = 'y mira lo que te doy!',
        sellwildhorse_shop =  'Vender tienda de caballos salvajes',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end