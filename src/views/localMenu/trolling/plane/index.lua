-- spawn plane falling from the sky
-- plane falling on the player
-- lots of planes falling from the sky
-- small plane following player
-- gravity manipulation

require('UltimateMenu.src.views.localMenu.trolling.plane.kamikadzePlane')

function planeMenu(parent)
    local planeMenu = menu.add_feature("Plane", "parent", parent, nil).id;
     
    -- local_trollingMenu_kamikadzePlane = menu.add_feature("Kamikadze Plane", "action", parent, nil)

    kamikadzePlane(planeMenu)
  
end