Framework = {}

if GetResourceState('qb-core') == 'started' then
    print('^2[sky-stash] Framework QBCore detected and loaded.^7')
    Framework.Core = exports['qb-core']:GetCoreObject()
    Framework.Name = 'QBCore'

    --- Returns the player object from a server ID.
    --- @param source number The server ID of the player.
    --- @return table The player object.
    function Framework.GetPlayer(source)
        return Framework.Core.Functions.GetPlayer(source)
    end

    --- Returns the player's job name.
    --- @param player table The player object.
    --- @return string The job name (e.g., 'police').
    function Framework.GetPlayerJob(player)
        if not player then return 'unemployed' end
        return player.PlayerData.job.name
    end

    --- Returns the player's job grade level.
    --- @param player table The player object.
    --- @return number The grade level.
    function Framework.GetPlayerGrade(player)
        if not player then return 0 end
        return player.PlayerData.job.grade.level
    end

    --- Sends a notification to the client.
    --- @param source number The target player's server ID.
    --- @param message string The main message content.
    --- @param type string The type of notification (e.g., 'error', 'success').
    function Framework.Notify(source, message, type)
        TriggerClientEvent('QBCore:Notify', source, message, type)
    end

elseif GetResourceState('es_extended') == 'started' then
    print('^2[sky-stash] Framework ESX detected and loaded.^7')
    local ESX = exports['es_extended']:getSharedObject()
    Framework.Name = 'ESX'

    --- Returns the player object from a server ID.
    --- @param source number The server ID of the player.
    --- @return table The player object (xPlayer).
    function Framework.GetPlayer(source)
        return ESX.GetPlayerFromId(source)
    end

    --- Returns the player's job name.
    --- @param player table The player object (xPlayer).
    --- @return string The job name (e.g., 'police').
    function Framework.GetPlayerJob(player)
        if not player or not player.job then return 'unemployed' end
        return player.job.name
    end

    --- Returns the player's job grade level.
    --- @param player table The player object (xPlayer).
    --- @return number The grade level.
    function Framework.GetPlayerGrade(player)
        if not player or not player.job then return 0 end
        return player.job.grade
    end

    --- Sends a notification to the client.
    --- @param source number The target player's server ID.
    --- @param message string The main message content.
    --- @param type string The type of notification (e.g., 'error', 'success').
    function Framework.Notify(source, message, type)
        TriggerClientEvent('esx:showNotification', source, message, type)
    end
else
    print('^1[sky-stash] ERROR: No compatible framework (QBCore or ESX) found! Please ensure one is started before this resource.^7')
end