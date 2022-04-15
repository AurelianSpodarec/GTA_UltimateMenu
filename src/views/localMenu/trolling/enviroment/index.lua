local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

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
    
    -- planeMenu_gravity(planeMenu)
    -- planeMenu_storm(planeMenu)
    -- planeMenu_magnet(planeMenu)

    local_trollingMenu_enviromentMenu = menu.add_feature("Floating Vehicles", "toggle", enviromentMenu, function(feat) 
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
    end)

end


-- vehicle storm



-- enviromentMenu_gravity(enviromentMenu)
-- enviromentMenu_storm(enviromentMenu)
-- enviromentMenu_magnet(enviromentMenu)

   



-- create storm - make everything around player fly up/down different direction, different speed
-- don't include player car
-- perhaps create a car behind once every 2min to push
-- spawn ufo ship above the player and drop cows

-- put a big object above the player to make it dark


-- hurricane

-- ufo comes takes it up