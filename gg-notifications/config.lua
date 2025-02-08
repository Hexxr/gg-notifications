Config = {}

Config.DefaultDuration = 3000 -- Duration in ms
Config.Position = 'top-right' -- top-right, top-left, bottom-right, bottom-left
Config.MaxNotifications = 5 -- Maximum number of notifications shown at once
Config.Sound = true -- Play sound on notification
Config.SoundFile = 'notification.ogg'
Config.Types = {
    ['success'] = {
        icon = 'check-circle',
        color = 'green'
    },
    ['error'] = {
        icon = 'x-circle',
        color = 'red'
    },
    ['info'] = {
        icon = 'info',
        color = 'blue'
    },
    ['warning'] = {
        icon = 'alert-triangle',
        color = 'yellow'
    }
}