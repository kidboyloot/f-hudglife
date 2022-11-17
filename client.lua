local loop = true
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(100)
        local ped = PlayerPedId()
        if loop then 
        SendNUIMessage({
            pauseMenu = IsPauseMenuActive(),
            health = GetEntityHealth(ped)-100,
            armor = GetPedArmour(ped),
        })
       end
    end
end)
RegisterCommand('+showhud', function()
    loop = true
    emLoop()
end)

RegisterCommand('-showhud', function()
    loop = false
    emLoop()
end)

function emLoop()
    SendNUIMessage({
        health = GetEntityHealth(ped)-100,
        armor = GetPedArmour(ped),
    })
end