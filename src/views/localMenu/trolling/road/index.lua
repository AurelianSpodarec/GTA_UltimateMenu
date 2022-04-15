require('UltimateMenu.src.views.localMenu.trolling.road.followingCar')
require('UltimateMenu.src.views.localMenu.trolling.road.carAccident')

function roadMenu(parent)
    local roadMenu = menu.add_feature("Road", "parent", parent, nil).id;
     
    carAccident(roadMenu)

    -- IDEAs
    -- spawn plane falling from the sky far away
    -- small plane following player
end

