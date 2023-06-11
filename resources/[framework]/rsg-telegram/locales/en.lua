local Translations =
{
    desc =
    {
        ["prompt_desc"] = "Bird Post",
        ["prompt_button"] = "Retrieve Letter",
        ["blip_name"] = "Bird Post",
        ["send_button_free"]= "Send Letter",
        ["send_button_paid"]= "Send Letter for $%{lPrice}",
        ["send_message_header"]= "Send a Letter",
        ["recipient"] = "Recipient",
        ["subject"] = "Subject",
        ["message"] = "Write your message here!",
        ["message_prefix"] = "Bird Post"
    },
    info =
    {
        ["bird_approaching"] = "There's a Bird Post approaching to You!",
        ["wait_for_bird"] = "Please wait for the Bird Post to approaches You!",
        ["inside_building"] = "Please move out from the building, the bird can't reach you!",
    },
    error =
    {
        ["send_to_self"] = "You can't send letter to yourself!",
        ["player_unavailable"] = "Target person is away from the area!",
        ["player_on_horse"] = "Please dismount first!",
        ["cancel_send"] = "Sending letter cancelled!",
        ["insufficient_balance"] = "You don't have enough cash!",
        ["no_message"] = "No messages available for you!",
        ["delete_fail"] = "Failed to delete the message!",
        ["delivery_fail1"] = "You've' decided not to pickup the letter!",
        ["delivery_fail2"] = "The bird got tired and decided to go!",
        ["delivery_fail3"] = "You can retrieve the letter from the local Post Office!",
        ["send_receiving"] = "You can't write a letter while you're waiting for incoming Bird Post!",
        ["wait_between_send"] = "Please wait %{tDelay} seconds before sending another letter!",
        ["you_need_add_people_your_addressbook"] = "You Need To Add People to Your Addressbook",
        ["the_bird_got_away_error"] = 'The bird got away!',                
    },
    success =
    {
        ["letter_delivered"] = "Letter sent to %{pName} successfully!",
        ["delete_success"] = "Message deleted successfully!"
        ["new_person_successfuly"] = "New Person add Successfuly",
    },
    command = {
        ["your_personal_addressbook"] = 'Your Personal Addressbook',
    },
    header = {
        ["telegram_menu"] = "| Telegram Menu |",
        ["read_messages"] = "📥 | Read Messages",
        ["read_your_telegram_messages"] = "read your telegram messages",
        ["send_telegram"] = "📤 | Send Telegram",
        ["close_menu"] = "Close Menu",
        ["address_book_header"] = "| Address Book |",
        ["view_addressbook"] = "📝 | View Addressbook",
        ["add_new_person"] = "➕ | Add New Person",      
        ["remove_person"] = "❌ | Remove Person",  
        ["remove_person_from_your_addressbook"] = "Remove Person From your Addressbook",
        
    },
    text = {
        ["send_telegram_another_player"] = "send a telegram to another player",
        ["recipient_text"] = "Recipient",
        ["subject_menu"] = 'subject',
        ["add_your_message_here"] = 'add your message here',
        ["see_all_of_person_my_addressbook"] = "See All of Person in my Addressbook",
        ["add_new_person_your_addressbook"] = "Add new Person To Your Addressbook",
        ["remove_text"] = "Remove",
    },
    inputs = {
        ["name_input"] = 'Name',
        ["citizenid_input"] = 'CitizenId',
    }
}

Lang = Locale:new
({
    phrases = Translations,
    warnOnMissing = true
})