local HP_Peds <const> = require('GTA_LawEnforcement.features.HP_Peds');



function trollMenu(parent)
    online_trollMenu = menu.add_player_feature("Troll", "parent", parent, nil).id;

    online_peds_godMode = menu.add_player_feature("Invincible Pedestrians", "toggle", online_trollMenu, function(feat)
        HP_Peds.godmode(feat);
    end);

end