local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')


-- function pointAtPlayer(playerCords, vehicle)

--     local playerPosition = entity.get_entity_coords(player.player_id())

--     -- local position = { x = }

-- end


-- ntity.set_entity_rotation(all_veh[i], _GF_vector_to_pos(pos,all_veh[i]))

-- function _GF_vector_to_pos(target, veh)
--     local vehicle = entity.get_entity_coords(veh)
--     local x =target.x - vehicle.x
--     local y = target.y - vehicle.y
--     local heading = math.atan(x, y) * -180 / math.pi    
--     local z_dif = (vehicle.z - target.z)*-1
--     local pitch = math.asin(z_dif/_GF_dist_pos_pos(target, vehicle))/(2*math.pi)*360
--     return v3(pitch,0,heading)
-- end
 
-- entity.set_entity_rotation(vehicle, _GF_vector_to_pos(playerCords, vehicle)) --entity v3 rotation

-- pos = entity.get_entity_coords(aim_ent)

-- math.atan(playerCordsX - entityCords.x,  playerCordsY - entityCords.y)
function pointEntityOnPlayer(ult_entity, ult_player)

    local entityCords = entity.get_entity_coords(ult_entity)
    local playerCords = entity.get_entity_coords(player.get_player_ped(ult_player))

    local playerCordsX = playerCords.x
    local playerCordsY = playerCords.y
    local playerCordsZ = playerCords.z

   return entity.set_entity_rotation(ult_entity, v3(playerCordsX, playerCordsY, playerCordsZ))

end

function trollingMenu_kamikadzePlane(parent)


    local_trollingMenu_kamikadzePlane = menu.add_feature("Kamikadze Plane", "action", parent, function(feat) 
        
        -- local plane = spawnModel.vehicle(-1214505995, player.get_player_coords(player.player_id()) + v3(math.random(50, 50), math.random(20, 20), math.random(0, 0)))
        local drivingMode = 17039360
        local speed = 200 

        local playerID = player.player_id()
        local playerCords = player.get_player_coords(playerID)
        local playerPed = player.get_player_ped(playerID)

        local plane = spawnModel.vehicle(-2048333973, playerCords + v3(math.random(-50, 50), math.random(0, 0), math.random(0, 0)))
        -- local pilot = spawnModel.ped(-413447396)
        
        pointEntityOnPlayer(plane, playerID)
        
        -- vehicle.task_vehicle_aim_at_ped(plane, playerPed)
        vehicle.set_vehicle_forward_speed(plane, 90.0)
        
        -- 1 Pointing Up/down axies
        -- 2 Flipped the car on the door 90
        -- 3 Rotation on X axies
        -- entity.set_entity_rotation(plane, v3(0, 0, playerCords.x))



        
        -- local heading = math.atan(x, y) * -180 / math.pi    
        -- local getPlayerForwardCords = entity.get_entity_forward_vector(playerPed)


        -- local pilot = spawnModel.ped(-413447396)
        -- ped.set_ped_into_vehicle(pilot, plane, -1)

        -- vehicle.set_vehicle_engine_on(plane, true, true, false)
        -- vehicle.control_landing_gear(plane, 3)
        -- vehicle.task_vehicle_aim_at_ped(plane, playerPed)
        -- vehicle.set_vehicle_forward_speed(plane, 90.0)
        
        -- if entityHelper.request_control(pilot, 25) then
        --     ai.task_vehicle_follow(pilot, plane, player.get_player_ped(player.player_id()), speed, drivingMode, 0)
        --     -- ai.task_vehicle_shoot_at_coord()
        -- end

        -- Setting #1 x axies pointg
        -- Setting #2 seems to be y axies?
        -- Setting #3 Rotates X axies/ground pointing 
        -- if plane do
        -- test = entity.set_entity_rotation(plane, getPlayerForwardCords)
        -- print(test)
        -- print(getPlayerForwardCords)
        -- system.wait(500)
        -- end
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
  -- ai.task_parachute_to_target(Pilot, v3(playerCords.x, playerCords.y, 0), coord)
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