local Translations =
{
    desc =
    {
        ["prompt_desc"] = "Publicación de aves",
        ["prompt_button"] = "Recuperar carta",
        ["blip_name"] = "Publicación de pájaros",
        ["send_button_free"]= "Enviar carta",
        ["send_button_paid"]= "Enviar carta por $%{lPrice}",
        ["send_message_header"]= "Enviar una carta",
        ["recipient"] = "Destinatario",
        ["subject"] = "Asunto",
        ["message"] = "¡Escribe tu mensaje aquí!",
        ["message_prefix"] = "Publicación de aves"
    },
    info =
    {
        ["bird_approaching"] = "¡Se te acerca un poste de pájaros!",
        ["wait_for_bird"] = "¡Por favor, espere a que Bird Post se le acerque!",
        ["inside_building"] = "¡Por favor, sal del edificio, el pájaro no puede alcanzarte!",
    },
    error =
    {
        ["send_to_self"] = "¡No puedes enviarte cartas a ti mismo!",
        ["player_undisponible"] = "¡La persona objetivo está fuera del área!",
        ["player_on_horse"] = "¡Por favor, desmonte primero!",
        ["cancel_send"] = "¡Envío de carta cancelado!",
        ["insufficient_balance"] = "¡No tienes suficiente efectivo!",
        ["no_message"] = "¡No hay mensajes disponibles para ti!",
        ["delete_fail"] = "¡No se pudo eliminar el mensaje!",
        ["delivery_fail1"] = "¡Has decidido no recoger la carta!",
        ["delivery_fail2"] = "¡El pájaro se cansó y decidió irse!",
        ["delivery_fail3"] = "¡Puedes recuperar la carta en la oficina de correos local!",
        ["send_receiver"] = "¡No puedes escribir una carta mientras esperas que llegue Bird Post!",
        ["wait_ between_send"] = "¡Por favor, espere %{tDelay} segundos antes de enviar otra carta!",
        you_need_add_people_your_addressbook = "Necesita agregar personas a su libreta de direcciones",
        the_bird_got_away_error = '¡El pájaro se escapó!',          
    },
    success =
    {
        ["letter_delivered"] = "Letter sent to %{pName} successfully!",
        ["delete_success"] = "Message deleted successfully!"
        new_person_successfuly = "New Person add Successfuly",
    },
    command = {
        your_personal_addressbook = 'Su libreta personal de direcciones',
    },
    header = {
        telegram_menu = "| Menú Telegrama |",
        read_messages = "📥 | Leer mensajes",
        read_your_telegram_messages = "leer sus mensajes de telegrama",
        send_telegram = "📤 | Enviar Telegrama",
        close_menu = "Cerrar Menú",
        address_book_header = "| Libreta de direcciones |",
        view_addressbook = "📝 | Ver libreta de direcciones",
        add_new_person = "➕ | Agregar nueva persona",
        remove_person = "❌ | Eliminar Persona",
        remove_person_from_your_addressbook = "Eliminar persona de su libreta de direcciones", 
    },
    text = {
        send_telegram_another_player = "enviar un telegrama a otro jugador",
        recipient_text = "Destinatario",
        subject_menu = 'asunto',
        add_your_message_here = 'añade tu mensaje aquí',
        see_all_of_person_my_addressbook = "Ver todas las personas en mi libreta de direcciones",
        add_new_person_your_addressbook = "Agregar nueva persona a su libreta de direcciones",
        remove_text = "Eliminar",
    },
    inputs = {
        name_input = 'Nombre',
        citizenid_input = 'CitizenId',
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end