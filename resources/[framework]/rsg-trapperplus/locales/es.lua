local Translations = {
    error = {
        something_went_wrong = '¡algo salió mal!',
      you_dont_have_any_pelts_to_sell = "¡No tienes pieles para vender!",
      you_dont_have_any_carcars_to_sell = "you don\'t have any carcars to sell!",
    },
    success = {
        you_have_sold_all_your_pelts_for = 'Has vendido todas tus pieles por $',
        you_have_sold_all_your_carcars_for = 'Has vendido todas tus partes por $',
    },
    primary = {
        stored = ' Almacenado',
    },
    menu = {
        open = 'Abrir ',
        sell_stored_pelts = 'Vender pieles',
        trapper_menu = 'Menú trapper',
        open_trapper_shop = 'Abrir tienda de trapper',
        close_menu = 'Cerrar Menú',
        sell_stored_carcars = 'Vender partes de animal',
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
        checking_pelts = 'Chequiando pieles..',
        checking_carcars = 'Chequiando partes..',
    },
    text = {
        buy_items_from_the_fish_vendor = 'comprar artículos del vendedor',
        sell_store_pelts = 'vender artículos para tienda de pieles',
        trapper_shop =  'Tienda trapper',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true,
    fallbackLang = Lang,
  })
end
