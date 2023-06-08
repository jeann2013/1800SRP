local Translations = {
    error = {
        no_wagon_setup = 'sin configuración de vagón',
        now_have_wagon = 'ya tienes un vagón de empresa',
        not_the_boss = 'tú no eres el jefe',
    },
    success = {
        wagon_stored = 'vagón de la empresa almacenado',
        wagon_setup_successfully = 'configuró correctamente el vagón de su empresa',
    },
    primary = {
        wagon_out = 'vagón de la empresa sacado',
        wagon_already_out = 'el vagón de su empresa ya salió',
    },
    menu = {
        wagon_menu = 'Menú del vagón',
        wagon_setup = 'Configurar vagón (jefe)',
        wagon_get = 'Obtener vagón',
        wagon_store = 'Almacenar Vagón',
        close_menu = '>> Cerrar Menú <<',
    },
    command = {
        put_on_take_off_badge = 'poner / quitar insignia',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end