-- gravity manipulation

function enviromentMenu(parent)
    local enviromentMenu = menu.add_feature("Enviroment", "parent", parent, nil).id;
     
    local_trollingMenu_enviromentMenu = menu.add_feature("Gravity Magnet", "action", enviromentMenu, function() 

    end)
    -- enviromentMenu_gravity(enviromentMenu)
    -- enviromentMenu_storm(enviromentMenu)
    -- enviromentMenu_magnet(enviromentMenu)

  
end
    -- planeMenu_gravity(planeMenu)
    -- planeMenu_storm(planeMenu)
    -- planeMenu_magnet(planeMenu)
