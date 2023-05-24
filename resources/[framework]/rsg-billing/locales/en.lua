local Translations = {
    error = {
      you_are_not_part_society = 'you are not part of a society!',
      you_not_have_enough_money = 'You not have enough money',
      did_not_find_player = 'Did not find player',
    },
    success = {
      bill_has_been_paid_for = 'Bill has been paid for ',   
      bill_with_id = 'Bill with ID: ', 
      has_been_deleted = ' has been deleted',
      bill_sent = 'Bill Sent',
      you_received = 'You received a $',
      bill = ' bill',      
    },
    primary = {
      bill_canceled = 'Bill Canceled!',
      bill_not_canceled = 'Bill not canceled!',
    },
    menu = {
		var = 'text goes here',
    },
    commands = {
      opens_the_billing_menu = "Opens the Billing Menu",
    },
    progressbar = {
		var = 'text goes here',
    },
    header = {
      billing_menu = 'Billing Menu',
      send_bill = 'Send Bill',
      view_your_bills = 'View Your Bills',
      cancel_sent_bill = 'Cancel Sent Bill',
      close = 'Close',
      create_bill = "Create Bill",
      unpaid_bills_id = 'Unpaid Bills | ID: ',
      citizen_id = 'Citizen ID: ',
      amount = 'Amount: ',
      cancel_bill = "Cancel Bill",
      bill_id = "Bill ID : ",
    },
    text = {
      playerid = "PlayerID",
      bill_price = "Bill Price ($)",
      bill_type = "Bill Type",
      bill_as_society = "Bill as Society",
      bill_as_player = "Bill as Player",
      id = 'ID : ',
      from = ' | From : ',
      to = ' | To : ',
      submit = "Submit",
      yes = "Yes",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
