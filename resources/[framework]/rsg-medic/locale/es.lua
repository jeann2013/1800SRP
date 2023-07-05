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
        medic_has_been_called = '¡El médico(a) ha sido llamada!',
    },
    info = {
        revive_player_a = 'Revive a un jugador o a ti mismo (solo administrador)',
        kill_player = 'Matar a un jugador (solo administrador)',
        player_id = 'ID del jugador (puede estar vacío)',
        blip_text = 'Alerta médica - %{text}',
        new_call = 'Nueva llamada',
    },
    menu = {
        open_menu = 'Open ',
        toggle_duty_menu = "Toggle Duty",
        medical_supplies_menu = "Medical Supplies",
        medic_storage_menu = "Medic Storage",
        job_management = "Job Management",
        close_menu_menu = "Close Menu",
    },
    text = {
        respawn_in_text = 'REPARECER EN ',
        seconds_text = ' SEGUNDOS..',
        press_e_to_respawn = 'PULSA [E] PARA REAPARAR',
        press_e_ro_respwn_press_j_call = 'PULSE [E] PARA RESPETAR - PRESIONE [J] PARA SOLICITAR ASISTENCIA',
        press_j_to_call_assis = 'PRESIONE [J] PARA SOLICITAR ASISTENCIA',
        a_person_needs_medical_help = '¡Una persona necesita ayuda médica!',
    },
    progressbar = {
        reviving_progressbar = "Reviviendo...",
        treating_wounds = "Tratamiento de heridas...",
    },
    primary = {
        you_lost_all_your_possessions = '¡Perdiste todas tus posesiones!',
        you_lost_all_your_cash = '¡Perdiste todo tu dinero!',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
