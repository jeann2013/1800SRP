local Translations =
{
    error =
    {
        something_went_wrong = '¡Algo salió mal!',
        you_dont_have_any_horse_to_sell = "¡No tienes ningún caballo para vender!",
        own_horse = '¡Desafortunadamente no puedes vender tu propio caballo!',
        not_tamed = '¡Solo puedes vender un caballo salvaje que hayas domesticado tú mismo!'
    },
    success =
    {
        you_have_sold_all_your_horse_for = 'Has vendido el caballo por $ ',
    },
    primary =
    {
        var = 'text goes here',
    },
    menu =
    {
        open = 'Abrir ',
        sell_stored_horse = 'Vender un caballo salvaje',
        sellwildhorse_menu = 'Menú de caballos salvajes',
        open_sellwildhorse_shop = 'Abrir tienda de caballos salvajes',
        close_menu = 'Cerrar menú',
        wild_horse = 'CABALLO SALVAJE 🐎',
        horse_sold_for = ' Caballo vendido por ',
        sell_wild_horse_menu = 'Vender caballo salvaje',
        horse_seller_menu = 'Vendedor de caballos',
    },
    commands =
    {
        var = 'text goes here',
    },
    progressbar =
    {
        checking_horse = 'Revisando el caballo.. ',
    },
    text =
    {
        sell_store_horse = '¡Y mira lo que te doy!',
        sellwildhorse_shop =  'Tienda de caballos salvajes',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end