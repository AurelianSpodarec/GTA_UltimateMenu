-- require('UltimateMenu.src.views.localMenu.pedestrians.weapon.index')
-- require('UltimateMenu.src.views.localMenu.pedestrians.action.index')


function vehiclesMenu(parent)
    local vehiclesMenu = menu.add_feature("Vehicles", "parent", parent, nil).id;
    
    local vehiclesMenu = menu.add_feature("Spawn", "parent", vehiclesMenu, function(feat) 
        
    end).id;

    
    -- vehiclesMenu_weapon(vehiclesMenu)
    -- vehiclesMenu_action(vehiclesMenu)

end