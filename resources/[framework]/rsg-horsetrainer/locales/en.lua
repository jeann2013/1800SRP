local Translations = {
    error = {
        horse_brush_needed = 'Horse trainer brush required!',
        not_horse_trainer = 'You are not a horse trainer!',
        horse_too_clean = 'Horse is too clean right now!',
        carrot_needed = 'Carrot required to feed the horse!',
        horse_too_full = 'Horse is too full right now!',
        horse_too_far = 'Please move closer to your horse!',
        horse_training_stopped = "Horse training stopped!",
        name_horse = "Name: ~e~",
        exp_error = "~q~ | EXP: ~e~",
        level_error = "~q~ | Level: ~e~",
        bonding_level = "~q~ | Bonding Level: ~e~",
    },
    success = {
        xp_now = ' EXP is now ',
        horse_training_started = "Horse training started!",
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
        youre_currently_off_duty_your_horse_wont_get_any = 'You\'re currently off duty, your horse won\'t get any EXP!',
        distance_traveled = 'Distance Traveled: ',
        metres = ' metres. ',
        exp_is_now = '\'s EXP is now ',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('error.horse_too_full')