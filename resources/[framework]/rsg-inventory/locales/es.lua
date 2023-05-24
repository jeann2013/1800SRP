--[[
English base language translation for qb-inventory
Translation done by wanderrer (Martin Riggs#0807 on Discord)
]]--
local Translations = {
    progress = {
        ["crafting"] = "Elaboración...",
        ["snowballs"] = "recogiendo bolas de nieve..",
    },
    notify = {
        ["failed"] = "Fallido",
        ["canceled"] = "Cancelado",
        ["vlocked"] = "Vehículo bloqueado",
        ["notowned"] = "¡No eres dueño de este artículo!",
        ["missitem"] = "¡No tienes este artículo!",
        ["nonb"] = "¡Nadie cerca!",
        ["noaccess"] = "No accesible",
        ["nosell"] = "No puedes vender este artículo...",
        ["itemexist"] = "¿¿El artículo no existe??",
        ["notencash"] = "No tienes suficiente efectivo..",
        ["noitem"] = "No tienes los elementos correctos..",
        ["gsitem"] = "¿No puedes darte un artículo?",
        ["tftgitem"] = "¡Estás demasiado lejos para dar artículos!",
        ["infound"] = "¡El elemento que intentaste dar no se encontró!",
        ["iifound"] = "¡Se encontró un artículo incorrecto, inténtalo de nuevo!",
        ["gitemrec"] = "Usted Recibió",
        ["gitemfrom"] = "Desde",
        ["gitemyg"] = "Me diste",
        ["gitinvfull"] = "¡El inventario de otros jugadores está lleno!",
        ["giymif"] = "¡Tu inventario está lleno!",
        ["gitydhei"] = "No tienes suficiente del artículo",
        ["gitydhitt"] = "No tienes suficientes elementos para transferir",
        ["navt"] = "No es un tipo válido..",
        ["anfoc"] = "Argumentos no rellenados correctamente..",
        ["yhg"] = "Has dado",
        ["cgitem"] = "¡No puedo dar el artículo!",
        ["idne"] = "El artículo no existe",
        ["pdne"] = "El jugador no está en línea",
    },
    inf_mapping = {
        ["opn_inv"] = "Abrir inventario",
        ["tog_slots"] = "Alterna las ranuras de combinación de teclas",
        ["use_item"] = "Usa el elemento en la ranura",
    },
    menu = {
        ["vending"] = "Máquina expendedora",
        ["craft"] = "artesanía",
        ["o_bag"] = "Bolsa abierta",
    },
    interaction = {
        ["craft"] = "~g~E~w~ - Elaboración",
    },
    label = {
        ["craft"] = "Elaboración",
        ["a_craft"] = "Creación de archivos adjuntos",
    },
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end