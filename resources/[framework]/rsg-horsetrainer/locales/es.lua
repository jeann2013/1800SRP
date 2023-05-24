local Translations = {
    error = {
        horse_brush_needed = '¡Se requiere cepillo entrenador de caballos!',
        not_horse_trainer = '¡No eres un entrenador de caballos!',
        horse_too_clean = '¡El caballo está demasiado limpio ahora mismo!',
        carrot_needed = '¡Se necesita zanahoria para alimentar al caballo!',
        horse_too_full = '¡El caballo está demasiado lleno ahora mismo!',
        horse_too_far = '¡Por favor acércate a tu caballo!'
    },
    success = {
        xp_now = ' EXP ahora es ',
    },
    info = {
        --var = 'text goes here',
    },
    menu = {
        --var = 'text goes here',
    },
    commands = {
        --var = 'text goes here',
    },
    progressbar = {
        --var = 'text goes here',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end