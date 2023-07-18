local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')




function pointEntityHorizontalyOnPlayer(ult_entity, ult_player)
    local entityCords = entity.get_entity_coords(ult_entity)
    local playerCords = entity.get_entity_coords((player.get_player_ped(ult_player)))

    local diffX = playerCords.x - entityCords.x
    local diffY = playerCords.y - entityCords.y
    local diffZ = playerCords.z - entityCords.z

    local pointAtHeadingAngle = math.atan(diffX, diffY) * -180 / math.pi
 
    entity.set_entity_heading(ult_entity, pointAtHeadingAngle)
end


-- function pointEntityOnPlayer(ult_entity, ult_player)
--     local entityCords = entity.get_entity_coords(ult_entity)
--     local playerCords = entity.get_entity_coords((player.get_player_ped(ult_player)))

--     local diffX = playerCords.x - entityCords.x
--     local diffY = playerCords.y - entityCords.y
--     local diffZ = (playerCords.z - entityCords.z) * -1

--     local pointAtHeadingAngle = math.atan(diffX, diffY) * -180 / math.pi
--     local pointAtAngle = math.asin(diffZ / math.abs(playerCords:magnitude(entityCords))) / (2 * math.pi) * 360
    
--     entity.set_entity_heading(ult_entity, pointAtHeadingAngle)
--     -- 1 flips upside down forward, -90 points downward
--     -- 2 rotates around
--     -- 3 changges direction x
--     entity.set_entity_rotation(ult_entity, v3(-90, 0, 0))
--     -- v3(0, 0, pointAtHeadingAngle)
-- end

function pointEntityOnPlayer(ult_entity, ult_player)
    local entityCords = entity.get_entity_coords(ult_entity)
    local playerCords = entity.get_entity_coords(player.get_player_ped(ult_player))
    local playerHeight = 2;

    local diffX = playerCords.x - entityCords.x
    local diffY = playerCords.y - entityCords.y
    local diffZ = (entityCords.z - playerCords.z + playerHeight) * -1

    local pointAtHeadingAngle = math.atan(diffX, diffY) * -180 / math.pi
    local pointAtAngle = math.asin(diffZ / playerCords:magnitude(entityCords)) / (2 * math.pi) * 360
    
    system.yield(15)
    entity.set_entity_rotation(ult_entity, v3(pointAtAngle, 0, pointAtHeadingAngle))
end

-- v3(
--     math.asin(
--         ((entity.get_entity_coords(_ent).z - _target_pos.z) * -1) / math.abs(_target_pos:magnitude(entity.get_entity_coords(_ent)))) / (2 * math.pi) * 360, 0, math.atan(_target_pos.x - entity.get_entity_coords(_ent).x, _target_pos.y - entity.get_entity_coords(_ent).y) * -180 / math.pi
-- )

-- ultMenu.addBoth()
-- ultMenu.online()
-- ultMenu.local()
-- ultMenu.hybrid()

function kamikadzePlane(parent)

    -- a = menu.add_player_feature("Kamikadze Plane", "action", parent)
    local_trollingMenu_kamikadzePlane = menu.add_player_feature("Kamikadze Plane", "action", parent, function() 
        local drivingMode = 17039360
        local speed = 200 

        local playerID = player.player_id()
        local playerCords = player.get_player_coords(playerID)
        local playerPed = player.get_player_ped(playerID)

        -- circle, distance, height
        -- small private jet -1214505995
        -- 
        local plane = spawnModel.vehicle( -1214505995, playerCords + v3(math.random(-300, 300), math.random(-200, 200), math.random(100, 100)))
        local pilot = spawnModel.ped(-413447396)
        entityHelper.request_control(plane, 0)

        ped.set_ped_into_vehicle(pilot, plane, -1)
        vehicle.set_vehicle_engine_on(plane, true, true, false)

        while not entity.is_entity_dead(plane) do
            if entityHelper.request_control(plane, 0) then
                pointEntityOnPlayer(plane, playerID)
                
                vehicle.set_vehicle_on_ground_properly(plane)
                vehicle.control_landing_gear(plane, 3)
                system.yield(15)
                
                vehicle.set_vehicle_forward_speed(plane, 200)

            end
            system.wait(0)
        end
    end)

    -- local_trollingMenu_kamikadzePlane = menu.add_player_feature("Following Kamikadze Plane", "action", parent, function() 
       
    -- end)

    -- local_trollingMenu_kamikadzePlane3 = menu.add_player_feature("Disable Planes Nerby", "action", local_trollingMenu_kamikadzePlane, nil)
    
-- Details: a plane of your choice to kamikaze into a player and kill them.
-- plane speed
-- plane type
-- blimp above player

end

-- monkey attack

              
        -- if entityHelper.request_control(pilot, 25) then
        --     ai.task_vehicle_follow(pilot, plane, player.get_player_ped(player.player_id()), speed, drivingMode, 0)
        --     -- ai.task_vehicle_shoot_at_coord()
        -- end

 

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
    -- local__pedsMenu_plane = menu.add_player_feature("Falling Plane from the sky", "action", local_pedsMenu, function(feat) 
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
 