local Translations = {
    error = {
        not_online = 'Player Not Online',
        no_player = 'No Player Nearby',
        no_firstaid = 'You need a First Aid Kit',
        no_bandage = 'You need a Bandage',
        not_medic = 'You are not a medic',
    },
    success = {
        revived = 'You revived a person',
        medic_has_been_called = 'Medic has been called!',
    },
    info = {
        revive_player_a = 'Revive A Player or Yourself (Admin Only)',
        kill_player = 'Kill a Player (Admin Only)',
        player_id = 'Player ID (may be empty)',
        blip_text = 'Medic Alert - %{text}',
        new_call = 'New Call',
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
        respawn_in_text = 'RESPAWN IN ',
        seconds_text = ' SECONDS..',
        press_e_to_respawn = 'PRESS [E] TO RESPAWN',
        press_e_ro_respwn_press_j_call = 'PRESS [E] TO RESPAWN - PRESS [J] TO CALL FOR ASSISTANCE',
        press_j_to_call_assis = 'PRESS [J] TO CALL FOR ASSISTANCE',
        a_person_needs_medical_help = 'A person needs medical help!',
    },
    progressbar = {
        reviving_progressbar = "Reviving...",
        treating_wounds = "Treating Wounds...",
    },
    primary = {
        you_lost_all_your_possessions = 'you lost all your possessions!',
        you_lost_all_your_cash = 'you lost all your cash!',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
