local Translations = {
    error = {
        error = 'Error',
        you_dont_have_any_water = '¡No tienes agua!',
        you_dont_have_any_fertilizer = '¡No tienes ningún fertilizante!',
        too_close_to_another_plant = 'demasiado cerca de otra planta!',
        you_already_have  = 'Tu ya lo tienes ',
        plants_down = ' plantas abajo',
        you_dont_have_enough_indian_tobacco_to_do_that = '¡No tienes suficiente tabaco indio para hacer eso!',
        not_enough_to_complete_the_trade = '¡No es suficiente para completar el intercambio!',
        you_do_not_have_any_indian_tobacco = '¡No tienes tabaco indio!',
    },
    primary = {
        your_dealer_reputation_is = 'Su reputación de distribuidor es ',
        your_dealer_reputation_increased_to = 'Su reputación de distribuidor aumentó a ',
    },
    success = {
        xp_now = ' EXP es ahora ',
        you_distroyed_the_plant = 'destruiste la planta',
        you_harvest = 'Tú cosechas',
        indian_tobacco = ' Tabaco indio',
    },
    info = {},
    menu = {
        open = 'Abrir',
        indian_trader_menu = "| Menú de comerciante indio |",
    },
    commands = {
        check_your_dealer_reputation = "verifique la reputación de su distribuidor",
    },
    progressbar = {},
    text = {
        thirst = 'Sed: ',
        hunger = '% - Hambre: ',
        growth = 'Crecimiento: ',
        quality = '% -  Calidad: ',
        destroy_plant = 'Destruir Planta [G]',
        water_feed = 'Agua [G] : Fertilizar [J]',
        quality2 = '[Calidad: ',
        harvest = 'Cosechar [E]',
    },
    header = {
        trade_10_indian_tobacco = "Intercambiar 10 Tabaco Indio",
        trade_10_tobacco_for_1_indian_cigars = "intercambia 10 tabacos por 1 cigarro indio",
        trade_50_indian_tobacco = "Intercambiar 50 tabaco indio",
        trade_50_tobacco_for_5_indian_cigars = "intercambia 50 tabacos por 5 cigarros indios",
        trade_100_indian_tobacco = "Intercambiar 100 tabaco indio",
        trade_10_tobacco_for_10_indian_cigars = "intercambiar 10 tabacos por 10 puros indios",
        open_trader_shop = "Abrir tienda de comerciantes",
        buy_indian_trade_items = "comprar artículos comerciales indios",
        close_menu = "Cerrar menú",
        indian_trader = "Comerciante indio",
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end