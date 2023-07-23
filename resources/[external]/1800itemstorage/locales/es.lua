local Translations = {
  error = {     
  },
  success = {      
  },
  primary = {      
  },
  menu = {
    tool_bag = "Bolso",      
    tool_bag_big = 'Bolso Grande',
  },
  commands = {      
  },  
}

if GetConvar('rsg_locale', 'en') == 'es' then
  Lang = Locale:new({
      phrases = Translations,
      warnOnMissing = true,
      fallbackLang = Lang,
  })
end
