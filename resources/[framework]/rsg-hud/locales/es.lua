local Translations = {
    error = {
        
    },
    success = {
        
    },
    info = {
        getstress = "Te estás estresando",
        thirsty = "Tienes un poco de sed",
        relaxing = "Te estás relajando",
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
