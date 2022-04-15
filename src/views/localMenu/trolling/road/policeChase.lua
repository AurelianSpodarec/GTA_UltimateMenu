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

highwaypatrol = {
    outfit = 1939545845,
    vehicle = 0xFDEFAEC3
}

riotAdvanced = {
    vehicle = 0x9B16A3B4
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
        seats = 4
    }


function spawnUnit(data, ult_player, amount) 
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

function policeChase(parent)

    --TODO: Divide logic from view

    local__pedsMenu_carram = menu.add_feature("Police Chase", "action", parent, function(feat) 

        local playerPos = player.get_player_coords(player.player_id())

        spawnUnit(lawUnits, player.player_id())
        -- local car = spawnModel.vehicle(0x79FBB0C5, player.get_player_coords(player.player_id()) + v3(math.random(-50, 50), math.random(0, 0), math.random(0, 0)))
        -- local bike = spawnModel.vehicle(0xFDEFAEC3, player.get_player_coords(player.player_id()) + v3(math.random(-50, 50), math.random(0, 0), math.random(0, 0)))
        
        -- local carDriver = spawnModel.ped(1581098148)
        -- local bikeDriver = spawnModel.ped(1939545845)

        -- local drivingMode = 17039360
        -- local speed = 200 

        -- ped.set_ped_into_vehicle(carDriver, car, -1)
        -- ped.set_ped_can_ragdoll(carDriver, false)
        -- vehicle.set_vehicle_engine_on(car, true, true, false) 
        -- vehicle.set_vehicle_mod_kit_type(car, 0)

        -- ped.set_ped_into_vehicle(bikeDriver, bike, -1)
        -- ped.set_ped_can_ragdoll(bikeDriver, false)
        -- vehicle.set_vehicle_engine_on(bike, true, true, false) 
        -- vehicle.set_vehicle_mod_kit_type(bike, 0)
 
       

        -- if entityHelper.request_control(bikeDriver, 25) then
        --     ai.task_vehicle_follow(bikeDriver, bike, player.get_player_ped(player.player_id()), speed, drivingMode, 0)
        -- end
        system.wait(100)

        -- while feat.on do
        --     pedModel.attackPlayer(feat); 
        --     system.wait(100)
        -- end  
        
        -- ai.task_vehicle_drive_to_coord_longrange(driver, car, v3(playerPos.x, playerPos.y, 0), speed, drivingMode, 263595, 1, 1)
    end)

end

