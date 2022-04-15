require('UltimateMenu.src.views.localMenu.trolling.plane.kamikadzePlane')


function planeMenu(parent)
    local planeMenu = menu.add_feature("Plane", "parent", parent, nil).id;
     
    kamikadzePlane(planeMenu)

    -- IDEAs
    -- spawn plane falling from the sky far away
    -- small plane following player
end

