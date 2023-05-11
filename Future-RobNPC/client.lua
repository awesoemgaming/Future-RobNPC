if Config.framework == 'qbcore' then
    local aimingAtNPC = false
    local QBCore = exports['qb-core']:GetCoreObject()
    local canrob = true

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            
            local playerPed = PlayerPedId()
            local currentWeapon = GetSelectedPedWeapon(playerPed)
            
            if canrob == true and IsPedAPlayer(playerPed) and IsPedArmed(playerPed, 7) and currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
                local hit, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                
                if hit and canrob == true and IsPedHuman(entity) and not IsPedAPlayer(entity) then
                    aimingAtNPC = true
                    local npcPed = entity
                    
                    SetBlockingOfNonTemporaryEvents(npcPed, true)
                    SetPedFleeAttributes(npcPed, 0, false)
                    SetPedCombatAttributes(npcPed, 17, true)
                    SetPedCombatAttributes(npcPed, 46, true)
                    
                    TaskHandsUp(npcPed, -1, playerPed, -1, true)
                    Citizen.Wait(5000)
                    TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, -8.0, -1, 1, 0, false, false, false)
                    ClearPedTasks(npcPed)
                    local amount = math.random(Config.minamount, Config.maxamount)
                    if amount <= 0 then
                        QBCore.Functions.Notify(Config.nomoneymsg)
                        return
                    end

                    TriggerServerEvent("adddmoney:addMoney", amount)
                    QBCore.Functions.Notify("You robbed him of $" .. amount)
                    canrob = false
                    Citizen.Wait(Config.cooldown)
                    canrob = true
                else
                    aimingAtNPC = false
                end
            else
                aimingAtNPC = false
            end
        end
    end)

elseif Config.framework == 'esx' then
    local aimingAtNPC = false
    local ESX = nil
    local canrob = true

    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            
            local playerPed = PlayerPedId()
            local currentWeapon = GetSelectedPedWeapon(playerPed)
            
            if canrob == true and IsPedAPlayer(playerPed) and IsPedArmed(playerPed, 7) and currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
                local hit, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                
                if hit and canrob == true and IsPedHuman(entity) and not IsPedAPlayer(entity) then
                    aimingAtNPC = true
                    local npcPed = entity
                    
                    SetBlockingOfNonTemporaryEvents(npcPed, true)
                    SetPedFleeAttributes(npcPed, 0, false)
                    SetPedCombatAttributes(npcPed, 17, true)
                    SetPedCombatAttributes(npcPed, 46, true)
                    
                    TaskHandsUp(npcPed, -1, playerPed, -1, true)
                    Citizen.Wait(5000)
                    TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, -8.0, -1, 1, 0, false, false, false)
                    ClearPedTasks(npcPed)
                    local amount = math.random(Config.minamount, Config.maxamount)
                    if amount <= 0 then
                        ESX.ShowNotification(Config.nomoneymsg)
                        return
                    end

                    TriggerServerEvent("adddmoney:addMoney", amount)
                    ESX.ShowNotification("You robbed him of $" .. amount)
                    canrob = false
                    Citizen.Wait(Config.cooldown)
                    canrob = true
                else
                    aimingAtNPC = false
                end
            else
                aimingAtNPC = false
            end
        end
    end)

elseif Config.framework == 'standalone' then
    local aimingAtNPC = false
    local canrob = true

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            
            local playerPed = PlayerPedId()
            local currentWeapon = GetSelectedPedWeapon(playerPed)
            
            if canrob == true and IsPedAPlayer(playerPed) and IsPedArmed(playerPed, 7) and currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
                local hit, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                
                if hit and canrob == true and IsPedHuman(entity) and not IsPedAPlayer(entity) then
                    aimingAtNPC = true
                    local npcPed = entity
                    
                    SetBlockingOfNonTemporaryEvents(npcPed, true)
                    SetPedFleeAttributes(npcPed, 0, false)
                    SetPedCombatAttributes(npcPed, 17, true)
                    SetPedCombatAttributes(npcPed, 46, true)
                    
                    TaskHandsUp(npcPed, -1, playerPed, -1, true)
                    Citizen.Wait(5000)
                    TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, -8.0, -1, 1, 0, false, false, false)
                    ClearPedTasks(npcPed)
                    local amount = math.random(Config.minamount, Config.maxamount)
                    if amount <= 0 then
                        ShowNotification(Config.nomoneymsg)
                        return
                    end

                    TriggerServerEvent("adddmoney:addMoney", amount)
                    ShowNotification("You robbed him of $" .. amount)
                    canrob = false
                    Citizen.Wait(Config.cooldown)
                    canrob = true
                else
                    aimingAtNPC = false
                end
            else
                aimingAtNPC = false
            end
        end
    end)

    function ShowNotification(text)
        SetNotificationTextEntry("STRING")
        AddTextComponentString(text)
        DrawNotification(false, false)
    end

elseif Config.framework == 'vrp' then
    local aimingAtNPC = false
    local canrob = true

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            
            local playerPed = PlayerPedId()
            local currentWeapon = GetSelectedPedWeapon(playerPed)
            
            if canrob == true and IsPedAPlayer(playerPed) and IsPedArmed(playerPed, 7) and currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
                local hit, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                
                if hit and canrob == true and IsPedHuman(entity) and not IsPedAPlayer(entity) then
                    aimingAtNPC = true
                    local npcPed = entity
                    
                    SetBlockingOfNonTemporaryEvents(npcPed, true)
                    SetPedFleeAttributes(npcPed, 0, false)
                    SetPedCombatAttributes(npcPed, 17, true)
                    SetPedCombatAttributes(npcPed, 46, true)
                    
                    TaskHandsUp(npcPed, -1, playerPed, -1, true)
                    Citizen.Wait(5000)
                    TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, -8.0, -1, 1, 0, false, false, false)
                    ClearPedTasks(npcPed)
                    local amount = math.random(Config.minamount, Config.maxamount)
                    if amount <= 0 then
                        TriggerEvent("Notify","negado",Config.nomoneymsg)
                        return
                    end

                    TriggerServerEvent("adddmoney:addMoney", amount)
                    TriggerEvent("Notify","sucesso","You robbed him of $" .. amount)
                    canrob = false
                    Citizen.Wait(Config.cooldown)
                    canrob = true
                else
                    aimingAtNPC = false
                end
            else
                aimingAtNPC = false
            end
        end
    end)
end
