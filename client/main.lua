local inviteActive = false

RegisterNetEvent('showInvite')
AddEventHandler('showInvite', function(source, job)
    if not inviteActive then
        inviteActive = true
        local jobName = job
        -- Show the invite UI.
        SendNUIMessage({
            type = 'showInvite',
            jobName = jobName
        })

        -- Listen for the accept/decline events.
        RegisterNUICallback('acceptInvite', function()
            inviteActive = false
            TriggerServerEvent('acceptInvite', source, jobName)
        end)

        RegisterNUICallback('declineInvite', function()
            inviteActive = false
            TriggerServerEvent('declineInvite', source)
        end)
    end
end)

RegisterNetEvent('hideInvite')
AddEventHandler('hideInvite', function()
    inviteActive = false

    -- Hide the invite UI.
    SendNUIMessage({
        type = 'hideInvite'
    })
end)
