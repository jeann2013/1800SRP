local Translations = {
    error = {
        error_var = 'Example Text',
    },
    success = {
        success_var = 'Example Text',
    },
    primary = {
        primary_var = 'Example Text',
    },
    menu = {
        make_a_note = 'Hacer una nota',
        message  = 'Mensaje:',
        written_by = 'Escrito por: ',
        tear_up_note = 'Romper nota',
    },
    text = {
        enter_message = 'Introduzca su mensaje aquí'
    },
    targetinfo = {
        read_note = 'Leer Nota',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end