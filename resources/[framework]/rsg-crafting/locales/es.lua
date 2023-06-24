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
        craft_pickAxe = 'Elaborar Pico'
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
    },
    text = {
      xbpc_xsteel_xwood = '1 x BPC / 3 x Acero / 2 x Madera',
      xbpc_weapon_bow_improved = '1 x Arco / 2 x Acero / 2 x Madera',
      xbpc_weapon_bow = '1 x BPC / 1 x Acero / 1 x Madera',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end