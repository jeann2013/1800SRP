local Translations = {
    error = {
        you_are_not_authorised = 'you are not authorised!',
        you_must_be_holding_weapon = 'you must be holding the weapon!',
        you_dont_have_the_required_items = "You don\'t have the required items!",
    },
    success = {
        weapon_cleaned = 'weapon cleaned',
        crafting_finished = 'crafting finished',
    },
    primary = {
        var = 'text goes here',
    },
    menu = {
        open = 'Open ',
        weapon_crafting = 'Weapon Crafting',
        weapon_parts_crafting = 'Weapon Parts Crafting',
        weaponsmith_storage = 'Weaponsmith Storage',
        job_management = 'Job Management',
        close_menu = '>> Close Menu <<',
        revolver_crafting = 'Revolver Crafting',
        pistol_crafting = 'Pistol Crafting',
        repeater_crafting = 'Repeater Crafting',
        rifle_crafting = 'Rifle Crafting',
        shotgun_crafting = 'Shotgun Crafting',
        menu_steel = 'Steel',
        menu_wood = 'Wood',
        menu_trigger = 'Trigger',
        menu_hammer = 'Hammer',
        menu_barrel = 'Barrel',
        menu_frame = 'Frame',
        menu_grip = 'Grip',
        menu_cylinder = 'Cylinder',        
        menu_spring = 'Spring',   
        menu_stock = 'Stock',  
        menu_bolt = 'Bolt'  
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
        crafting_a = 'Crafting a ',
    },
    text = {
        txt_steel = ' Steel',
        txt_wood = ' Wood',
        txt_trigger = ' Trigger',
        txt_hammer = ' Hammer',
        txt_barrel = ' Barrel',
        txt_frame = ' Frame',
        txt_grip = ' Grip',
        txt_cylinder = ' Cylinder',        
        txt_spring = ' Spring',   
        txt_stock = ' Stock',  
        txt_bolt = ' Bolt'       
        txt_gives_you = ' gives you ',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
