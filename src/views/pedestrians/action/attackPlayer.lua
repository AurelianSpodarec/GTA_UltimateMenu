local pedModel <const> = require('UltimateMenu.src.models.pedModel');

function pedestriansMenu_attackPlayer(feat)

    -- pedestriansMenu_action_attackPlayer = menu.add_player_feature("Attack Player", "action", parent, function(feat) 
        while feat.on do
            pedModel.attackPlayer(feat); 
            system.wait(100)
        end  
    -- end);

end
