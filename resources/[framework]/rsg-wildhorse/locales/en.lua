local Translations =
{
    error =
    {
        something_went_wrong = 'Something went wrong!',
        you_dont_have_any_horse_to_sell = "You don\'t have any horse to sell!",
        owned_horse = 'Unfortunately you can\'t sell your own horse!',
        not_tamed = 'You can only sell a wild horse you tamed by yourself!',
        you_need_to_wait = 'Necesitas esperar ',
        before_selling_another_wild_horse = ' before selling another Wild Horse!',        
    },
    success =
    {
        you_have_sold_all_your_horse_for = 'You have sold the horse for $',
    },
    primary =
    {
        var = 'text goes here',
    },
    menu =
    {
        open = 'Open ',
        sell_stored_horse = 'Sell a Wild Horse',
        sellwildhorse_menu = 'Wild Horses Menu',
        open_sellwildhorse_shop = 'Open Wild Horses Shop',
        close_menu = 'Close Menu',
        wild_horse = 'WILD HORSE 🐎',
        horse_sold_for = ' Horse sold for ',
        sell_wild_horse_menu = 'Sell Wild Horse',
        horse_seller_menu = 'Horse Seller',
    },
    commands =
    {
        var = 'text goes here',
    },
    progressbar =
    {
        checking_horse = 'Checking Horse ',
    },
    text =
    {
        sell_store_horse = 'And see what I give you!',
        sellwildhorse_shop =  'Sell Wild Horses Shop',
    }
}

Lang = Locale:new(
{
    phrases = Translations,
    warnOnMissing = true
})