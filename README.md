# gg-notifications
Notification System Built For QBCore Framework!

🚀 QBCore Notifications Conversion Guide (gg-notifications)

This guide will walk you through how to properly convert your FiveM server to use gg-notifications instead of the default QBCore:Notify. Following these steps will ensure a seamless transition without issues or duplicate notifications.

📌 Step 1: Install gg-notifications

1️⃣ Download gg-notifications and place it in your resources/[qb] folder.
(extract the folder then take out gg-inventory that's inside the main)
2️⃣ Ensure the folder name is exactly gg-notifications.
3️⃣ Add gg-notifications to your server.cfg to start it automatically:

ensure gg-notifications

4️⃣ Restart your server to load the resource:

restart gg-notifications

✅ Now gg-notifications is installed and ready to be used.

📌 Step 2: Convert All Notifications to gg-notifications

1️⃣ Update QBCore Functions

📂 Open qb-core/client/functions.lua and find the existing QBCore.Functions.Notify function. Replace it with this:

function QBCore.Functions.Notify(text, texttype, length, icon)
    TriggerEvent('gg-notifications:client:SendAlert', {
        type = texttype or 'info',
        title = "Notification",
        message = text,
        duration = length or 5000
    })
end

✅ Now, all scripts that call QBCore.Functions.Notify() will use gg-notifications.

2️⃣ Replace All QBCore:Notify Calls

📂 Search for all instances of:

TriggerClientEvent('QBCore:Notify')

✅ Replace with:

TriggerClientEvent('QBCore:Client:Notify')

🚀 Now, all old notification calls will be properly redirected.

📌 Step 3: Verify That Everything Works

1️⃣ Restart the server:

ensure qb-core
ensure gg-notifications

4️⃣ Use the /testnotify command (if applicable) to verify notifications work correctly.

✅ If notifications appear correctly in gg-notifications, the conversion is complete!

📌 Step 4: Fix Stress Notifications

📂 Open qb-hud/server.lua and replace all instances of:

TriggerClientEvent('QBCore:Notify', src, Lang:t('notify.stress_gain'), 'error', 1500)

✅ With:

TriggerClientEvent('QBCore:Client:Notify', src, Lang:t('notify.stress_gain'), 'error', 1500)

🚀 Now, stress notifications will appear in gg-notifications.


🚀 Congratulations! Your FiveM server is now fully using gg-notifications. 🎉

If you encounter any issues, double-check the steps and ensure gg-notifications is running correctly. 🎯🔥


