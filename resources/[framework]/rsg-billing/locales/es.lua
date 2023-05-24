local Translations = {
    error = {
      you_are_not_part_society = '¡no eres parte de una sociedad!',
      you_not_have_enough_money = 'No tienes suficiente dinero',
      did_not_find_player = 'No se encontró el jugador',
    },
    success = {
      bill_has_been_paid_for = 'La factura ha sido pagada',
       bill_with_id = 'Factura con ID: ',
       has_been_deleted = 'ha sido eliminado',
       bill_sent = 'Factura enviada',
       you_received = 'Usted recibió un $',
       bill = 'factura',
    },
    primary = {
      bill_canceled = '¡Factura cancelada!',
       bill_not_canceled = '¡Factura no cancelada!',
    },
    menu = {
		  var = 'text goes here',
    },
    commands = {
      opens_the_billing_menu = "Abre el menú de facturación",
    },
    progressbar = {
		  var = 'text goes here',
    },
    header = {
      billing_menu = 'Menú de facturación',
      send_bill = 'Enviar factura',
      view_your_bills = 'Ver sus facturas',
      cancel_sent_bill = 'Cancelar factura enviada',
      cerrar = 'Cerrar',
      create_bill = "Crear factura",
      unpaid_bills_id = 'Facturas sin pagar | IDENTIFICACIÓN: ',
      ciudadano_id = 'ID de ciudadano: ',
      cantidad = 'Cantidad: ',
      cancel_bill = "Cancelar factura",
      bill_id = "ID de la factura: ",
    },
    text = {
      playerid = "ID de jugador",
      bill_price = "Precio de la factura ($)",
      bill_type = "Tipo de factura",
      bill_as_society = "Factura como Sociedad",
      bill_as_player = "Facturar como jugador",
      id = 'ID : ',
      from = ' | Desde : ',
      to = ' | Para : ',
      submit = "Enviar",
      yes = "Si",
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
  Lang = Locale:new({
      phrases = Translations,
      warnOnMissing = true,
      fallbackLang = Lang,
  })
end