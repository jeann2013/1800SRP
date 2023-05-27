local Translations = {
    error = {
        not_authorised = 'you are not authorised!',
    },
    menu = {
        play_piano = 'Play Piano',
        get_up = 'Get Up',
        wholesale_storage = 'Wholesale Storage',
        wholesale_imports = 'Wholesale Imports',
        job_management = 'Job Management',
        job_wagon = 'Job Wagon',
        close_menu = '>> Close Menu <<',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})