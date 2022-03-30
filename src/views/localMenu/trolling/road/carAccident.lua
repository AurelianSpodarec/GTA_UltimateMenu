

function trollingMenu_carAccident(parent)

    --TODO: Divide logic from view

    local__pedsMenu_carram = menu.add_feature("Car Accident", "action", local_pedsMenu, function(feat) 
        
        local car = ModelSpawn.vehicle(-2048333973, player.get_player_coords(player.player_id()) + v3(math.random(-50, 50), math.random(0, 0), math.random(0, 0)))
        local driver = ModelSpawn.ped(-413447396)
        local drivingMode = 17039360
        local speed = 200 

    
        local playerPos = player.get_player_coords(player.player_id())

        ped.set_ped_into_vehicle(driver, car, -1)
        vehicle.set_vehicle_engine_on(car, true, true, false) 
        vehicle.set_vehicle_mod_kit_type(car, 0)
        vehicle.set_vehicle_mod(car, ?, ?, false)
 
        if entityHelper.request_control(driver, 25) then
        -- ai.task_vehicle_drive_to_coord(driver, car, v3(playerPos.x, playerPos.y, 0), speed, 0, -2048333973, drivingMode, 263595, 1, 1)
            ai.task_vehicle_follow(driver, car, player.get_player_ped(player.player_id()), speed, drivingMode, 0)
        end
        -- ai.task_vehicle_follow(bitch, bike, player.get_player_ped(pid), 150, 21759548, 50)
        system.wait(100)
        
        -- ai.task_vehicle_drive_to_coord_longrange(driver, car, v3(playerPos.x, playerPos.y, 0), speed, drivingMode, 263595, 1, 1)
    end)

end

