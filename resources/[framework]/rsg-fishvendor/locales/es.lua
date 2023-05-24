local Translations = {   
    error = {
        no_small_fish = '¡no tienes ningún pez pequeño para vender!',
        no_medium_fish = '¡no tienes ningún pez mediano para vender!',
        no_large_fish = '¡no tienes ningún pez grande para vender!',
    },
    success = {
        small_fish_sold = 'has vendido tu pez pequeño por $',
        medium_fish_sold = 'has vendido tu pez mediano por $',
        large_fish_sold = 'ha vendido su pez grande por $',
    },
    menu = {
        open_prompt = 'Abrir',
        sell_small_fish = 'Vender pescado pequeño',
        sell_medium_fish = 'Vender pescado mediano',
        sell_large_fish = 'Vender pescado grande',
        we_currently_pay = 'pagamos $',
        per_small_fish = '.00 por pez pequeño',
        per_medium_fish = '.00 por pez mediano',
        per_large_fish = '.00 por pez grande',
        open_shop = 'Abrir Tienda de Vendedores de Pescado',
        buy_items_txt = 'comprar artículos del vendedor de pescado',
        close_menu = 'Cerrar menú',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
  end
