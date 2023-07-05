local Translations = {
    error = {
        not_online = 'Jugador no conectado',
        no_player = 'Ningún jugador cerca',
        no_firstaid = 'Necesitas un botiquín de primeros auxilios',
        no_bandage = 'Necesitas un vendaje',
        not_medic = 'No eres médico',
    },
    success = {
        revived = 'Reviviste a una persona',
    },
    info = {
        revive_player_a = 'Revive a un jugador o a ti mismo (solo administrador)',
        kill_player = 'Matar a un jugador (solo administrador)',
        player_id = 'ID del jugador (puede estar vacío)',
        blip_text = 'Alerta médica - %{text}',
        new_call = 'Nueva llamada',
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
