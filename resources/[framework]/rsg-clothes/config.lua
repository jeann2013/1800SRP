Config = {}
Config.Shoptext =  Lang:t('text.press_to_open_clothing_store') -- Text to open the clothing shop
Config.Cloakroomtext = Lang:t('text.press_to_open_the_changing_rooms') -- Text to open the clothing shop
Config.BlipName = Lang:t('text.a_clothing_store') -- Blip Name Showed on map
Config.BlipNameCloakRoom = Lang:t('text.wardrobe') -- Blip Name Showed on map
Config.BlipSprite = 1195729388	 -- Clothing shop sprite
Config.BlipSpriteCloakRoom = 1496995379	 -- Clothing shop sprite
Config.BlipScale = 0.2 -- Blip scale
Config.OpenKey = 0xD9D0E1C0 -- Opening key hash
Config.Zones = {
    vector3(-325.5,774.57,117.45), -- VALENTINE
    vector3(1326.42, -1289.56, 77.02), -- RHODES
    vector3(2550.81,-1166.28,53.68), -- SAINT DENIS
    vector3(-767.94,-1294.95,43.84), -- BLACK WATER
    vector3(-1794.89,-385.22,160.33), -- STRAWBERRY
    vector3(-3689.37,-2628.01,-13.41), -- ARMADILO
    vector3(-5490.97,-2938.28,-0.4) -- TUMBLEWEED
}

Config.Cloakroom = {
    vector3(-325.29,766.24,117.48), -- VALENTINE
    vector3(-1817.11,-368.77,166.54), 
    vector3(-825.40,-1323.76,47.91), 
    vector3(1331.86,-1377.35,80.55), 
    vector3(2556.49,-1160.14,53.74) 
}

Config.Label = {
    ["boot_accessories"] = Lang:t('label.boot_accessories'),
    ["pants"] = Lang:t('label.pants'),
    ["cloaks"] = Lang:t('label.cloaks'),
    ["hats"] = Lang:t('label.hats'),
    ["vests"] = Lang:t('label.vests'),
    ["chaps"] = Lang:t('label.chaps'),
    ["shirts_full"] =  Lang:t('label.shirts_full'),
    ["badges"] = Lang:t('label.badges'),
    ["masks"] = Lang:t('label.masks'),
    ["spats"] = Lang:t('label.spats'),
    ["neckwear"] =  Lang:t('label.neckwear'),
    ["boots"] = Lang:t('label.boots'),
    ["accessories"] = Lang:t('label.accessories'),
    ["jewelry_rings_right"] = Lang:t('label.jewelry_rings_right'),
    ["jewelry_rings_left"]    = Lang:t('label.jewelry_rings_left'),
    ["jewelry_bracelets"] =  Lang:t('label.jewelry_bracelets'),
    ["gauntlets"] =  Lang:t('label.gauntlets'),
    ["neckties"] =  Lang:t('label.neckties'),
    ["holsters_knife"] =  Lang:t('label.holsters_knife'),
    ["talisman_holster"] =  Lang:t('label.talisman_holster'),
    ["loadouts"] =  Lang:t('label.loadouts'),
    ["suspenders"] = Lang:t('label.suspenders'),
    ["talisman_satchel"] =  Lang:t('label.talisman_satchel'),
    ["satchels"] = Lang:t('label.satchels'),
    ["gunbelts"] =  Lang:t('label.gunbelts'),
    ["belts"] = Lang:t('label.belts'),
    ["belt_buckles"] =  Lang:t('label.belt_buckles'),
    ["holsters_left"] =  Lang:t('label.holsters_left'),
    ["holsters_right"] =  Lang:t('label.holsters_right'),
    ["talisman_wrist"] =  Lang:t('label.talisman_wrist'),
    ["coats"] = Lang:t('label.coats'),
    ["coats_closed"] =  Lang:t('label.coats_closed'),
    ["ponchos"] = Lang:t('label.ponchos'),
    ["eyewear"] = Lang:t('label.eyewear'),
    ["gloves"] = Lang:t('label.gloves'),
    ["holsters_crossdraw"] =  Lang:t('label.holsters_crossdraw'),
    ["aprons"] = Lang:t('label.aprons'),
    ["skirts"] = Lang:t('label.skirts'),
    ["hair_accessories"] =  Lang:t('label.hair_accessories'),
    ["armor"] = Lang:t('label.armor'),
    ["dresses"] = Lang:t('label.dresses'),
}

Config.Price = {
    ["boot_accessories"] = 4,
    ["pants"] = 2,
    ["cloaks"] = 4,
    ["hats"] = 2,
    ["vests"] = 2,
    ["chaps"] = 2,
    ["shirts_full"] = 2,
    ["badges"] = 10,
    ["masks"] = 5,
    ["spats"] = 3,
    ["neckwear"] = 2,
    ["boots"] = 2,
    ["accessories"] = 5,
    ["jewelry_rings_right"] = 10,
    ["jewelry_rings_left"] = 10,
    ["jewelry_bracelets"] = 6,
    ["gauntlets"] = 3,
    ["neckties"] = 3,
    ["holsters_knife"] = 3,
    ["talisman_holster"] = 3,
    ["loadouts"] = 5,
    ["suspenders"] = 3,
    ["talisman_satchel"] = 3,
    ["satchels"] = 3,
    ["gunbelts"] = 3,
    ["belts"] = 2,
    ["belt_buckles"] = 6,
    ["holsters_left"] = 5,
    ["holsters_right"] = 5,
    ["talisman_wrist"] = 5,
    ["coats"] = 5,
    ["coats_closed"] = 5,
    ["ponchos"] = 3,
    ["eyewear"] = 5,
    ["gloves"] = 3,
    ["holsters_crossdraw"] = 4,
    ["aprons"] = 4,
    ["skirts"] = 2,
    ["hair_accessories"] = 2,
    ["dresses"] = 1,  
    ["armor"] = 20,        
}

Config.MenuElements = {
    ["head"] = {
        label = Lang:t('label.head'),
        category = {
            "hats",
            "eyewear",
            "masks",
            "neckwear",
            "neckties",
        }
    },

    ["torso"] = {
        label = Lang:t('label.torso'),
        category = {
            "cloaks",
            "vests",
            "shirts_full",
            "holsters_knife",
            "loadouts",
            "suspenders",
            "gunbelts",
            "belts",
            "holsters_left",
            "holsters_right",
            "coats",
            "coats_closed",
            "ponchos",
            "dresses",
        }
    },

    [""] = {
        label = Lang:t('label.legs'),
        category = {
            "pants",
            "chaps",
            "skirts",
        }
    },
    ["foot"] = {
        label = Lang:t('label.foot'),
        category = {
            "boots",
            "spats",
            "boot_accessories",
        }
    },

    ["hands"] = {
        label = Lang:t('label.hands'),
        category = {
            "jewelry_rings_right",
            "jewelry_rings_left",
            "jewelry_bracelets",
            "gauntlets",
            "gloves",
        }
    },

    ["accessories"] = {
        label = Lang:t('label.accessories'),
        category = {
            "accessories",
            "talisman_wrist",
            "talisman_holster",
            "belt_buckles",
            "satchels",
            "holsters_crossdraw",
            "aprons",
            "bows",
            "armor",
            "badges",
            "hair_accessories",
        }
    },
}