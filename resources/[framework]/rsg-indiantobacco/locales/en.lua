local Translations = {
    error = {
        error = 'Error',
        you_dont_have_any_water = 'You don\'t have any water!',
        you_dont_have_any_fertilizer = 'You don\'t have any fertilizer!',
        too_close_to_another_plant = 'too close to another plant!',
        you_already_have  = 'You already have ',
        plants_down = ' plants down',
        you_dont_have_enough_indian_tobacco_to_do_that = 'You don\'t have enough indian tobacco to do that!',
        not_enough_to_complete_the_trade = 'not enough to complete the trade!',
        you_do_not_have_any_indian_tobacco = 'You do not have any indian tobacco!',
    },
    primary = {
        your_dealer_reputation_is = 'Your dealer reputation is ',
        your_dealer_reputation_increased_to = 'Your dealer reputation increased to ',
    },
    success = {
        xp_now = ' EXP is now ',
        you_distroyed_the_plant = 'you distroyed the plant',
        you_harvest = 'You harvest ',
        indian_tobacco = ' Indian Tobacco',
    },
    info = {
        --var = 'text goes here',
    },
    menu = {
        open = 'Open ',
        indian_trader_menu = "| Indian Trader Menu |",
    },
    commands = {
        check_your_dealer_reputation = "check your dealer reputation ",
    },
    progressbar = {
        --var = 'text goes here',
    },
    text = {
        thirst = 'Thirst: ',
        hunger = '% - Hunger: ',
        growth = 'Growth: ',
        quality = '% -  Quality: ',
        destroy_plant = 'Destroy Plant [G]',
        water_feed = 'Water [G] : Feed [J]',
        quality2 = '[Quality: ',
        harvest = 'Harvest [E]',
    },
    header = {
        trade_10_indian_tobacco = "Trade 10 Indian Tobacco",
        trade_10_tobacco_for_1_indian_cigars = "trade 10 tobacco for 1 indian cigars",
        trade_50_indian_tobacco = "Trade 50 Indian Tobacco",
        trade_50_tobacco_for_5_indian_cigars = "trade 50 tobacco for 5 indian cigars",
        trade_100_indian_tobacco = "Trade 100 Indian Tobacco",
        trade_10_tobacco_for_10_indian_cigars = "trade 10 tobacco for 10 indian cigars",
        open_trader_shop = "Open Trader Shop",
        buy_indian_trade_items = "buy indian trade items",
        close_menu = "Close Menu",
        indian_trader = "Indian Trader",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('error.horse_too_full')