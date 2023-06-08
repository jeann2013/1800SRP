local Translations = {
    error = {
        horse_brush_needed = '¡Se requiere cepillo entrenador de caballos!',
        not_horse_trainer = '¡No eres un entrenador de caballos!',
        horse_too_clean = '¡El caballo está demasiado limpio ahora mismo!',
        carrot_needed = '¡Se necesita zanahoria para alimentar al caballo!',
        horse_too_full = '¡El caballo está demasiado lleno ahora mismo!',
        horse_too_far = '¡Por favor acércate a tu caballo!',
        horse_training_stopped = "Horse training stopped!",
        name_horse = "Nombre: ~e~",
        exp_error = "~q~ | EXP: ~e~",
        level_error = "~q~ | Nivel: ~e~",
        bonding_level = "~q~ | Nivel de Doma: ~e~",
    },
    success = {
        xp_now = ' EXP ahora es ',        
        horse_training_started = "¡Comenzó el entrenamiento de caballos!",
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
    primary = {
        youre_currently_off_duty_your_horse_wont_get_any = 'Actualmente no está de servicio, ¡su caballo no recibirá ningún EXP!',
        distance_traveled = 'Distancia recorrida: ',
        metres = ' metros. ',
        exp_is_now = ' EXP ahora es ',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end