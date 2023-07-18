local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

function floatingVehicles(feat)
    -- local_trollingMenu_enviromentMenu = menu.add_player_feature("Floating Vehicles", "toggle", parent, function(feat) 
    while feat.on do
        
        local playerVehicles = {}
        for i = 0, 32 do
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
end
