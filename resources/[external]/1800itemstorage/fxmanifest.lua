fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
description 'rw-itemstorage'

shared_scripts {
    '@rsg-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}
client_scripts {
	'client/main.lua',
}
server_script {
	'server/main.lua',
	'@oxmysql/lib/MySQL.lua',
}
lua54 'yes'
