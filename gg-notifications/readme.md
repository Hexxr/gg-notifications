function QBCore.Functions.Notify(text, texttype, length, icon)
    local convert = {
        ["primary"] = 'info',
        ["police"] = 'lspd',
        ["ambulance"] = 'ems',
    }

    if not texttype then
        texttype = 'info'
    end

    if convert[texttype] then
        texttype = convert[texttype]
    end

    length = length or 5000

    -- Send the notification using gg-notifications
    TriggerEvent('gg-notifications:client:SendAlert', {
        type = texttype,
        title = "Notification",
        message = text,
        duration = length
    })
end