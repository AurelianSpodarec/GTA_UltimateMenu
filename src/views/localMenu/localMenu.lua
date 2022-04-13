require('UltimateMenu.src.views.localMenu.pedestrians.index')
require('UltimateMenu.src.views.localMenu.protection.index')
require('UltimateMenu.src.views.localMenu.trolling.index')
require('UltimateMenu.src.views.localMenu.vehicles.index')



function localMenu()
    local ultimateMenu = menu.add_feature("Ultimate Menu", "parent", 0, nil).id

    protectionMenu(ultimateMenu)
    trollingMenu(ultimateMenu)
    -- vehiclesMenu(ultimateMenu)
    -- pedestriansMenu(ultimateMenu)


    -- test = menu.add_feature('Sound Test', "action", 0, function(feat) 
    --     audio.play_sound_from_entity(-1, "S_M_Y_SWAT_01_WHITE_FULL_01", player.get_player_ped(player.player_id()), "GENERIC_CURSE_HIGH_03")
    -- end)
    
end