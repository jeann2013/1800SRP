Config = {}

-- debug
Config.Debug = false

-- settings
Config.StorageMaxWeight = 4000000
Config.StorageMaxSlots = 48

-- blip settings
Config.Blip = {
    blipName = 'Weaponsmith', -- Config.Blip.blipName
    blipSprite = 'blip_shop_gunsmith', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.WeaponCraftingPoint = {

    {   -- valentine
        name = 'Valentine Weapon Crafting', 
        prompt = 'weaponsmith-1',
        job = 'valweaponsmith',
        coords = vector3(-277.2185, 779.09729, 119.50399), 
        showblip = false, 
        showmarker = true
    },
    {   -- rhodes
        name = 'Rhodes Weapon Crafting', 
        prompt = 'weaponsmith-2',
        job = 'rhoweaponsmith',
        coords = vector3(1327.1809, -1322.01, 77.888885), 
        showblip = false, 
        showmarker = true
    },

}

Config.WeaponPartsCrafting = {

    -- base weapon items
    ['trigger'] = {
        name = 'trigger',
        lable = 'Trigger',
        text = '1x'..Lang:t('text.txt_steel'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'trigger',
        quantity = 4
    },
    
    ['hammer'] = {
        name = 'hammer',
        lable = 'Hammer',
        text = '1x'..Lang:t('text.txt_steel'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'hammer',
        quantity = 3,
    },
    
    ['barrel'] = {
        name = 'barrel',
        lable = 'Barrel',
        text = '1x'..Lang:t('text.txt_steel'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'barrel',
        quantity = 3,
    },
    
    ['spring'] = {
        name = 'spring',
        lable = 'Spring',
        text = '1x'..Lang:t('text.txt_steel'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'spring',
        quantity = 4,
    },
    
    ['frame'] = {
        name = 'frame',
        lable = 'Frame',
        text = '1x'..Lang:t('text.txt_steel'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'frame',
        quantity = 2,
    },

    ['grip'] = {
        name = 'grip',
        lable = 'Grip',
        text = '1x'..Lang:t('text.txt_steel')..' 1x'..Lang:t('text.txt_wood'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
            [2] = { item = 'wood', amount = 1 },
        },
        receive = 'grip',
        quantity = 3,
    },

    ['cylinder'] = {
        name = 'cylinder',
        lable = 'Cylinder',
        text = '1x'..Lang:t('text.txt_steel'),
        crafttime = 4000,
        craftitems = {
            [1] = { item = 'steel', amount = 1 },
        },
        receive = 'cylinder',
        quantity = 3,
    },
    
}

Config.RevloverCrafting = {
    
    -- revlover crafting
    ['weapon_revolver_navy'] = {
        name = 'weapon_revolver_navy',
        lable = 'Navy Revolver',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_navy'
    },
    ['weapon_revolver_cattleman'] = {
        name = 'weapon_revolver_cattleman',
        lable = 'Cattleman',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_cattleman'
    },
    ['weapon_revolver_cattleman_mexican'] = {
        name = 'weapon_revolver_cattleman_mexican',
        lable = 'Cattleman Mexican',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_cattleman_mexican'
    },
    ['weapon_revolver_doubleaction_gambler'] = {
        name = 'weapon_revolver_doubleaction_gambler',
        lable = 'Gambler',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_doubleaction_gambler'
    },
    ['weapon_revolver_schofield'] = {
        name = 'weapon_revolver_schofield',
        lable = 'Schofield',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_schofield'
    },
    ['weapon_revolver_lemat'] = {
        name = 'weapon_revolver_lemat',
        lable = 'LeMat',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_lemat'
    },
    ['weapon_revolver_navy_crossover'] = {
        name = 'weapon_revolver_navy_crossover',
        lable = 'Navy Crossover',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_cylinder'),
        crafttime = 12000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },
            [6] = { item = 'cylinder', amount = 1 },
        },
        receive = 'weapon_revolver_navy_crossover'
    },
    
}

Config.PistolCrafting = {
    
    ['weapon_pistol_volcanic'] = {
        name = 'weapon_pistol_volcanic',
        lable = 'Volcanic',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip'),
        crafttime = 10000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
        },
        receive = 'weapon_pistol_volcanic'
    },
    ['weapon_pistol_m1899'] = {
        name = 'weapon_pistol_m1899',
        lable = 'M1899',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip'),
        crafttime = 10000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
        },
        receive = 'weapon_pistol_m1899'
    },
    ['weapon_pistol_mauser'] = {
        name = 'weapon_pistol_mauser',
        lable = 'Mauser',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip'),
        crafttime = 10000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
        },
        receive = 'weapon_pistol_mauser'
    },
    ['weapon_pistol_semiauto'] = {
        name = 'weapon_pistol_semiauto',
        lable = 'Semi-Auto',
        text = '1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip'),
        crafttime = 10000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
        },
        receive = 'weapon_pistol_semiauto'
    },

}

