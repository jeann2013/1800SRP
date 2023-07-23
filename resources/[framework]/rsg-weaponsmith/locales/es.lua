local Translations = {
    error = {
        you_are_not_authorised = 'No estas autorizado',
        you_must_be_holding_weapon = '¡Debes estar sosteniendo el arma!',
        you_dont_have_the_required_items = "¡No tienes los elementos requeridos!",
    },
    success = {
        weapon_cleaned = 'arma limpiada',
        crafting_finished = 'fabricación terminada',
    },
    primary = {
        var = 'text goes here',
    },
    menu = {
        open = 'Abrir ',
        weapon_crafting = 'Fabricación de armas',
        weapon_parts_crafting = 'Fabricación de piezas de armas',
        weaponsmith_storage = 'Inventario de armeria',
        job_management = 'Gestión de trabajos',
        close_menu = '>> Cerrar menú <<',
        revolver_crafting = 'Fabricación de Revolver',
        pistol_crafting = 'Fabricación de Pistola',
        repeater_crafting = 'Fabricación de Repetidora',
        rifle_crafting = 'Fabricación de Rifle',
        shotgun_crafting = 'Fabricación de Shotgun',
        menu_steel = 'Acero',
        menu_wood = 'madera',
        menu_trigger = 'Gatillo',
        menu_hammer = 'Martillo',
        menu_barrel = 'Cañon',
        menu_frame = 'Carcasa',
        menu_grip = 'Agarre',
        menu_cylinder = 'Cilindro',        
        menu_spring = 'Resorte',   
        menu_stock = 'Culata',  
        menu_bolt = 'Tornillo'  
    },
    commands = {
        var = 'text goes here',
    },
    progressbar = {
        crafting_a = 'Elaborando un(a) ',
    },
    text = {
        txt_steel = ' Acero',
        txt_wood = ' Madera',
        txt_trigger = ' Gatillo',
        txt_hammer = ' Martillo',
        txt_barrel = ' Cañon',
        txt_frame = ' Carcasa',
        txt_grip = ' Agarre',
        txt_cylinder = ' Cilindro',     
        txt_spring = ' Resorte',   
        txt_stock = ' Culata',  
        txt_bolt = ' Tornillo',      
        txt_gives_you = ',te da ',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
  Lang = Locale:new({
      phrases = Translations,
      warnOnMissing = true,
      fallbackLang = Lang,
  })
end
