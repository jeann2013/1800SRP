local Translations = {
    error = {
        var = 'text goes here',
    },
    success = {
        var = 'text goes here',
    },
    primary = {
        var = 'text goes here',
    },
    menu = {
        var = 'text goes here',
    },
    commands = {
        wear_all_clothing = "Wear all clothing",
    },
    progressbar = {
        var = 'text goes here',
    },
}


Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('error.no_item')