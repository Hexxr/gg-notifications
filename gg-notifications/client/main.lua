local QBCore = exports['qb-core']:GetCoreObject()

local function SendNotification(data)
    if not data then
        return
    end

    -- Ensure `data.type` exists, or use a default
    local notificationType = data.type or 'info'
    local notificationTitle = data.title or 'Notification'
    local notificationMessage = data.message or 'No message provided'
    local notificationDuration = data.duration or Config.DefaultDuration
    local notificationPosition = data.position or Config.Position
    local notificationIcon = (Config and Config.Types and Config.Types[notificationType]) and Config.Types[notificationType].icon or nil

    SendNUIMessage({
        action = 'notification',
        type = notificationType,
        title = notificationTitle,
        message = notificationMessage,
        duration = notificationDuration,
        position = notificationPosition,
        icon = notificationIcon
    })
end

-- Export the function for other resources to use
exports('SendNotification', SendNotification)

-- ✅ Register Event to Receive Notifications
RegisterNetEvent('gg-notifications:client:SendAlert')
AddEventHandler('gg-notifications:client:SendAlert', function(data)
    SendNotification(data)
end)

-- Register command for testing
RegisterCommand('testnotify', function()
    SendNotification({
        type = 'success',
        title = 'Test Notification',
        message = 'This is a test notification!',
        duration = 5000
    })
end)