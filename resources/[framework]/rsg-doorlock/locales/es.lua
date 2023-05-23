local Translations = {
    error = {
        nokey = "¡No tienes llave!",
    },
    success = { 
        
    },
    info = {
        unlocked = "desbloqueada",
        unlocking = "Desbloqueo",
        locking = "Cierre",
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
