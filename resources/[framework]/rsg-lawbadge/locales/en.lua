local Translations = {
    error = {
        only_law_person_can_do_this = 'only a law person can do this',
        you_must_be_on_duty_wear_your_badge = 'you must be on duty to wear your badge',
    },
    success = {
        wagon_stored = 'company wagon stored',
        wagon_setup_successfully = 'successfully setup your company wagon',
    },
    primary = {
        badge_taken_off = 'badge taken off',
        badge_put_on = 'badge put on',        
    },
    menu = {
        wagon_menu = 'Wagon Menu',
        wagon_setup = 'Setup Wagon (Boss)',
        wagon_get = 'Get Wagon',
        wagon_store = 'Store Wagon',
        close_menu = '>> Close Menu <<',
    },
    command = {
        put_on_take_off_badge = 'put on / take off badge',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})