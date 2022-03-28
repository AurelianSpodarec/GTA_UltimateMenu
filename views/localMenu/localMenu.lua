require('GTA_LawEnforcement.views.localMenu.militaryMenu')
require('GTA_LawEnforcement.views.localMenu.policeMenu')
require('GTA_LawEnforcement.views.localMenu.pedsMenu')

function localMenu()
    lawEnforcementMenu = menu.add_feature("Law Enforcement Menu", "parent", 0, nil).id


    pedsMenu(lawEnforcementMenu)
    militaryMenu(lawEnforcementMenu)
    policeMenu(lawEnforcementMenu)




    -- protection_menu = menu.add_feature("Protection", "parent", lawEnforcementMenu, nil);

    -- protection_godMode = menu.add_feature("God Mode", "toggle", protection_menu.id, function(f) 
    
    --     print(player.get_player_ped(player.player_id()))
    --     entity.set_entity_god_mode(player.get_player_ped(player.player_id()), true)
    -- end);


    -- _2t1script.feature['Turn All Peds Invincible'] = menu.add_feature('Turn All Peds Invincible', 'toggle', _2t1script.parent['Ped Manager'], function(f)
    --     while f.on do
    --         local peds = ped.get_all_peds()
    --         for i = 1, #peds do
    --             if not ped.is_ped_a_player(peds[i]) then
    --                 utility.request_ctrl(peds[i])
    --                 entity.set_entity_god_mode(peds[i], true)
    --             end
    --         end
    --         system.wait(500)
    --     end
    --     local peds = ped.get_all_peds()
    --     for i = 1, #peds do
    --         if not ped.is_ped_a_player(peds[i]) then
    --             utility.request_ctrl(peds[i])
    --             entity.set_entity_god_mode(peds[i], false)
    --         end
    --     end
    -- end)
end