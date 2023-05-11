if Config.framework == 'qbcore' then
    local QBCore = exports['qb-core']:GetCoreObject()

    RegisterServerEvent("adddmoney:addMoney")
    AddEventHandler("adddmoney:addMoney", function(amount)
        local src = source

        local player = QBCore.Functions.GetPlayer(src)
        if player then
            player.Functions.AddMoney("cash", amount)
        end
    end)

elseif Config.framework == 'esx' then
    local ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj)
        ESX = obj
    end)

    RegisterServerEvent("adddmoney:addMoney")
    AddEventHandler("adddmoney:addMoney", function(amount)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        if xPlayer then
            xPlayer.addMoney(amount)
        end
    end)

elseif Config.framework == 'standalone' then
    local ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj)
        ESX = obj
    end)

    RegisterServerEvent("adddmoney:addMoney")
    AddEventHandler("adddmoney:addMoney", function(amount)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        if xPlayer then
            xPlayer.addMoney(amount)
        end
    end)

elseif Config.framework == 'vrp' then
    RegisterServerEvent("adddmoney:addMoney")
    AddEventHandler("adddmoney:addMoney", function(amount)
        local user_id = vRP.getUserId({source})
        if user_id then
            vRP.giveMoney({user_id, amount})
        end
    end)
end
