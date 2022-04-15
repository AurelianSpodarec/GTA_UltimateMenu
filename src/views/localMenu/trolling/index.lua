-- require('UltimateMenu.src.views.localMenu.trolling.trollingMenu_carAccident')

-- require('UltimateMenu.src.views.localMenu.trolling.rubio')
require('UltimateMenu.src.views.localMenu.trolling.enviroment.index')
require('UltimateMenu.src.views.localMenu.trolling.plane.index')
require('UltimateMenu.src.views.localMenu.trolling.road.index')

function trollingMenu(parent)
    trollingMenu = menu.add_feature("Trolling", "parent", parent, nil).id

    enviromentMenu(trollingMenu)
    planeMenu(trollingMenu)
    roadMenu(trollingMenu)
    -- trollingMenu_rubio(trollingMenu)

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
