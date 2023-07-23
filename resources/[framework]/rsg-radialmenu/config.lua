Config = {}

Config.EnableExtraMenu = false

Config.MenuItems = {
    [1] = {
        id = 'world',
        title = Lang:t('menu.world_menu'),
        icon = 'globe',
        items = {
        },
    }, 
    [2] = {
        id = 'horse',
        title = Lang:t('menu.horse'),
        icon = 'horse-head',
        items = {           
            {
                id = 'horselantern',
                title = Lang:t('menu.horse_lantern'),
                icon = 'lightbulb',
                type = 'client',
                event = 'rsg-horses:client:equipHorseLantern',
                shouldClose = true
            },
        },
    },
    [3] = {
        id = 'user',
        title = Lang:t('menu.user'),
        icon = 'user',
        items = {
            {     
                id = 'walkstyles',
                title = Lang:t('menu.walk_styles'),
                icon = 'person-walking',
                items = {
                    {
                        id = 'normal',
                        title = Lang:t('menu.normal'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:normal',
                        shouldClose = true
                    },
                    {
                        id = 'angry',
                        title = Lang:t('menu.angry'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:angry',
                        shouldClose = true
                    },
                    {
                        id = 'war_veteran',
                        title = Lang:t('menu.veteran'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:war_veteran',
                        shouldClose = true
                    },
                    {
                        id = 'gold_panner',
                        title = Lang:t('menu.gold_panner'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:gold_panner',
                        shouldClose = true
                    },
                    {
                        id = 'lost_Man',
                        title = Lang:t('menu.lost'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:lost_Man',
                        shouldClose = true
                    },
                    {
                        id = 'murfree',
                        title = Lang:t('menu.murfree'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:murfree',
                        shouldClose = true
                    },
                    {
                        id = 'primate',
                        title = Lang:t('menu.primate'),
                        icon = 'person-walking',
                        type = 'client',
                        event = 'walkstyles:client:primate',
                        shouldClose = true
                    },
                }
            },
            {
                id = 'emotes',
                title = 'Emotes',
                icon = 'hand',
                type = 'command',
                event = 'em',
                shouldClose = true
            },
            {
                id = 'Id card',
                title = 'Identificación',
                icon = 'id-badge',
                type = 'client',
                event = 'menu:id:start',
                shouldClose = true
            },
		    {
                id= 'Giv Id-card',
                title = 'Dar Identificacion',
                icon = 'address-book',
                type = 'client',
                event = 'menu:id:get',
                shouldClose = true
             },
            {
                id = 'contraband',
                title = Lang:t('menu.contraband'),
                icon = 'skull-crossbones',
                type = 'command',
                event = 'sellcontraband',
                shouldClose = true
            },
            {
                id = 'pvptoggle',
                title = Lang:t('menu.toggle_pvp_on_off'),
                icon = 'hand-holding-hand',
                type = 'client',
                event = 'rsg-pvp:client:pvpToggle',
                shouldClose = true
            },
            {
                id = 'billing',
                title = Lang:t('menu.billing'),
                icon = 'file-invoice-dollar',
                type = 'client',
                event = 'rsg-billing:client:billingMenu',
                shouldClose = true
            },
            {
                id= 'adressbook',
                title = Lang:t('menu.adress_book'),
                icon = 'address-book',
                type = 'client',
                event = 'rsg-telegram:client:OpenAddressbook',
                shouldClose = true
            },
        },
        {
            id = 'stealplayer',
            title = Lang:t('menu.rob_menu'),
            icon = 'mask',
            type = 'client',
            event = 'rsg-looting:client:RobPlayer',
            shouldClose = true
        },
    },
    [4] = {
        id = 'clothing',
        title = Lang:t('menu.clothing'),
        icon = 'shirt',
        items = {
            {
                id = 'dress',
                title = Lang:t('menu.dress_menu'),
                icon = 'person-dress',
                type = 'command',
                event = 'dress',
                shouldClose = true
            },
            {
                id = 'undress',
                title = Lang:t('menu.undress_menu'),
                icon = 'person-half-dress',
                type = 'command',
                event = 'undress',
                shouldClose = true
            },
            {
                id = 'onoffhat',
                title = Lang:t('menu.hat'),
                icon = 'hat-cowboy',
                type = 'command',
                event = 'hat',
                shouldClose = true
            },
            {
                id = 'onoffvest',
                title = Lang:t('menu.vest'),
                icon = 'vest',
                type = 'command',
                event = 'vest',
                shouldClose = true
            },
            {
                id = 'onoffboots',
                title = Lang:t('menu.boots'),
                icon = 'shoe-prints',
                type = 'command',
                event = 'boots',
                shouldClose = true
            },
            {
                id = 'onoffpants',
                title = Lang:t('menu.pants'),
                icon = 'circle-user',
                type = 'command',
                event = 'pants',
                shouldClose = true
            },
            {
                id = 'onoffshirt',
                title = Lang:t('menu.shirt'),
                icon = 'shirt',
                type = 'command',
                event = 'shirt',
                shouldClose = true
            },
            {
                id = 'onoffgunbelt',
                title = Lang:t('menu.gun_belt'),
                icon = 'gun',
                type = 'command',
                event = 'gunbelt',
                shouldClose = true
            },
            {
                id = 'onoffmask',
                title = Lang:t('menu.mask'),
                icon = 'masks-theater',
                type = 'command',
                event = 'mask',
                shouldClose = true
            },
            {
                id = 'onoffcoat',
                title = Lang:t('menu.coat'),
                icon = 'vest-patches',
                type = 'command',
                event = 'coat',
                shouldClose = true
            },
            {
                id = 'onoffclosedcoat',
                title = Lang:t('menu.closed_coat'),
                icon = 'vest-patches',
                type = 'command',
                event = 'closedcoat',
                shouldClose = true
            },           
        },
    },
    [5] = {
        id = 'loadskin',
        title = Lang:t('menu.fix_character'),
        icon = 'recycle',
        type = 'client',
        event = 'rsg-appearance:LoadSkinClient',
        shouldClose = true
    },
    [6] = {
        id = 'horseinventory',
        title = Lang:t('menu.inventory'),
        icon = 'box',
        type = 'client',
        event = 'rsg-horses:client:inventoryHorse',
        shouldClose = true
    },
   
}

Config.JobInteractions = {
    ["medic"] = {
        {
            id = 'medicbutton',
            title = Lang:t('menu.emergency_button'),
            icon = 'exclamation',
            type = 'client',
            event = 'rsg-radialmenu:client:SendMedicEmergencyAlert',
            shouldClose = true
        },{
            id = 'revivep',
            title = Lang:t('menu.revive'),
            icon = 'user-doctor',
            type = 'client',
            event = 'rsg-medic:client:RevivePlayer',
            shouldClose = true
        },{
            id = 'treatwounds',
            title = Lang:t('menu.heal_wounds'),
            icon = 'bandage',
            type = 'client',
            event = 'rsg-medic:client:TreatWounds',
            shouldClose = true
        }
    },
    ["police"] = {
        {
            id = 'policebutton',
            title = Lang:t('menu.emergency_button'),
            icon = 'exclamation',
            type = 'client',
            event = 'rsg-radialmenu:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'handcuff',
            title = Lang:t('menu.cuff_menu'),
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:CuffPlayerSoft',
            shouldClose = true
        },{
            id = 'checkstatus',
            title = Lang:t('menu.check_status'),
            icon = 'question',
            type = 'client',
            event = 'police:client:CheckStatus',
            shouldClose = true
        },{
            id = 'escort',
            title = Lang:t('menu.escort_menu'),
            icon = 'user-group',
            type = 'client',
            event = 'police:client:EscortPlayer',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = Lang:t('menu.search_player'),
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'searchhorse',
            title = Lang:t('menu.search_horse'),
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchHorse',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = Lang:t('menu.jail_menu'),
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'lawbadge',
            title = Lang:t('menu.badge_on_off'),
            icon = 'id-badge',
            type = 'command',
            event = 'lawbadge',
            shouldClose = true
        }, 
    },
    ["horsetrainer"] = {
        {
            id = 'starttraining',
            title = Lang:t('menu.toggle_training_on_off'),
            icon = 'horse-head',
            type = 'client',
            event = 'rsg-horsetrainer:client:startTraining',
            shouldClose = true
        },
        {
            id = 'trainerbrush',
            title = Lang:t('menu.trainer_brush'),
            icon = 'horse-head',
            type = 'client',
            event = 'rsg-horsetrainer:client:brushHorse',
            shouldClose = true
        },
        {
            id = 'trainercarrot',
            title = Lang:t('menu.trainer_carrot'),
            icon = 'horse-head',
            type = 'client',
            event = 'rsg-horsetrainer:client:feedHorse',
            shouldClose = true
        },
        {
            id = 'checkhorsexp',
            title = Lang:t('menu.check_horse_exp'),
            icon = 'horse-head',
            type = 'client',
            event = 'rsg-horsetrainer:client:checkHorseEXP',
            shouldClose = true
        }
    },
}
