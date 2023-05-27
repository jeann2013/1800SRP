local Translations = {
    error = {
        not_authorised = 'No estas autorizado',
    },
    menu = {
        wholesale_trader  = 'Comerciante mayorista',
        wholesale_storage = 'Almacenamiento mayorista',
        wholesale_imports = 'Importaciones al por mayor',
        job_management = 'Administración de trabajos',
        job_wagon = 'Vagón de trabajo',
        close_menu = '>> Cerrar menú <<',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
