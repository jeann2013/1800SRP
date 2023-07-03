Config = {}

-- settings
Config.Debug = false
Config.SellTime = 10000

-- blip settings
Config.Blip = {
    blipName = 'Trapper', -- Config.Blip.blipName
    blipSprite = 'blip_shop_animal_trapper', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.TrapperLocations = {
    -- trapper locations
    {name = 'Valentine Trapper',      location = 'valentine-trapper',     coords = vector3(-334.2203, 773.16943, 116.24839 -0.8), showblip = true }, --valentine
    {name = 'St Denis Trapper',       location = 'stdenis-trapper',       coords = vector3(2832.5424, -1225.602, 47.661453 -0.8), showblip = true }, --stdenis
    {name = 'Riggs Station Trapper',  location = 'riggsstation-trapper',  coords = vector3(-1006.938, -549.3896, 99.393592 -0.8), showblip = true }, --riggsstation
    {name = 'West Elizabeth Trapper', location = 'westelizabeth-trapper', coords = vector3(-2843.525, 142.12048, 184.59883 -0.8), showblip = true }, --westelizabeth
    {name = 'Stawberry Trapper',      location = 'stawberry-trapper',     coords = vector3(-1746.634, -389.2384, 156.53625 -0.8), showblip = true }, --stawberry
    {name = 'Tumbleweed Trapper',     location = 'tumbleweed-trapper',    coords = vector3(-5512.208, -2952.122, -1.791797 -0.8), showblip = true }, --tumbleweed
}

Config.TrapperShop = {
    -- trapper shop items    
    [1] = { name = 'poor_deer_pelt', price = 2.5, amount = 50, info = {}, type = 'item', slot = 1, },
    [2] = { name = 'canteen0', price = 3.5, amount = 50, info = {}, type = 'item', slot = 2, },    
    
}

-- pelt sell prices
Config.PoorPeltPrice = 1
Config.GoodPeltPrice = 2
Config.PerfectPeltPrice = 3
Config.LegendaryPeltPrice = 10
Config.claws_opossumc = 1
Config.tail_rabbitpaw = 1
Config.tooth_snaket = 1
Config.snake_poison = 1
Config.animal_snake = 1
Config.provision_snake_skin = 1
Config.meat_small = 1
Config.provision_meat_gamey_bird = 1
Config.feather_feather = 1
Config.feather_feather2 = 1
Config.feather_feather3 = 1
Config.beak_goosef = 1
Config.beak_vulturef = 1
Config.beak_egretf = 1
Config.beak_turkeyf = 1
Config.beak_seagullf = 1
Config.beak_boobyf = 1
Config.beak_chickenf = 1
Config.beak_pelicanf = 1
Config.beak_condorf = 1
Config.beak_chickenf = 1
Config.beak_hawkf = 1
Config.claws_hawkt = 1
Config.beak_loonf = 1
Config.beak_owlf = 1
Config.heart_chicken = 1
Config.claws_owlt = 1
Config.beak_prairif = 1
Config.claws_eaglet = 1
-- feathers sell prices
Config.PoorFeathersPrice = 1
Config.GoodFeathersPrice = 2
Config.PerfectFeathersPrice = 3
Config.LegendaryFeathersPrice = 10
-- Carcass sell prices
Config.PoorCarcassPrice = 1
Config.GoodCarcassPrice = 2
Config.PerfectCarcassPrice = 3
Config.LegendaryCarcassPrice = 10

-- bank or cash
Config.PaymentType = 'cash'

Config.Pelts = { -- reward item false or 'itemname'
    
    -- BEAR
    { -- a_c_bear_01 / PROVISION_BEAR_FUR_POOR
        model    = 957520252,
        name        = 'Poor Bear Pelt',
        rewarditem1 = 'poor_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_bear',
        rewarditem4 = 'claws_beartc',        
    },
    { -- a_c_bear_01 / PROVISION_BEAR_FUR
        model    = 143941906,
        name        = 'Good Bear Pelt',
        rewarditem1 = 'good_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_bear',
        rewarditem4 = 'claws_beartc',
    },
    { -- a_c_bear_01 / PROVISION_BEAR_FUR_PRISTINE
        pelthash    = 1292673537,
        name        = 'Perfect Bear Pelt',
        rewarditem1 = 'perfect_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_bear',
        rewarditem4 = 'claws_beartc',
    },
     
    -- BLACK_BEAR
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_POOR
        pelthash    = 1083865179,
        name        = 'Poor Black Bear Pelt',
        rewarditem1 = 'poor_black_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_bear',
    },
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR
        pelthash    = 1490032862,
        name        = 'Good Black Bear Pelt',
        rewarditem1 = 'good_black_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_bear',
    },
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_PRISTINE
        pelthash    = 663376218,
        name        = 'Perfect Black Bear Pelt',
        rewarditem1 = 'perfect_black_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_bear',
    },
    
    -- BOAR
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN_POOR
        pelthash    = 1248540072,
        name        = 'Poor Boar Pelt',
        rewarditem1 = 'poor_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_beart',        
    },
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN
        pelthash    = 2116849039,
        name        = 'Good Boar Pelt',
        rewarditem1 = 'good_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_beart',
    },
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN_PRISTINE
        pelthash    = -1858513856,
        name        = 'Perfect Boar Pelt',
        rewarditem1 = 'perfect_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_beart',
    },
    
    -- BUCK
    { -- a_c_buck_01 / PROVISION_BUCK_FUR_POOR
        pelthash    = 1603936352,
        name        = 'Poor Buck Pelt',
        rewarditem1 = 'poor_buck_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_buckantler',        
    },
    { -- a_c_buck_01 / PROVISION_BUCK_FUR
        pelthash    = -868657362,
        name        = 'Good Buck Pelt',
        rewarditem1 = 'good_buck_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_buckantler',
    },
    { -- a_c_buck_01 / PROVISION_BUCK_FUR_PRISTINE
        pelthash    = -702790226,
        name        = 'Perfect Buck Pelt',
        rewarditem1 = 'perfect_buck_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_buckantler',
    },

    -- BUFFALO
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_POOR
        pelthash    = -1730060063,
        name        = 'Poor Buffalo Pelt',
        rewarditem1 = 'poor_buffalo_pelt',
        rewarditem2 = 'raw_meat',        
        rewarditem3 = 'provision_bison_horn',
    },
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR
        pelthash    = -591117838,
        name        = 'Good Buffalo Pelt',
        rewarditem1 = 'good_buffalo_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'provision_bison_horn',        
    },
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_PRISTINE
        pelthash    = -237756948,
        name        = 'Perfect Buffalo Pelt',
        rewarditem1 = 'perfect_buffalo_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'provision_bison_horn',
    },

    -- BULL
    { -- a_c_bull_01 / PROVISION_BULL_HIDE_POOR
        pelthash    = 9293261,
        name        = 'Poor Bull Hide',
        rewarditem1 = 'poor_bull_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_bull',        
    },
    { -- a_c_bull_01 / PROVISION_BULL_HIDE
        pelthash    = -536086818,
        name        = 'Good Bull Hide',
        rewarditem1 = 'good_bull_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_bull',
    },
    { -- a_c_bull_01 / PROVISION_BULL_HIDE_PRISTINE
        pelthash    = -53270317,
        name        = 'Perfect Bull Hide',
        rewarditem1 = 'poor_bull_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_bull',
    },

    -- COUGAR
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_POOR
        pelthash    = 1914602340,
        name        = 'Poor Cougar Pelt',
        rewarditem1 = 'poor_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_cougarf',        
    },
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR
        pelthash    = 459744337,
        name        = 'Good Cougar Pelt',
        rewarditem1 = 'good_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_cougarf',
    },
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_PRISTINE
        pelthash    = -1791452194,
        name        = 'Perfect Cougar Pelt',
        rewarditem1 = 'perfect_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_cougarf',
    },

    -- COW
    { -- a_c_cow / PROVISION_COW_HIDE_POOR
        pelthash    = 334093551,
        name        = 'Poor Cow Hide',
        rewarditem1 = 'poor_cow_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_cowh',        
    },
    { -- a_c_cow / PROVISION_COW_HIDE
        pelthash    = 1150594075,
        name        = 'Good Cow Hide',
        rewarditem1 = 'good_cow_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_cowh',
    },
    { -- a_c_cow / PROVISION_COW_HIDE_PRISTINE
        pelthash    = -845037222,
        name        = 'Perfect Cow Hide',
        rewarditem1 = 'perfect_cow_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_cowh',
    },
    
    -- COYOTE
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_POOR
        pelthash    = -1558096473,
        name        = 'Poor Coyote Pelt',
        rewarditem1 = 'poor_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_coyotef',
    },
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR
        pelthash    = 1150939141,
        name        = 'Good Coyote Pelt',
        rewarditem1 = 'good_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_coyotef',
    },
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_PRISTINE
        pelthash    = -794277189,
        name        = 'Perfect Coyote Pelt',
        rewarditem1 = 'perfect_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_coyotef',
    },
        
    -- DEER
    { -- a_c_deer_01 / PROVISION_DEER_HIDE_POOR
        pelthash    = -662178186,
        name        = 'Poor Deer Pelt',
        rewarditem1 = 'poor_deer_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_deer',        
        
    },
    { -- a_c_deer_01 / PROVISION_DEER_HIDE
        pelthash    = -1827027577,
        name        = 'Good Deer Pelt',
        rewarditem1 = 'good_deer_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_deer',
    },
    { -- a_c_deer_01 / PROVISION_DEER_HIDE_PRISTINE
        pelthash    = -1035515486,
        name        = 'Perfect Deer Pelt',
        rewarditem1 = 'perfect_deer_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_deer',
    },
    
    -- ELK
    { -- a_c_elk_01 / PROVISION_ELK_FUR_POOR
        pelthash    = 2053771712,
        name        = 'Poor Elk Pelt',
        rewarditem1 = 'poor_elk_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_elkantler',        
    },
    { -- a_c_elk_01 / PROVISION_ELK_FUR
        pelthash    = 1181652728,
        name        = 'Good Elk Pelt',
        rewarditem1 = 'good_elk_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_elkantler',
    },
    { -- a_c_elk_01 / PROVISION_ELK_FUR_PRISTINE
        pelthash    = -1332163079,
        name        = 'Perfect Elk Pelt',
        rewarditem1 = 'perfect_elk_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_elkantler',
    },
    
    -- FOX
    { -- a_c_fox_01 / PROVISION_FOX_FUR_POOR
        pelthash    = 1647012424,
        name        = 'Poor Fox Pelt',
        rewarditem1 = 'poor_fox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tail_fox',
        rewarditem4 = 'tooth_foxt',
        
    },
    { -- a_c_fox_01 / PROVISION_FOX_FUR
        pelthash    = 238733925,
        name        = 'Good Fox Pelt',
        rewarditem1 = 'good_fox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tail_fox',
        rewarditem4 = 'tooth_foxt',
    },
    { -- a_c_fox_01 / PROVISION_FOX_FUR_PRISTINE
        pelthash    = 500722008,
        name        = 'Perfect Fox Pelt',
        rewarditem1 = 'perfect_fox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tail_fox',
        rewarditem4 = 'tooth_foxt',
    },
    
    -- GOAT
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR_POOR
        pelthash    = 699990316,
        name        = 'Poor Goat Hide',
        rewarditem1 = 'poor_goat_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR
        pelthash    = 1710714415,
        name        = 'Good Goat Hide',
        rewarditem1 = 'good_goat_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR_PRISTINE
        pelthash    = -1648383828,
        name        = 'Perfect Goat Hide',
        rewarditem1 = 'perfect_goat_pelt',
        rewarditem2 = 'raw_meat'
    },
    
    -- JAVELINA
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_POOR
        pelthash    = -99092070,
        name        = 'Poor Peccary Pig Pelt',
        rewarditem1 = 'poor_javelina_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN
        pelthash    = -1379330323,
        name        = 'Good Peccary Pig Pelt',
        rewarditem1 = 'good_javelina_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_PRISTINE
        pelthash    = 1963510418,
        name        = 'Perfect Peccary Pig Pelt',
        rewarditem1 = 'perfect_javelina_pelt',
        rewarditem2 = 'raw_meat'
    },
    
    -- MOOSE
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR_POOR
        pelthash    = 1868576868,
        name        = 'Poor Moose Pelt',
        rewarditem1 = 'poor_moose_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR
        pelthash    = 1636891382,
        name        = 'Good Moose Pelt',
        rewarditem1 = 'good_moose_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR_PRISTINE
        pelthash    = -217731719,
        name        = 'Perfect Moose Pelt',
        rewarditem1 = 'perfect_moose_pelt',
        rewarditem2 = 'raw_meat'
    },
    
    -- OXEN
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE_POOR
        pelthash    = 462348928,
        name        = 'Poor Ox Hide',
        rewarditem1 = 'poor_ox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_oxhorn',        
    },
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE
        pelthash    = 1208128650,
        name        = 'Good Ox Hide',
        rewarditem1 = 'good_ox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_oxhorn',
    },
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE_PRISTINE
        pelthash    = 659601266,
        name        = 'Perfect Ox Hide',
        rewarditem1 = 'perfect_ox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_oxhorn',
    },
    
    -- PANTHER
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_POOR
        pelthash    = 1584468323,
        name        = 'Poor Panther Pelt',
        rewarditem1 = 'poor_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tail_panthere',        
    },
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR
        pelthash    = -395646254,
        name        = 'Good Panther Pelt',
        rewarditem1 = 'good_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tail_panthere',
    },
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_PRISTINE
        pelthash    = 1969175294,
        name        = 'Perfect Panther Pelt',
        rewarditem1 = 'perfect_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tail_panthere',
    },
    
    -- PIG
    { -- a_c_pig_01 / PROVISION_PIG_SKIN_POOR
        pelthash    = -308965548,
        name        = 'Poor Pig Hide',
        rewarditem1 = 'poor_pig_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_pig_01 / PROVISION_PIG_SKIN
        pelthash    = -57190831,
        name        = 'Good Pig Hide',
        rewarditem1 = 'good_pig_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_pig_01 / PROVISION_PIG_SKIN_PRISTINE
        pelthash    = -1102272634,
        name        = 'Perfect Pig Hide',
        rewarditem1 = 'perfect_pig_pelt',
        rewarditem2 = 'raw_meat'
    },
    
    -- PRONGHORN
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_POOR
        pelthash    = -983605026,
        name        = 'Poor Pronghorn Hide',
        rewarditem1 = 'poor_pronghorn_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_pronghornh',        
    },
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR
        pelthash    = 554578289,
        name        = 'Good Pronghorn Hide',
        rewarditem1 = 'good_pronghorn_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_pronghornh',
    },
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_PRISTINE
        pelthash    = -1544126829,
        name        = 'Perfect Pronghorn Hide',
        rewarditem1 = 'perfect_pronghorn_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_pronghornh',
    },
    
    -- RAM
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_POOR
        pelthash    = 1796037447,
        name        = 'Poor Ram Hide',
        rewarditem1 = 'poor_bighornram_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_ramhorn',        
    },
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE
        pelthash    = -476045512,
        name        = 'Good Ram Hide',
        rewarditem1 = 'good_bighornram_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_ramhorn',
    },
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_PRISTINE
        pelthash    = 1795984405,
        name        = 'Perfect Ram Hide',
        rewarditem1 = 'perfect_bighornram_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'horn_ramhorn',
    },
    
    -- SHEEP
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_POOR
        pelthash    = 1729948479,
        name        = 'Poor Sheep Hide',
        rewarditem1 = 'poor_sheep_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL
        pelthash    = -1317365569,
        name        = 'Good Sheep Hide',
        rewarditem1 = 'good_sheep_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_PRISTINE
        pelthash    = 1466150167,
        name        = 'Perfect Sheep Hide',
        rewarditem1 = 'perfect_sheep_pelt',
        rewarditem2 = 'raw_meat'
    },
    
    -- WOLF
    { -- a_c_wolf / PROVISION_WOLF_FUR_POOR
        pelthash    = 85441452,
        name        = 'Poor Wolf Pelt',
        rewarditem1 = 'poor_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_wolf',
        rewarditem4 = 'tooth_wolftooth',        
        
    },
    { -- a_c_wolf / PROVISION_WOLF_FUR
        pelthash    = 1145777975,
        name        = 'Good Wolf Pelt',
        rewarditem1 = 'good_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_wolf',
        rewarditem4 = 'tooth_wolftooth',
    },
    { -- a_c_wolf / PROVISION_WOLF_FUR_PRISTINE
        pelthash    = 653400939,
        name        = 'Perfect Wolf Pelt',
        rewarditem1 = 'perfect_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'heart_wolf',
        rewarditem4 = 'tooth_wolftooth',
    },
    
    -- ALLIGATOR
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_POOR
        pelthash    = 1806153689,
        name        = 'Poor Alligator Skin',
        rewarditem1 = 'poor_alligator_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN
        pelthash    = -802026654,
        name        = 'Good Alligator Skin',
        rewarditem1 = 'good_alligator_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_PRISTINE
        pelthash    = -1625078531,
        name        = 'Perfect Alligator Skin',
        rewarditem1 = 'perfect_alligator_pelt',
        rewarditem2 = 'raw_meat'
    },
    
    -- RACCOON
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR_POOR
        pelthash    = 1992476687,
        name        = 'Poor Raccoon Pelt',
        rewarditem1 = 'poor_raccoon_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_raccoont',        
    },
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR
        pelthash    = -1178296218,
        name        = 'Good Raccoon Pelt',
        rewarditem1 = 'good_raccoon_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_raccoont',
    },
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR_PRISTINE
        pelthash    = -305970307,
        name        = 'Perfect Raccoon Pelt',
        rewarditem1 = 'perfect_raccoon_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'tooth_raccoont',
    },
    
    -- LEGENDARY
    { -- mp_a_c_alligator_01 / Legendary Sun Gator
        pelthash    = -1621144167,
        name        = 'Legendary Sun Gator Skin',
        rewarditem1 = 'legendary_alligator_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_beaver_01 / Legendary Moon Beaver
        pelthash    = -251416414,
        name        = 'Legendary Moon Beaver Pelt',
        rewarditem1 = 'legendary_moon_beaver_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- A_C_Beaver_01 / Legendary Beaver
        pelthash    = -2059726619,
        name        = 'Legendary Beaver Pelt',
        rewarditem1 = 'legendary_beaver_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_beaver_01 / Legendary Zizi Beaver
        pelthash    = 121494806,
        name        = 'Legendary Zizi Beaver Pelt',
        rewarditem1 = 'legendary_zizi_beaver_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_beaver_01 / Legendary Night Beaver
        pelthash    = -1787430524,
        name        = 'Legendary Night Beaver Pelt',
        rewarditem1 = 'legendary_night_beaver_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_boar_01 / Legendary Wakpa Boar
        pelthash    = -1249752300,
        name        = 'Legendary Wakpa Boar Pelt',
        rewarditem1 = 'legendary_boar_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_cougar_01 / Legendary Maza Cougar
        pelthash    = 397926876,
        name        = 'Legendary Maza Cougar Pelt',
        rewarditem1 = 'legendary_cougar_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_coyote_01 / Legendary Midnight Paw Coyote
        pelthash    = 1728819413,
        name        = 'Legendary Midnight Paw Coyote Pelt',
        rewarditem1 = 'legendary_coyote_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_panther_01 / Legendary Ghost Panther
        pelthash    = 836208559,
        name        = 'Legendary Ghost Panther Pelt',
        rewarditem1 = 'legendary_panther_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_wolf_01? / Legendary Onyx Wolf
        pelthash    = -1548204069,
        name        = 'Legendary Onyx Wolf Pelt',
        rewarditem1 = 'legendary_wolf_pelt',
        rewarditem2 = 'raw_meat'
    },
    { -- mp_a_c_wolf_01 / Legendary Emerald Wolf Pelt
        pelthash    = -1946740647,
        name        = 'Legendary Emerald Wolf Pelt',
        rewarditem1 = 'legendary_wolf_pelt',
        rewarditem2 = 'raw_meat'
    },   
    
}

