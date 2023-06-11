fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

author 'MOVZX'
description 'Use the Bird Post to send letters to anyone! This mod requires rsg-core, bm-input, and bm-menu.'

ui_page('html/ui.html')

shared_scripts {
    '@rsg-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua',
    'locales/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

client_scripts {
    'client/client.lua'
}

files {
    'html/ui.html',
    'html/style.css',
    'html/script.js',
    'html/bg.png'
}

lua54 'yes'