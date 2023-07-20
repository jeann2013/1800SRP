local Translations = {
    error = {
        you_dont_have_this_blueprint_original = "no tienes este plano original",
        need_more_crafting_items = 'necesita más elementos de elaboración!',
        you_dont_have_enough_cash_to_do_that = 'usted no tiene suficiente dinero para hacer eso!',
        not_enough_reputation_repneeded_required = 'no hay suficiente reputación %{repneeded} requerido!',
    },
    success = {
        taken_for_the_copy = '$  %{copycost} tomado para la copia',
        crafting_successful = 'elaboración exitosa',
        not_enough_crafting_reputation_to_make_this = '¡No hay suficiente reputación para la elaborar esto!'
    },
    primary = {
        your_crafting_rep_is = 'Su nivel de elaboración es: ',
        your_crafting_reputation_increased_to  = 'Tu reputación como artesano aumentó a '
    },
    menu = {
        open = 'Abrir ',
        crafting_menu = 'Menú de elaboración',
        craft_shovel = 'Elaborar Pala',
        craft_axe = 'Elaborar Hacha',
        craft_pickAxe = 'Elaborar Pico',
        craft_bow_improved = 'Elaborar Arco Mejorado',
        craft_bow = 'Elaborar Arco',
        craft_knife = 'Elaborar Cuchillo',
        craft_machete = 'Elaborar Machete',
        craft_bag = 'Elaborar Bolso',
    },
    commands = {
        get_your_crafting_reputation = 'Consigue tu reputación como artesano',
    },
    progressbar = {
      making_copy_of = 'Haciendo una copia de ',
      copy = 'copia-',
      crafting_shovel = 'Creando una pala..',
      crafting_axe= 'Creando una Hacha..',
      crafting_pickAxe = 'Creando un Pico..',
      crafting_bow_improved = 'Creando un arco mejorado..',
      crafting_bow = 'Creando un Arco..',
      crafting_weapon_melee_knife = 'Creando un Cuchillo..',
      crafting_weapon_melee_machete = 'Creando un Machete..',
      crafting_bag = 'Creando un Bolso..',
    },
    text = {
      xbpc_xsteel_xwood = '1x BPC / 3x Acero / 2x Madera',
      xbpc_weapon_bow_improved = '1 x Arco / 1x Acero / 1x Madera',
      xbpc_weapon_bow = '1x Piel de ciervo * / 1x Acero / 1x Madera',      
      xbpc_weapon_melee_knife = '5x Aceros / 1x Madera',
      xbpc_weapon_melee_machete = '7x Aceros / 2x Maderas',
      text_bag = '4x Aceros / 4x Madera / 2x Pieles de ciervo',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end