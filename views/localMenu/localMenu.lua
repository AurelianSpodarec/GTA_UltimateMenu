require('GTA_LawEnforcement.views.localMenu.pedestrians.index')
require('GTA_LawEnforcement.views.localMenu.trolling.index')



function localMenu()
    local ultimateMenu = menu.add_feature("Ultimate Menu", "parent", 0, nil).id

    pedestriansMenu(ultimateMenu)
    trollingMenu(ultimateMenu)


    -- test = menu.add_feature('Sound Test', "action", 0, function(feat) 
    --     audio.play_sound_from_entity(-1, "S_M_Y_SWAT_01_WHITE_FULL_01", player.get_player_ped(player.player_id()), "GENERIC_CURSE_HIGH_03")
    -- end)
    
end