local pedModel <const> = require('UltimateMenu.src.models.pedModel');

function pedestriansMenu_attackPlayer(feat)

    while feat.on do
        pedModel.attackPlayer(feat); 
        system.wait(100)
    end  

end
