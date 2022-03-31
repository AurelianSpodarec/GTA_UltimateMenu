
function trollingMenu_kamikadzePlane(parent)

    local_trollingMenu_kamikadzePlane = menu.add_feature("Kamikadze Plane", "parent", parent, function(feat) 
        
        local Plane = spawnModel.vehicle(-1214505995, player.get_player_coords(player.player_id()) + v3(math.random(-200, 200), math.random(-400, 400), math.random(70, 94)), math.random(0, 0))
            local Pilot = spawnModel.ped(-413447396)
            local playerPos = player.get_player_coords(player.player_id())
    
            ped.set_ped_into_vehicle(Pilot, Plane, -1)
    
            vehicle.set_vehicle_engine_on(Plane, true, true, false)
            vehicle.control_landing_gear(Plane, 3)
            vehicle.set_vehicle_forward_speed(Plane, 90.0)
        
    end)

    -- local_trollingMenu_kamikadzePlane1 = menu.add_feature("Kamikadze on player", "action", local_trollingMenu_kamikadzePlane, nil)
    -- local_trollingMenu_kamikadzePlane2 = menu.add_feature("Falling Plane", "action", local_trollingMenu_kamikadzePlane, nil)
    -- local_trollingMenu_kamikadzePlane3 = menu.add_feature("Disable Planes Nerby", "action", local_trollingMenu_kamikadzePlane, nil)
    
-- Details: a plane of your choice to kamikaze into a player and kill them.

end



-- maybe should go into services, 

-- vehicle should contain planes too since thecnically they'll have same functionality for the most part

 

-- -- chase player
-- -- change color

  

--     -- Suggestion: kamikaze planes
--     -- Details: a plane of your choice to kamikaze into a player and kill them.

--     -- Edit: choose whether to blame, no blame,  blame another player.

--     -- Sound - this is restricted area




-- ai.task_parachute(Pilot, true, true)
  -- ai.task_parachute_to_target(Pilot, v3(playerPos.x, playerPos.y, 0), coord)
            -- if entityHelper.request_control(pedA, 25) then
            --     if entityHelper.request_control(PlaneA, 25) then

        -- end
            -- end
    
            -- task_enter_vehicle
            -- task_leave_vehicle(
            -- task_parachute_to_target
            -- give the pilot a lock in homing launcher
    
    
            -- if (not entity.is_entity_a_vehicle(tracker[scid].vehicle) or ped.is_ped_a_player(vehicle.get_ped_in_vehicle_seat(tracker[scid].vehicle, enums.vehicle_seats.driver)))
                
            -- get_ped_in_vehicle_seat(planeA, 0)
    -- Kamikaze Planes
    -- local__pedsMenu_plane = menu.add_feature("Falling Plane from the sky", "action", local_pedsMenu, function(feat) 
    --     -- while feat.on do
    --     --     pedModel.removePeds(feat); 
    --     --     system.wait(100)
    --     -- end  
    --     local Plane = spawnModel.vehicle(-1214505995, player.get_player_coords(player.player_id()) + v3(math.random(-200, 200), math.random(-400, 400), math.random(70, 94)), math.random(0, 0))
    --     local Pilot = spawnModel.ped(-413447396)
    --     local playerPos = player.get_player_coords(player.player_id())

    --     ai.task_parachute(Pilot, true, true)
    --     -- ai.task_parachute_to_target(Pilot, v3(playerPos.x, playerPos.y, 0), coord)
    --     -- if entityHelper.request_control(pedA, 25) then
    --     --     if entityHelper.request_control(PlaneA, 25) then
    --     ped.set_ped_into_vehicle(Pilot, Plane, -1)

    --     vehicle.set_vehicle_engine_on(Plane, true, true, false)
    --     vehicle.control_landing_gear(Plane, 3)
    --     vehicle.set_vehicle_forward_speed(Plane, 90.0)
    --         -- end
    --     -- end

    --     -- task_enter_vehicle
    --     -- task_leave_vehicle(
    --     -- task_parachute_to_target
    --     -- give the pilot a lock in homing launcher


    --     -- if (not entity.is_entity_a_vehicle(tracker[scid].vehicle) or ped.is_ped_a_player(vehicle.get_ped_in_vehicle_seat(tracker[scid].vehicle, enums.vehicle_seats.driver)))
			
    --     -- get_ped_in_vehicle_seat(planeA, 0)
    -- end);