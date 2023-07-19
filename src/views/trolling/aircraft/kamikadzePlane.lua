local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

function kamikadzePlane(parent)

    local vehicleModel = -1214505995
    local drivingMode = 17039360
    local speed = 200 

    local playerID = player.player_id()
    local playerCords = player.get_player_coords(playerID)
    local playerPed = player.get_player_ped(playerID)

    local xRange = 300
    local yRange = 200
    local zOffset = 100    
    -- circle, distance, height

    local xRandomOffset = math.random(-xRange, xRange)
    local yRandomOffset = math.random(-yRange, yRange)
    local zRandomOffset = math.random(0, zOffset)

    local spawnPosition = playerCords + v3(xRandomOffset, yRandomOffset, zRandomOffset)
    local plane = spawnModel.vehicle(vehicleModel, spawnPosition)

    local pilot = spawnModel.ped(-413447396)
    entityHelper.request_control(plane, 0)

    ped.set_ped_into_vehicle(pilot, plane, -1)
    vehicle.set_vehicle_engine_on(plane, true, true, false)

    while not entity.is_entity_dead(plane) do
        if entityHelper.request_control(plane, 0) then
            entityHelper.pointEntityTowards(plane, playerPed)
            
            vehicle.set_vehicle_on_ground_properly(plane)
            vehicle.control_landing_gear(plane, 3)
            system.yield(15)
            
            vehicle.set_vehicle_forward_speed(plane, 200)

        end
        system.wait(0)
    end
end
