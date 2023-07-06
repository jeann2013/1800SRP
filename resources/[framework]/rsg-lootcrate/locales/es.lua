local Translations = {
    error = {
        already_looted = '¡la caja ya fue saqueada!',
        no_item = 'no tienes ese artículo',
    },
    success = {
        lootcrate_reset = 'restablecer cajas de botín',
    },
    primary = {
        primary_var = 'Example Text',
    },
    menu = {
        check = 'cheque ',
        open_lootbag = 'Abriendo bolsa de botín',
        loot_crate_menu = 'Caja de botín',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
