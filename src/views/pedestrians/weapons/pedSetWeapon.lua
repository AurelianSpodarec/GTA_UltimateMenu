local weaponController = require('UltimateMenu.src.controllers.weaponController')
local pedModel = require('UltimateMenu.src.models.pedModel')

function pedSetWeapon(feat)

    local state = {
        viewsLoaded = false
    }
    
    if not state.viewsLoaded then
        return weaponController.all(pedestriansMenu_setWeapon, pedModel.setWeapon)
    end
    state.viewsLoaded = true

end
