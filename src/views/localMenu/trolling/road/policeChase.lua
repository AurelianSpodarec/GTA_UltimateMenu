local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

-- boat
-- helicopter
-- car
-- bike
-- swat
-- roadblock
-- riot

helicopter = {
    vehicle =  0x1517D4D9,
}

cityPolice = {
    outfit = 1581098148,
    vehicle = 0x79FBB0C5
}






militaryAPC = {
    vehicle = 0x2189D250
}

militaryRhino = {
    vehicle = 0x2EA68690
}

militaryCar = {
    vehicle = 0x132D5A1A
}

militarySpecialPhantom = {
    vehicle = 0x9DAE1398
}

-- boats;  0x1E5E54EA, 0xE2E7D4AB

lawUnits = {
        name = "City Car Cops",
        outfit = 1581098148, --{ 1581098148, 368603149, 1669696074 },
        vehicle = 0x79FBB0C5,
        seats = 1
    }

highwaypatrol = {
    outfit = 1939545845,
    vehicle = 0xFDEFAEC3,
    seats = 1
}

militaryRhino = {
    outfit = -220552467,
    vehicle = 0x2EA68690,
    seats = 1
}

riotAdvanced = {
    outfit =  -1920001264,
    vehicle = 0x9B16A3B4,
    seats = 1
    -- options = {
    --     weapon = 
    --     ragdool = 
    -- }
}

function spawnUnit(data, ult_player) 
    local unitVehicle = spawnModel.vehicle(data.vehicle, player.get_player_coords(ult_player) + v3(math.random(-50, 50), math.random(0, 0), math.random(0, 0)))
    vehicle.set_vehicle_engine_on(unitVehicle, true, true, false) 
    vehicle.set_vehicle_mod_kit_type(unitVehicle, 0)

    local drivingMode = 17039360
    local speed = 200
    

    local pedestrians = {}
    for i = 1, data.seats do
        table.insert(pedestrians, spawnModel.ped(data.outfit))
    end

    for i = 1, #pedestrians do
        ped.set_ped_into_vehicle(pedestrians[i], unitVehicle, i - 2)
    end

    if entityHelper.request_control(pedestrians[1], 25) then
        ai.task_vehicle_follow(pedestrians[1], unitVehicle, player.get_player_ped(ult_player), speed, drivingMode, 0)
    end
end

        -- ped.set_ped_into_vehicle(bikeDriver, bike, -1)
        -- ped.set_ped_can_ragdoll(bikeDriver, false)
        -- vehicle.set_vehicle_engine_on(bike, true, true, false) 
        -- vehicle.set_vehicle_mod_kit_type(bike, 0)
function policeChase(parent)

    -- idea: on shot shots firework - griefing
    --TODO: Divide logic from view
    -- never let them go out, no ragdool, always chase, don't stop

    local__pedsMenu_carram = menu.add_player_feature("Police Chase", "action", parent, function(feat) 

        local playerPos = player.get_player_coords(player.player_id())

        spawnUnit(lawUnits, player.player_id())
        spawnUnit(lawUnits, player.player_id())
        spawnUnit(highwaypatrol, player.player_id())
        
        spawnUnit(highwaypatrol, player.player_id())
       
        system.wait(100)
 
    end)

end

function militaryChase(parent)

    -- idea: on shot shots firework - griefing
    --TODO: Divide logic from view
    -- never let them go out, no ragdool, always chase, don't stop

    local__pedsMenu_carram = menu.add_player_feature("Military Chase", "action", parent, function(feat) 

        local playerPos = player.get_player_coords(player.player_id())

        spawnUnit(militaryRhino, player.player_id())
        spawnUnit(militaryRhino, player.player_id()) 
       
        system.wait(100)
 
    end)

end
