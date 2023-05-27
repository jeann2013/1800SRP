local Translations = {
    error = {
        not_enough_cash = "you don\'t have enought cash for that!",
        you_already_have_house = 'You already have a house!',
        you_dont_have_enough_cash = 'You don\'t have enough cash!',
    },
    success = {
        unlocked = 'Unlocked!',
        locked = 'Locked!',
        house_purchased = 'House purchased!',
        house_sold = 'House sold!',
        land_tax_credit_added_for = 'Land Tax credit added for ',
        removed_from_your_houses_guest_list = ' removed from your house\'s Guest list!',
    },
    primary = {
        your_land_tax_credit_is_now = 'Your Land Tax credit is now $',
    },
    menu = {
        talk_to = 'Talk to ',
        estate_agent = 'Estate Agent',
        buy_property = 'Buy Property',
        sell_property = 'Sell Property',
        close_menu = 'Close Menu',
        buy_house = 'Buy House',
        price = 'Price $',
        land_tax = ' : Land Tax $',
        sell_house = 'Sell House',
        sell_price = 'Sell Price $',
        estate_agent = 'Estate Agent',
    }, 
    header = {
        owner_house_menu = 'Owner House Menu',
        open_storage = 'Open Storage',
        outfits = 'Outfits',
        land_tax = 'Land Tax',
        house_guests = 'House Guests',
        guest_house_menu = 'Guest House Menu',
        open_storage = 'Open Storage',        
        outfits = 'Outfits',
        land_tax_credit = 'Land Tax Credit',
        add_credit = 'Add Credit',
        add_house_guest = 'Add House Guest',
        close = 'Close',
    },
    text = {
        amount = 'Amount',
        add_credit = "Add Credit",
        house_guests = 'House Guests',
        add_guest = 'Add Guest',
        remove_guest = 'Remove Guest',
        citizen_id = 'Citizen ID',        
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
