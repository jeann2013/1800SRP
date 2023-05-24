local Translations = {
    error = {
        no_cash = 'usted no tiene suficiente dinero en efectivo en usted!',
    },
    success = {
        var = 'text goes here',
    },
    primary = {
        var = 'text goes here',
    },
    menu = {
        open_prompt = 'Abrir ',
        fast_travel_annesburg = 'Viaje rápido a Annesburg',
        fast_travel_armadillo = 'Viaje rápido a Armadillo',
        fast_travel_blackwater = 'Viaje rápido a Blackwater',
        fast_travel_rhodes = 'Viaje rápido a Rhodes',
        fast_travel_strawberry = 'Viaje rápido a Strawberry',
        fast_travel_saintdenis = 'Viaje rápido a Saint Denis',
        fast_travel_tumbleweed = 'Viaje rápido a Tumbleweed',
        fast_travel_valentine = 'Viaje rápido a Valentine',
        fast_travel_vanhorn = 'Viaje rápido a Van Horn',
        fast_travel_sisika = 'Viaje rápido a Sisika',
        fast_travel_to = 'Viaje rápido para ',
        ticket_price = 'Precio del boleto $ ',
        close_menu = '❌ | Cerrar menú',
        fast_travel = 'Viaje rápido',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
