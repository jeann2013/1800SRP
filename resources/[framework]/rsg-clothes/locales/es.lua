local Translations = {
    error = {       
    },
    success = {
        var = 'text goes here',
    },
    primary = {
        var = 'text goes here',
    },
    menu = { 
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
    },
    label = {
        boot_accessories = "Accesorio de botas",
        pants = "Pantalones",
        cloaks = "Capas",
        hats = "Sombreros",
        vests = "vestidos",
        chaps = "Chapas",
        shirts_full = "Camisas Largas",
        badges = "Insignias",
        masks = "Mascaras",
        spats = "Polainas",
        neckwear = "Corbatas",
        boots = "Botas",
        accessories = "Accesorios",
        jewelry_rings_right = "Anillos de joyería a la derecha",
        jewelry_rings_left = "Anillos de joyería Reft",
        jewelry_bracelets = "Pulseras de joyería",
        gauntlets = "Gaunt Lets",
        neckties = "Corbatas",
        holsters_knife = "Funda de cuchillo",
        talisman_holster = "Funda de talismán",
        loadouts = "Cargadera",
        suspenders = "Tirantes",
        talisman_satchel = "Talisman de carteras",
        satchels = "Carteras",
        gunbelts = "Cinturones de armas",
        belts = "Correas",
        belt_buckles = "Hebillas de cinturón",
        holsters_left = "Fundas izquierda",
        holsters_right = "Fundas derecha",
        talisman_wrist = "Talisman de muñeca",
        coats = "Abrigos",
        coats_closed = "Abrigos Cerrados",
        ponchos = "Ponchos",
        eyewear = "Gafas",
        gloves = "Guantes",
        holsters_crossdraw = "Fundas Crossdraw",
        aprons = "Delantales",
        skirts = "Faldas",
        hair_accessories = "Accesorios para el cabello",
        armor = "Armadura",
        dresses = "Vestidos",
        head = "Cabeza",
        torso = "Torso",
        legs = "Piernas",
        foot = "Pies",
        hands = "Manos",
    },
    text = {
        press_to_open_clothing_store = 'Presiona ~INPUT_JUMP~ para abrir una tienda de ropa',
        press_to_open_the_changing_rooms = 'Pulsa ~INPUT_JUMP~ para abrir los vestuarios',
        a_clothing_store = 'Una tienda de ropa',
        wardrobe = 'Ropero',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
