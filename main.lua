-- set the in the method MPH or KPH depend on what you want
local method = "KPH"

function text(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.80,0.85)
end
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(1)
        if method == "MPH" then
            local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.2369)
            if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
                text(math.floor(speed).. " MPH")
            end
        elseif method == "KPH" then
            local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6)
            if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
                text(math.floor(speed).. " K/H")
            end
        else
            local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.2369)
            if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
                text(math.floor(speed).. " MPH")
            end
        end
        
    end
end)