local weaponController = require('UltimateMenu.src.controllers.weaponController')
local pedModel = require('UltimateMenu.src.models.pedModel')


local state = {
    viewsLoaded = false
}

function pedestriansMenu_weapon(parent)
    pedestriansMenu_weapon = menu.add_player_feature('Weapons', 'parent', parent, nil).id


    pedestriansMenu_giveAllweapon = menu.add_player_feature('Give weapons to all', 'action', pedestriansMenu_weapon, function() pedModel.setAllWeapon() end).id

    pedestriansMenu_setWeapon = menu.add_player_feature('Set a weapon', 'parent', pedestriansMenu_weapon, function() 
        if not state.viewsLoaded then
            return weaponController.all(pedestriansMenu_setWeapon, pedModel.setWeapon)
        end
        state.viewsLoaded = true
    end).id

    pedestriansMenu_removeAllWeapon = menu.add_player_feature('Remove weapons from all', 'action', pedestriansMenu_weapon, function() pedModel.removeAllWeapon() end).id
    

    -- pedestriansMenu_setWeapon_component = menu.add_player_feature('Set Component', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- give_weapon_component_to_ped
    -- end).id

    -- pedestriansMenu_setWeapon_maxAmoo = menu.add_player_feature('Set Max Ammo', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- give_weapon_component_to_ped
    -- end).id

    -- pedestriansMenu_setWeapon_ammo = menu.add_player_feature('Set Ammo', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- set_ped_ammo
    -- end).id

    -- pedestriansMenu_setWeapon_ammoType = menu.add_player_feature('Set Ammo Type', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- set_ped_ammo_by_type
    -- end).id

    -- pedestriansMenu_setWeapon_ammoType = menu.add_player_feature('Set Ammo Typeee?', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- set_ped_ammo_by_type

    --     -- bullets shoot fire
    -- end).id
    
    


    -- Set Weapons
    -- / All, Specific weapon
end