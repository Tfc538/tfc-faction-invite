local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('invitePlayer')
AddEventHandler('invitePlayer', function(target, job)
    local source = source
    local targetPlayer = QBCore.Functions.GetPlayer(target)
    if targetPlayer then
        TriggerClientEvent('showInvite', targetPlayer.source, source, job)
    end
end)

RegisterServerEvent('acceptInvite')
AddEventHandler('acceptInvite', function(source, job)
    local player = QBCore.Functions.GetPlayer(source)
    if player then
        player.Functions.SetJob(job, 0)
        TriggerClientEvent('hideInvite', source)
    end
end)

RegisterServerEvent('declineInvite')
AddEventHandler('declineInvite', function(source)
    TriggerClientEvent('hideInvite', source)
end)

-- Commands for testing purposes.
QBCore.Commands.Add("invite", "Invite a player to your job/gang", function(source, args)
    local target = tonumber(args[1])
    local job = args[2]
    if target and job then
        TriggerClientEvent('showInvite', target, source, job)
    else
        TriggerClientEvent('chatMessage', source, "SYSTEM", "Invalid arguments. Usage: /invite [player id] [job name]")
    end
end)

QBCore.Commands.Add("acceptinvite", "Accept a job/gang invite", function(source, args)
    TriggerServerEvent('acceptInvite', source, args[1])
end)

QBCore.Commands.Add("declineinvite", "Decline a job/gang invite", function(source, args)
    TriggerServerEvent('declineInvite', source)
end)
