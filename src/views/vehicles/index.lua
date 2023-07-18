-- require('UltimateMenu.src.views.pedestrians.weapon.index')
-- require('UltimateMenu.src.views.pedestrians.action.index')


function vehiclesMenu(parent)
    local vehiclesMenu = menu.add_player_feature("Vehicles", "parent", parent, nil).id;
    
    local vehiclesMenu = menu.add_player_feature("Spawn", "parent", vehiclesMenu, function(feat) 
        
    end).id;

    
    -- vehiclesMenu_weapon(vehiclesMenu)
    -- vehiclesMenu_action(vehiclesMenu)

end