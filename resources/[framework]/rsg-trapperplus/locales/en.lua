local Translations = {
    error = {
        something_went_wrong = 'something went wrong!',
        you_dont_have_any_pelts_to_sell = "you don\'t have any pelts to sell!",
        you_dont_have_any_carcars_to_sell = "you don\'t have any carcars to sell!",
    },
    success = {
        you_have_sold_all_your_pelts_for = 'you have sold all your pelts for $',
        you_have_sold_all_your_carcars_for = 'you have sold all your carcars for $',
    },
    primary = {
        stored = ' Stored',
    },
    menu = {
        open = 'Open ',
        sell_stored_pelts = 'Sell Stored Pelts',
        trapper_menu = 'Trapper Menu',
        open_trapper_shop = 'Open Trapper Shop',
        close_menu = 'Close Menu',
        sell_stored_carcars = 'Sell Stored Carcars',
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
        checking_pelts = 'Checking Pelts',
        checking_carcars = 'Checking Carcars',
    },
    text = {
        buy_items_from_the_trapper = 'buy items from the trapper',
        sell_store_pelts = 'sell store items pelts',
        trapper_shop =  'Trapper Shop',
        sell_stored_carcars  = 'Venta de parte de animal',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