Config.Animal = {
    { -- A_C_POSSUM_01 / p_cs_pelt_med_possum
        model    = 515943817,
        name        = 'Zarigueya de virginia',
        rewarditem1 = 'pelt_good_possum',
        rewarditem2 = 'claws_opossumc', 
        rewarditem3 = 'meat_small', 
        vendible    =  true
    }, 
    { -- A_C_RABBIT_01 / p_cs_rabbit02x
         model    = 311947389,
         name        = 'Liebre de cola Negra',
         rewarditem1 = 'pelt_good_rabbit',
         rewarditem2 = 'tail_rabbitpaw', 
         rewarditem3 = 'meat_small', 
         vendible    =  true,
    },      
    { -- A_C_HERON_01 / S_CS_HERON_01_PLUMES_01X --> sin config rewards
        model    = 1860395013,
        name        = 'Garza azulada',
        rewarditem1 = 'feather_feather',
        rewarditem2 = 'provision_meat_gamey_bird',
        vendible    =  true,
    },  
    { -- Water snake a_c_snakewater_01
        model    = -229688157,
        name        = 'Water snake',
        rewarditem1 = 'provision_snake_skin',
		rewarditem2 = 'tooth_snaket',         
        rewarditem3 = 'animal_snake', 
        rewarditem4 = 'meat_small',
        vendible    =  true,
    },  
    { -- Snake Red Boa A_C_SNAKEREDBOA_01
        model    = -1790499186,
        name        = 'Snake Red Boa',
        rewarditem1 = 'provision_snake_skin',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'snake_poison', 
        rewarditem4 = 'animal_snake', 
        rewarditem5 = 'meat_small',
        vendible    =  true,
    },  
    { -- Snake Fer-De-Lance a_c_snakeferdelance_01
        model    = 1464167925,
        name        = 'Snake Fer-De-Lance',
        rewarditem1 = 'provision_snake_skin',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'snake_poison', 
        rewarditem4 = 'animal_snake', 
        rewarditem5 = 'meat_small',
        vendible    =  true,
    },  
    { -- Black-Tailed Rattlesnake
        model    = 846659001,
        name        = 'Black-Tailed Rattlesnake',
        rewarditem1 = 'provision_snake_skin',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'snake_poison', 
        rewarditem4 = 'animal_snake', 
        rewarditem5 = 'meat_small',
        vendible    =  true,
    },  
    { -- Western Rattlesnake A_C_SNAKE_01
        model    = 545068538,
        name        = 'Western Rattlesnake',
        rewarditem1 = 'provision_snake_skin',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'snake_poison', 
        rewarditem4 = 'animal_snake', 
        rewarditem5 = 'meat_small',
        vendible    =  true,
        
    }, 
     {-- A_C_DUCK_01
        model    =   -1003616053,
        name        =   'Pato',
        rewarditem1 =   'beak_duckf',
        rewarditem2 =   'feather_duckf',
        rewarditem3 =   'heart_chicken',
        rewarditem4 =   'provision_meat_gamey_bird',
        vendible    =   true,
    },
    {-- A_C_EAGLE_01
        model    =   1459778951,
        name        =   'Aguila',
        rewarditem1 =   'claws_eaglet',
        rewarditem2 =   'feather_eaglef',
        rewarditem3 =   'beak_eaglef',
        rewarditem4 =   'heart_chicken',
        rewarditem4 =   'provision_meat_gamey_bird',
        vendible    =   true,
    },
    {-- A_C_EGRET_01
        model    =   831859211,
        name        =   'Egret',
        rewarditem1 =   'beak_egretf',
        rewarditem2 =   'feather_egretf',
        rewarditem3 =   'heart_chicken',
        rewarditem4 =   'provision_meat_gamey_bird',
        vendible    =   true,
    },
    {-- A_C_VULTURE_01
        model    =   1104697660, -- revisar
        name        =   'Buitre Cabecirrojo occ',
        rewarditem1 =   'beak_vulturef',
        rewarditem2 =   'feather_feather',
        rewarditem3 =   'heart_chicken',
        rewarditem4 =   'provision_meat_gamey_bird',
        vendible    =   true,
    },     
    { -- A_C_TURKEYWILD_01 / p_cs_trkybreastmeat01x
        model    = -466054788,
        name        = 'Pavo salvaje',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather',
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_turkeyf',        
        vendible    =   true,
    }, 
    { -- A_C_TURKEYWILD_01 / p_cs_trkybreastmeat01x
        model    = -2011226991,
        name        = 'Pavo salvaje',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_turkeyf',
        vendible    =   true,
    }, 
    { -- A_C_TURKEYWILD_01 / a_c_turkey_02
        model    = -166054593,
        name        = 'Pavo salvaje',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_turkeyf',
        vendible    =   true,
    }, 
    { -- Herring Seagull
        model  = -164963696,
        name        = 'Herring Seagull',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_seagullf',
        vendible    =   true
    }, 
    { -- Roseate Spoonbill
        model    = -1076508705,
        name        = 'Herring Seagull',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        vendible    =   true,
    }, 
    { -- Dominique Rooster
        model    = 2023522846,
        name        = 'Dominique Rooster',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        vendible    =   true,
    }, 
    { -- Red-Footed Booby
        model    = -466687768,
        name        = 'Red-Footed Booby',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_boobyf',        
        vendible    =   true,
    }, 
    { -- Wester Raven 
        model    = -575340245,
        name        = 'Wester Raven',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_ravenf',        
        vendible    =   true,
    }, 
    { -- Greater Prairie Chicken A_C_Prairiechicken_01
        model    = 2079703102,
        name        = 'Greater Prairie Chicken',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_chickenf',      
        vendible    =   true,
    }, 
    { -- Ring-Necked Pheasant  A_C_Pheasant_01
        model    = 1416324601,
        name        = 'Ring-Necked Pheasant',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',            
        vendible    =   true,
    }, 
    { -- American White Pelican  A_C_Pelican_01
        model    = 1265966684,
        name        = 'American White Pelican',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_pelicanf',
        vendible    =   true,
    }, 
    { -- Blue And Yellow Macaw  A_C_Parrot_01
        model    = -1797450568,
        name        = 'Blue And Yellow Macaw',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        vendible    =   true,
    }, 
    { -- Californian Condor A_C_CaliforniaCondor_01
        model    = 1205982615,
        name        = 'Californian Condor',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_condorf',
        vendible    =   true,
    }, 
    { -- Dominique Chicken  a_c_chicken_01
        model    = -2063183075,
        name        = 'Dominique Chicken',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_chickenf',
        vendible    =   true,
    }, 
    { -- Double-Crested Cormorant a_c_cormorant_01
        model    = -2073130256,
        name        = 'Double-Crested Cormorant',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',        
        vendible    =   true,
    }, 
    { -- Whooping Crane  A_C_CraneWhooping_01
        model    = -564099192,
        name        = 'Whooping Crane',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        vendible    =   true,
    }, 
    { -- Canada Goose A_C_GooseCanada_01
        model    = 723190474,
        name        = 'Canada Goose',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_goosef',
        vendible    =   true,
    }, 
    { -- Ferruinous Hawk A_C_Hawk_01
        model    = -2145890973,
        name        = 'Ferruinous Hawk',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_hawkf',
        rewarditem5 = 'claws_hawkt',
        vendible    =   true,
    }, 
    { -- Great Blue Heron A_C_Heron_01
        model    = 1095117488,
        name        = 'Great Blue Heron',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        vendible    =   true,
    }, 
    { -- Common Loon A_C_Loon_01
        model    = 386506078,
        name        = 'Common Loon',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_loonf',
        vendible    =   true,
    }, 
    { -- Great Horned Owl A_C_Owl_01
        model    = -861544272,
        name        = 'Great Horned Owl',
        rewarditem1 = 'heart_chicken',
        rewarditem2 = 'feather_feather2', 
        rewarditem3 = 'provision_meat_gamey_bird',
        rewarditem4 = 'beak_owlf',
        rewarditem5 = 'claws_owlt',        
        vendible    =   true,
    }, 
    {-- A_C_RAVEN_01
        model    =   -547982328,
        name        =   'Cuervo Grande Occidental',
        rewarditem1 =   'beak_ravenf',
        rewarditem2 =   'feather_ravenf',
        rewarditem3 =   'heart_chicken',
        vendible    =   true,
    },
    -- {-- A_C_HAWK_01
    --     model    =   -1350548143,
    --     name        =   'Ratonero Calzado',
    --     rewarditem1 =   'beak_hawkf',
    --     rewarditem2 =   'feather_feather3',
    --     rewarditem3 =   'claws_hawkt',
    --     rewarditem4 =   'heart_chicken',
    --     vendible    =   true,
    -- },
    -- {-- A_C_Prairiechicken_01 
    --     model    =   2079703102, -- revisar
    --     name        =   'Urogallo Grande',
    --     rewarditem1 =   'beak_prairif',
    --     rewarditem2 =   'feather_feather3',
    --     rewarditem3 =   'heart_chicken',
    --     rewarditem4 =   'beak_prairif',
    --     vendible    =   true,
    -- }, 
}
