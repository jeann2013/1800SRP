local Translations = {
    error = {      
        no_one_nearby = 'No hay nadie cerca',
    },
    success = {      
    },
    primary = {        
    },
    menu = {      
        work = 'Trabajo ',
        user = 'Usuario',
        horse = 'Caballo',
        horse_lantern = 'Linterna de caballo',
        inventory = 'Iventario',
        walk_styles = 'Estilos de caminar',
        normal = 'Normal',
        angry = 'Enojado',
        veteran = 'Veterano',
        gold_panner = 'Balneario de oro',
        lost = 'Perdido',
        murfree = 'Murfree',
        primate = 'Primate',
        contraband = 'Contrabando',
        toggle_pvp_on_off = 'Toggle PVP on/off',
        billing = 'Facturación',
        adress_book = 'Libreta de direcciones',
        clothing = 'Ropa',
        hat = 'Sombrero',
        vest = 'Vestido',
        boots = 'Botas',
        pants = 'Pantalones',
        shirt = 'Camisa',
        gun_belt = 'Cinturón de pistola',
        mask = 'Mascara',
        coat = 'Abrigo',
        closed_coat = 'Cinturón de pistola',        
        revive = 'Revivir',
        heal_wounds = 'Curar heridas',
        emergency_button = 'Botón de emergencia',
        cuff_menu = 'Esposa',
        check_status = 'Comprobar estado',
        escort_menu = 'Acompañante',
        search_player = 'Buscar jugador',
        search_horse = 'Buscar caballo',
        jail_menu = 'Cárcel',
        badge_on_off = 'Insignia activada/desactivada',
        toggle_training_on_off = 'Activar/Desactivar el entrenamiento',
        trainer_brush = 'Pincel de entrenador',
        trainer_carrot = 'Entrenador Zanahoria',
        check_horse_exp = 'Ver Caballo EXP',
        world_menu = 'Mundo',
    },
    text = {        
    },
    commands = {        
    },
    progressbar = {        
    },
    event = {
        officer = 'Sherif ',
        emergency_button_pressed = ' emergencia requerida!',
        medic = 'Medico ',
    }
}


if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
