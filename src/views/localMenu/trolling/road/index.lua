require('UltimateMenu.src.views.localMenu.trolling.road.followingCar')
require('UltimateMenu.src.views.localMenu.trolling.road.carAccident')
require('UltimateMenu.src.views.localMenu.trolling.road.policeChase')


function roadMenu(parent)
    local roadMenu = menu.add_player_feature("Road", "parent", parent, nil).id;
     
    carAccident(roadMenu)
    policeChase(roadMenu)
    militaryChase(roadMenu)

    -- IDEAs
    -- spawn plane falling from the sky far away
    -- small plane following player
end

