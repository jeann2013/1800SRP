local Translations = {
    error = {        
        you_do_not_have_enough_blood_money = '¡No tienes suficiente dinero manchado de sangre para hacer eso!',
        you_do_not_have_any_blood_money = '¡No tienes dinero manchado!',
        you_do_not_have_enough_gold_bars = '¡No tienes suficientes lingotes de oro para hacer eso!',
        you_do_not_have_any_gold_bars = '¡No tienes lingotes de oro!',
    },
    success = {       
        you_sold = 'Usted vendió',
        blood_money_for = 'dinero ensangrentado por $',
        gold_bars_for = 'lingotes de oro por $',
    },
    primary = {
        you_have_entered_a_hostle_zone = '¡has entrado en una zona hostil!',
    },
    menu = {     
        open_menu = 'Abrir ',
        outlaw_menu = "| Menú de forajidos |",
        blood_money_wash = "Lavado de dinero con sangre",
        sell_gold_bars = "Vender lingotes de oro",
        open_outlaw_shop = "Abrir tienda de forajidos",
        close_menu = "Cerrar Menú",
        amount_to_wash = "Cantidad a Lavar ($)",
    },
    commands = {        
    },
    progressbar = {
    },
    text = {
        wash_the_blood_off_your_money = "lava la sangre de tu dinero",
        sell_your_gold_bars_here = "vende tus lingotes de oro aquí",
        buy_outlawed_items = "comprar artículos prohibidos",
        amount_of_bars = "Cantidad de barras",
        outlaw_shop = "Tienda de forajidos",         
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
  Lang = Locale:new({
      phrases = Translations,
      warnOnMissing = true,
      fallbackLang = Lang,
  })
end
