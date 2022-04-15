local entityHelper = require('UltimateMenu.src.helpers.entityHelper')
-- gravity manipulation

function enviromentMenu(parent)
    local enviromentMenu = menu.add_feature("Enviroment", "parent", parent, nil).id;
     
    local_trollingMenu_enviromentMenu = menu.add_feature("Gravity Magnet", "toggle", enviromentMenu, function() 

        -- local allObjects = get_all_objects()
        -- local player = 
        -- get all objects
        -- get player

        -- pull objects to player

    end)

    local_trollingMenu_enviromentMenu = menu.add_feature("Floating Objects", "toggle", enviromentMenu, function(feat) 

        while feat.on do
            local vehicles = vehicle.get_all_vehicles()
           
            for i = 1, #vehicles do
                local isPlayerVehicle
                if entityHelper.request_control(vehicles[i], 25) then
                    local singleVehicle = vehicles[i]

                    for j = 0, 31 do

                        if player.is_player_valid(j) then
                            print("valid player")
                            if player.get_player_vehicle(j) == vehicles[i] then
                                isPlayerVehicle = true
                                break
                            end
                        else
                            print("not ")
                        end
            
                    end
                    if not isPlayerVehicle then
                        vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
                    end
                
                    -- print("single", singleVehicle)
                    -- for j = 0, 31 do
                    --     singlePlayer = j
                         
                        -- if singleVehicle ~= player.get_player_vehicle(singlePlayer) then
                        --     vehicle.set_vehicle_gravity_amount(singleVehicle, -5)
                            -- print("yes", ped.is_ped_a_player(player.get_player_ped(j)))
                            -- -- print(player.get_player_vehicle(player.get_player_ped(j)))
                       
                        -- else
                        -- else
                        --     print("no")
                            -- vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
                        -- end
                        -- is_ped_a_player
                        -- if player.is_player_valid(j) then
                        --     if player.get_player_vehicle(j) == vehicles[i] then
                        --     end
                        -- end

                    -- end

                end
            end
            system.wait(500)

        end


    end)
    -- if `player.get_player_vehicle(j)` == `vehicles[i]` then
    --     break
    --  end
    -- enviromentMenu_gravity(enviromentMenu)
    -- enviromentMenu_storm(enviromentMenu)
    -- enviromentMenu_magnet(enviromentMenu)

end



      -- local objects = object.get_all_objects()
        
        -- for i = 1, #objects do
        --     if entityHelper.request_control(objects[i], 25) then
        --         entity.set_entity_gravity(objects[i], false)
        --     end
        -- end

        -- if feat.off then
        --     local vehicles = vehicle.get_all_vehicles()

        --     for i = 1, #vehicles do
        --         if entityHelper.request_control(vehicles[i], 25) then
        --             vehicle.set_vehicle_gravity_amount(vehicles[i], 0)
        --         end
        --     end
        -- end
    -- planeMenu_gravity(planeMenu)
    -- planeMenu_storm(planeMenu)
    -- planeMenu_magnet(planeMenu)


    -- create storm - make everything around player fly up/down different direction, different speed
-- don't include player car
-- perhaps create a car behind once every 2min to push
-- spawn ufo ship above the player and drop cows

-- put a big object above the player to make it dark


-- hurricane

-- ufo comes takes it up