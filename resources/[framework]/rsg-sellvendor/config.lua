Config = {}

Config.VendorShops = {
    -- valentine
    {
        prompt = "val-sellshop",  -- must be unique
        header = "Valentine Vendor", -- menu header
        coords = vector3(-355.7784, 775.41345, 116.23655 -0.8), -- location of sell shop
        blip = { -- blip settings
            blipSprite = 'blip_shop_market_stall',
            blipScale = 0.2,
            blipName = "Valentine Vendor",
        },
        showblip = true,
        shopdata = { -- shop data           
            {
                title = "Semilla de Tabaco",
                description = "Tabaco Indio",
                price = 0.10,
                item = "indtobaccoseed",
                image = "indtobaccoseed.png"
            },
            {
                title = "Pepita Grande",
                description = "Oro",
                price = 0.90,
                item = "largenugget",
                image = "largenugget.png"
            },
            {
                title = "Pepita Mediana",
                description = "Oro",
                price = 0.70,
                item = "mediumnugget",
                image = "mediumnugget.png"
            },
            {
                title = "Pepita Chica",
                description = "Oro",
                price = 0.25,
                item = "smallnugget",
                image = "smallnugget.png"
            },
            
            
        },
    },
    -- mining vendor
    {
        prompt = "mining1-sellshop",  -- must be unique
        header = "Mining Vendor", -- menu header
        coords = vector3(2435.36, -1511.59, 45.97), -- location of sell shop
        blip = { -- blip settings
            blipSprite = 'blip_shop_market_stall',
            blipScale = 0.2,
            blipName = "Mining Vendor",
        },
        showblip = true,
        shopdata = { -- shop data
            {
                title = "Copper",
                description = "sell copper",
                price = 0.25,
                item = "copper",
                image = "copper.png"
            },
            {
                title = "Aluminum",
                description = "sell aluminum",
                price = 0.30,
                item = "aluminum",
                image = "aluminum.png"
            },
            {
                title = "Iron",
                description = "sell iron",
                price = 0.40,
                item = "iron",
                image = "iron.png"
            },
            {
                title = "Steel",
                description = "sell steel",
                price = 0.50,
                item = "steel",
                image = "steel.png"
            },
            {
                title = "Nitrato",
                description = "sell nitrato",
                price = 0.50,
                item = "nitrato",
                image = "nitrato.png"
            },
            {
                title = "Azufre",
                description = "sell zufre",
                price = 0.50,
                item = "azufre",
                image = "azufre.png"
            },
        },
    },
    -- guarma trade point
    {
        prompt = "guarma-sellshop",  -- must be unique
        header = "Guarma Vendor", -- menu header
        coords = vector3(1284.16, -6871.74, 43.4), -- location of sell shop
        blip = { -- blip settings
            blipSprite = 'blip_shop_market_stall',
            blipScale = 0.2,
            blipName = "Guarma Vendor",
        },
        showblip = true,
        shopdata = { -- shop data
            {
                title = "Box of Cigars",
                description = "sell your cigar boxes",
                price = 20,
                item = "cigarbox",
                image = "cigarbox.png"
            },
            {
                title = "Reloj",
                description = "Reloj de Bolsillo",
                price = 6,
                item = "pocket_watch",
                image = "pocket_watch.png"
            },
            {
                title = "Reloj Platino",
                description = "Platino",
                price = 9,
                item = "pocket_watch_platinum",
                image = "pocket_watch_platinum.png"
            },
            {
                title = "Reloj oro",
                description = "Oro",
                price = 11,
                item = "pocket_watch_gold",
                image = "pocket_watch_gold.png"
            },
            {
                title = "Catimplora",
                description = "Cantimplora",
                price = 0.65,
                item = "canteen100",
                image = "canteen100.png"
            },
        },
    },
}
