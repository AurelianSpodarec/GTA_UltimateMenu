local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

function carAccident(parent)

    local playerPos = player.get_player_coords(player.player_id())

    local randomOffsetX = math.random(-50, 50)
    local yOffset = 0
    local zOffset = 0
    
    local car = spawnModel.vehicle(-2048333973, playerPos + v3(randomOffsetX, yOffset, zOffset))
    local driver = spawnModel.ped(-413447396)
    
    local drivingMode = 17039360
    local speed = 200 

    ped.set_ped_into_vehicle(driver, car, -1)
    vehicle.set_vehicle_engine_on(car, true, true, false) 
    vehicle.set_vehicle_mod_kit_type(car, 0)

    if entityHelper.request_control(driver, 25) then
        ai.task_vehicle_follow(driver, car, player.get_player_ped(player.player_id()), speed, drivingMode, 0)
    end
    system.wait(100)

end
