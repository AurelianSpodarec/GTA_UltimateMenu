local controllerWeapon = require('GTA_LawEnforcement.controllers.controller_weapon')

-- controller, display all weapons

function pedestriansMenu_weapon(parent)

    local pedestriansMenu_weapon = menu.add_feature('Weapons', 'parent', parent, nil).id

    local aa = menu.add_feature('All Weapons', 'parent', pedestriansMenu_weapon, function(feat) 
        controllerWeapon.all()
    end)
    -- /weapon type
    -- XYZ

    -- weapon shootinig
    -- weapon damage
    -- accuracy
end