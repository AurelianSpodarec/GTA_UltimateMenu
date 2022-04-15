local entityHelper = require('UltimateMenu.src.helpers.entityHelper')
-- gravity manipulation

function hasValue(ult_table, ult_value)
    if not ult_table then return false end

    for index, value in ipairs(ult_table) do
        if value ~= ult_value then return false else
            return ult_value
        end
    end
end

function printTable(tbl)
    for index, value in ipairs(tbl) do
        print(index , value, "---------")
    end
end


function enviromentMenu(parent)
    local enviromentMenu = menu.add_feature("Enviroment", "parent", parent, nil).id;
    
    
    local_trollingMenu_enviromentMenu = menu.add_feature("Floating Vehicles", "action", enviromentMenu, function(feat) 
        while feat.on do
            local playerVehicles = {}
            for i = 0, 31 do
                if player.is_player_valid(i) and player.get_player_vehicle(i) ~= 0 then
                    playerVehicles[player.get_player_vehicle(i)] = true
                end
            end

            local vehicles = vehicle.get_all_vehicles()
            for i = 1, #vehicles do
                if not playerVehicles[vehicles[i]] then
                    network.request_control_of_entity(vehicles[i])
                    vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
                end
            end
            system.wait(500)
        end
        -- local vehicles = vehicle.get_all_vehicles()
        -- local playerVehicles = {}

        -- local playerPed = player.get_player_ped(player.player_id())
        -- local playerVehicle = ped.get_vehicle_ped_is_using(playerPed)

        -- -- get all player vehicle and put it in a table
        -- for playerIndex = 1, 31 do
        --     if player.is_player_valid(playerIndex) then
        --         table.insert(playerVehicles, ped.get_vehicle_ped_is_using(player.get_player_ped(playerIndex)))
        --     end
        -- end 
        
        -- -- finish above loop
        -- -- check if vehicle[i] exists in table, if yes skip it
        -- for i = 1, #vehicles do
        --     if hasValue(playersVehicles, vehicles[i]) ~= vehicles[i] then
        --         vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
        --     end
        -- end
         
    end)

end

    -- function getPlayersVehicle()
    --     local playersVehicles = {}
    --     for i = 0, 31 do
    --         table.insert(playersVehicles, ped.get_vehicle_ped_is_using(player.get_player_ped(i)))
    --     end
    --     -- for _, i in pairs(playersVehicles) do
    --     --     print(_, i)
    --     -- end
    --     print(playersVehicles[1])
    --     return playersVehicles
    -- end


    -- function getPlayerVehicle(ult_player)
        
    --     if ped.is_ped_a_player(ult_player) then
    --         if ped.is_ped_in_any_vehicle(ult_player) then
           
    --             return true
    --             -- ped.get_vehicle_ped_is_using(ult_player)
    --         -- return true
      
    --         end
    --     end

    -- end

  
    -- test = menu.add_feature('test', 'action', enviromentMenu, function() 
    --     local vehicles = vehicle.get_all_vehicles()

    --     playerPed = player.get_player_ped(player.player_id())
    --     isPlayerVehicle = ped.get_vehicle_ped_is_using(playerPed)
 
    --     for i = 1, #vehicles do
    --         if isPlayerVehicle ~= vehicles[i] then
    --             -- print("NOT Player vehicle:", vehicles[i])
    --             vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
    --         end
    --     end
    -- end)


-- vehicle storm




 -- if `player.get_player_vehicle(j)` == `vehicles[i]` then
    --     break
    --  end
    -- enviromentMenu_gravity(enviromentMenu)
    -- enviromentMenu_storm(enviromentMenu)
    -- enviromentMenu_magnet(enviromentMenu)


   -- check vehicle by model/value, not index
            -- loop vehicles and if its playerVehicle don't do it

            -- for _, i in pairs(playerVehicles) do
            --     print(_, i)
            -- end



            -- for i = 1, #vehicles do
            --     print("Vehicles", vehicles[i])
            --     for j = 1, 31 do

            --         if ped.get_vehicle_ped_is_using(player.get_player_ped(j)) ~= vehicles[i] then
            --             print("is not player gravity set")
            --             vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
            --             break
            --         else
            --             print("IS PLAYERRRRRRRRRRRRR t")
            --         end
                    -- print("All pd vehicles:", ped.get_vehicle_ped_is_using(player.get_player_ped(j)))
                    -- if player inside vehicle found, break and start again untill all vehicles have been checekd
                    -- break;
                    -- continue
                    -- print("All vehicles:", vehicles[i])
                    -- table.insert(playersVehicles, )
                    -- if ped.get_vehicle_ped_is_using(player.get_player_ped(j)) ~= vehicles[i] then
                    --     vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
                    -- end
                -- end
                -- if playersVehicles[i] ~= vehicles[i] then
                --     vehicle.set_vehicle_gravity_amount(vehicles[i], -5)
                -- end
            -- end

            -- system.wait(500)
        -- end
















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