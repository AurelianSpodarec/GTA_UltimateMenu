-- require('GTA_LawEnforcement.views.localMenu.trolling.trollingMenu_carAccident')
require('GTA_LawEnforcement.views.localMenu.trolling.kamikadzePlane')



function trollingMenu(parent)
    trollingMenu = menu.add_feature("Trolling", "parent", parent, nil).id


    -- trollingMenu_carAccident(trollingMenu)
    trollingMenu_kamikadzePlane(trollingMenu)

end



    --/ Troll
    -- Type: From air, from ground, magic
    -- Kamikaze
    -- Airstrike in an area with big range
    -- Rain poop
    -- Drop a tank on player
    -- Send Tanks from front to crush 
    -- Chase player and ram it
    --Jesus chase: White car, white plane, atomizer - if jesus killed, revive and set it on fire, give 5000max health and attack the player
