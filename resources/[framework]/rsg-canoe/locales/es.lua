local Translations = {
    error = {
        cant_take_out_boat = '¡No puedes sacar tu canoa aquí!',
        boat_already_out = '¡Ya tienes tu canoa fuera!',
        no_item = '¡No tienes este artículo!',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end