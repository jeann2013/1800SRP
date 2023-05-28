local Translations = {
    error = {
        not_enough_cash = "¡no tienes suficiente efectivo para eso!",
        you_already_have_house = '¡Ya tienes una casa!',
        you_dont_have_enough_cash = '¡No tienes suficiente efectivo!',
    },
    success = {
        unlocked = 'Desbloqueado!',
        locked = 'Bloqueado!',
        house_purchased = '¡Casa comprada!',
        house_sold = '¡Casa vendida!',
        land_tax_credit_added_for = 'Crédito de impuesto territorial agregado para ',
        remove_from_your_houses_guest_list = ' ¡eliminado de la lista de invitados de su casa!',
    },
    primary = {
        your_land_tax_credit_is_now = 'Su crédito fiscal territorial ahora es $',
    },
    menu = {
        talk_to = 'Hablar con',
        estate_agent = 'Agente inmobiliario',
        buy_property = 'Comprar Propiedad',
        sell_property = 'Vender Propiedad',
        close_menu = 'Cerrar Menú',
        buy_house = 'Comprar casa',
        price = 'Precio $',
        land_tax = ' : Impuesto sobre la tierra $',
        sell_house = 'Vender Casa',
        precio_venta = 'Precio de venta $',        
    }, 
    header = {
        own_house_menu = 'Menú de la Casa del Propietario',
        open_storage = 'Almacenamiento abierto',
        outfits = 'Trajes',
        land_tax = 'Impuesto sobre la tierra',
        house_guests = 'Huéspedes de la casa',
        guest_house_menu = 'Menú de la casa de huéspedes',
        open_storage = 'Almacenamiento abierto',            
        land_tax_credit = 'Land Tax Credit',
        add_credit = 'Añadir crédito',
        add_house_guest = 'Agregar invitado a la casa',
        close = 'Cerrar',
    },
    text = {
        amount = 'Monto',
        add_credit = "Añadir crédito",
        house_guests = 'Huéspedes de la casa',
        add_guest = 'Agregar invitado',
        remove_guest = 'Eliminar invitado',
        citizen_id = 'ID de ciudadano',        
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end