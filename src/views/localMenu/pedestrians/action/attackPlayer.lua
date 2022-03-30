local ModelPed <const> = require('UltimateMenu.src.models.ModelPed');



function pedestriansMenu_attackPlayer(parent)
    -- pedestriansMenu_action = menu.add_feature('Action', 'parent', parent, nil).id


    pedestriansMenu_action_attackPlayer = menu.add_feature("Attack Player", "action", parent, function(feat) 
        while feat.on do
            ModelPed.attackPlayer(feat); 
            system.wait(100)
        end  
    end);

end