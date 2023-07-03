local Translations = {
    error = {      
        no_one_nearby = 'No hay nadie cerca',
    },
    success = {      
    },
    primary = {        
    },
    menu = {      
        rob_menu = 'Robar',
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
        vest = 'Chaleco',
        boots = 'Botas',
        pants = 'Pantalones',
        shirt = 'Camisa',
        gun_belt = 'Cinturón de pistola',
        mask = 'Mascara',
        coat = 'Abrigo',
        closed_coat = 'Cinturón de pistola',        
        revive = 'Revivir',
        heal_wounds = 'Curar heridas',
        emergency_button = 'Botón de ayuda',
        cuff_menu = 'Esposa',
        check_status = 'Ver estado',
        escort_menu = 'Acompañante',
        search_player = 'Buscar jugador',
        search_horse = 'Buscar caballo',
        jail_menu = 'Cárcel',
        badge_on_off = 'Insignia On/Off',
        toggle_training_on_off = 'On/Off para entrenar',
        trainer_brush = 'Cepillo de entrenador',
        trainer_carrot = 'Dar Zanahoria',
        check_horse_exp = 'Ver Caballo EXP',
        world_menu = 'Mundo',
        fix_character = 'Arreglar PJ',
        dress_menu = 'Vestir',
        undress_menu = 'Desvestir',
    },
    text = {        
    },
    commands = {        
    },
    progressbar = {        
    },
    event = {
        officer = 'Sherif ',
        emergency_button_pressed = ' ayuda requerida!',
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
