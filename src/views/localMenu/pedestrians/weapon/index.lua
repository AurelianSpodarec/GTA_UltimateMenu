local weaponController = require('GTA_LawEnforcement.controllers.weaponController')
local ModelPed = require('GTA_LawEnforcement.models.ModelPed')


local state = {
    viewsLoaded = false
}

function pedestriansMenu_weapon(parent)
    pedestriansMenu_weapon = menu.add_feature('Weapons', 'parent', parent, nil).id


    pedestriansMenu_giveAllweapon = menu.add_feature('Give All Weapons', 'action', pedestriansMenu_weapon, function() ModelPed.setAllWeapon() end).id

    pedestriansMenu_setWeapon = menu.add_feature('Set a Weapon', 'parent', pedestriansMenu_weapon, function() 
        if not state.viewsLoaded then
            return weaponController.all(pedestriansMenu_setWeapon, ModelPed.setWeapon)
        end
        state.viewsLoaded = true
    end).id

    pedestriansMenu_removeAllWeapon = menu.add_feature('Remove Weapons', 'action', pedestriansMenu_weapon, function() ModelPed.removeAllWeapon() end).id
    

    -- pedestriansMenu_setWeapon_component = menu.add_feature('Set Component', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- give_weapon_component_to_ped
    -- end).id

    -- pedestriansMenu_setWeapon_maxAmoo = menu.add_feature('Set Max Ammo', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- give_weapon_component_to_ped
    -- end).id

    -- pedestriansMenu_setWeapon_ammo = menu.add_feature('Set Ammo', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- set_ped_ammo
    -- end).id

    -- pedestriansMenu_setWeapon_ammoType = menu.add_feature('Set Ammo Type', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- set_ped_ammo_by_type
    -- end).id

    -- pedestriansMenu_setWeapon_ammoType = menu.add_feature('Set Ammo Typeee?', 'parent', pedestriansMenu_weapon, function(feat) 
    --     -- set_ped_ammo_by_type

    --     -- bullets shoot fire
    -- end).id
    
    



    -- Set Weapons
    -- / All, Specific weapon


    -- pedestriansMenu_weapon_all = menu.add_feature('All Weapons', 'parent', pedestriansMenu_weapon, function(feat) 
   
    -- end).id


    -- /weapon type
    -- XYZ

    -- weapon shootinig
    -- weapon damage
    -- accuracy
end




-- Is there a way to load function once? e.g 

--     ```js
    
--     function loadController(view)
--         if not isLoaded then
    
--         end
--         isLoaded = true
--     end
    
    
--     function pedestriansMenu_weapon(parent)
    
--         pedestriansMenu_weapon = menu.add_feature('All Weapons', 'parent', parent, function(feat) 
    
--             -- This works,it loads once but... there's extra wrapper that will need to be repeated many times, with a new state above each file
--             -- if not isLoaded then
--             --     weaponController.all(pedestriansMenu_weapon)
--             -- end
--             -- isLoaded = true
    
    
--             -- load this once, so far it loads each time the dropdown is clicked
--             loadController(weaponController.all(pedestriansMenu_weapon))
--         end).id
--     ```