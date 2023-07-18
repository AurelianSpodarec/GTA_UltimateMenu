local entityHelper = require('UltimateMenu.src.helpers.entityHelper')


function pedestrians_godMode(parent)
    peds = menu.add_player_feature("God Mode", "toggle", parent, function(feat) 

        while feat.on do
            local peds = ped.get_all_peds()
            for i = 1, #peds do
                if not ped.is_ped_a_player(peds[i]) then
                    entityHelper.request_control(peds[i])
                    entity.set_entity_god_mode(peds[i], true)
                end
            end
            system.wait(500)
        end
        local peds = ped.get_all_peds()
        for i = 1, #peds do
            if not ped.is_ped_a_player(peds[i]) then
                entityHelper.request_control(peds[i])
                entity.set_entity_god_mode(peds[i], false)
            end
        end

    end)
end
