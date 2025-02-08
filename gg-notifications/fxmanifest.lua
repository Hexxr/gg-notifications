fx_version 'cerulean'
game 'gta5'

Author 'Hexxr'
description 'Modern QBCore Notification System'
version '1.0.0'

ui_page 'html/index.html'

client_scripts {
    'client/main.lua'
}

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

files {
    'html/index.html',
    'html/notification.ogg'
}

lua54 'yes'