Config.RepeaterCrafting = {
    
    ['weapon_repeater_carbine'] = {
        name = 'weapon_repeater_carbine',
        lable = 'Carbine',
        text = '1x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 1 },
        },
        receive = 'weapon_repeater_carbine'
    },
    ['weapon_repeater_winchester'] = {
        name = 'weapon_repeater_winchester',
        lable = 'Winchester',
        text = '1x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 1 },
        },
        receive = 'weapon_repeater_winchester'
    },
    ['weapon_repeater_henry'] = {
        name = 'weapon_repeater_henry',
        lable = 'Henry',
        text = '1x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 1 },
        },
        receive = 'weapon_repeater_henry'
    },
    ['weapon_repeater_evans'] = {
        name = 'weapon_repeater_evans',
        lable = 'Evans',
        text = '1x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 1 },
        },
        receive = 'weapon_repeater_evans'
    },

}

Config.RifleCrafting = {
    
    ['weapon_rifle_varmint'] = {
        name = 'weapon_rifle_varmint',
        lable = 'Varmint',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_rifle_varmint'
    },
    ['weapon_rifle_springfield'] = {
        name = 'weapon_rifle_springfield',
        lable = 'Springfield',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_rifle_springfield'
    },
    ['weapon_rifle_boltaction'] = {
        name = 'weapon_rifle_boltaction',
        lable = 'Boltaction',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_rifle_boltaction'
    },
    ['weapon_rifle_elephant'] = {
        name = 'weapon_rifle_elephant',
        lable = 'Elephant',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_rifle_elephant'
    },

}

Config.ShotgunCrafting = {
    
    ['weapon_shotgun_doublebarrel'] = {
        name = 'weapon_shotgun_doublebarrel',
        lable = 'Shotgun',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_shotgun_doublebarrel'
    },
    ['weapon_shotgun_doublebarrel_exotic'] = {
        name = 'weapon_shotgun_doublebarrel_exotic',
        lable = 'Exotic Shotgun',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_shotgun_doublebarrel_exotic'
    },
    ['weapon_shotgun_sawedoff'] = {
        name = 'weapon_shotgun_sawedoff',
        lable = 'Sawedoff Shotgun',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_shotgun_sawedoff'
    },
    ['weapon_shotgun_semiauto'] = {
        name = 'weapon_shotgun_semiauto',
        lable = 'SA Shotgun',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_shotgun_semiauto'
    },
    ['weapon_shotgun_pump'] = {
        name = 'weapon_shotgun_pump',
        lable = 'SA Shotgun Pump',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_shotgun_pump'
    },
    ['weapon_shotgun_repeating'] = {
        name = 'weapon_shotgun_repeating',
        lable = 'SA Shotgun Repeater',
        text = '2x'..Lang:t('text.txt_wood')..' 1x'..Lang:t('text.txt_trigger')..' 1x'..Lang:t('text.txt_hammer')..' 1x'..Lang:t('text.txt_barrel')..' 1x'..Lang:t('text.txt_frame')..' 1x'..Lang:t('text.txt_grip')..' 1x'..Lang:t('text.txt_spring'),
        crafttime = 15000,
        craftitems = {
            [1] = { item = 'trigger',  amount = 1 },
            [2] = { item = 'hammer',   amount = 1 },
            [3] = { item = 'barrel',   amount = 1 },
            [4] = { item = 'frame',    amount = 1 },
            [5] = { item = 'grip',     amount = 1 },            
            [6] = { item = 'spring',   amount = 1 },
            [7] = { item = 'wood',     amount = 2 },
        },
        receive = 'weapon_shotgun_repeating'
    },

}
