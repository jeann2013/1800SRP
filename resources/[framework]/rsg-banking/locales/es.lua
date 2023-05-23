local Translations = {
    error = {
        not_give = "No se pudo dar el artículo a la identificación dada.",
        givecash = "Uso /givecash [ID] [CANTIDAD]",
        id_equivocado = "Identificación incorrecta.",
        muerto = "Estás muerto LOL.",
        too_far_away = "Estás demasiado lejos lmfao.",
        not_enough = "No tienes esta cantidad.",
        invalid_amount = "Cantidad dada no válida"
    },
    success = {
        debit_card = "Ha solicitado con éxito una tarjeta de débito.",
        cash_deposit = "Realizó con éxito un depósito en efectivo de $%{value}.",
        cash_withdrawal = "Realizó con éxito un retiro de efectivo de $%{value}.",
        updated_pin = "Ha actualizado con éxito el pin de su tarjeta de débito.",
        Savings_deposit = "Realizó con éxito un depósito de ahorro de $%{value}.",
        Savings_withdrawal = "Realizó con éxito un retiro de ahorros de $%{value}.",
        open_savings = "Ha abierto con éxito una cuenta de ahorros.",
        give_cash = "Otorgó con éxito $%{cash} al ID %{id}",
        receive_cash = "Recibido con éxito $%{cash} de ID %{id}"
    },
    info = {
        bank_blip = "Banco",
        access_bank_target = "Acceder al banco",
        access_bank_key = "[E] - Acceder al Banco",
        current_to_savings = "Transferir Cuenta Corriente a Ahorros",
        Savings_to_current = "Transferir Ahorros a Cuenta Corriente",
        deposit = "Depositar $%{amount} en la cuenta corriente",
        retirar = "Retirar $%{amount} de la cuenta corriente",
    },
    command = {
        givecash = "Dar dinero al jugador(a)"
    }
}

if GetConvar('rsg_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
