local Translations = {
    error = {
        var = 'text goes here',
    },
    success = {
        var = 'text goes here',
    },
    primary = {
        pvp_on = 'PVP : Encendido',
        pvp_off = 'PVP : Apagado',
    },
    menu = {
        var = 'text goes here',
    },
    commands = {
        toggle_pvp = 'Toggle PVP encendido/apagado',
    },
    progressbar = {
        var = 'text goes here',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end