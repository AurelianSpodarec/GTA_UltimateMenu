local controllerWeapon = require('GTA_LawEnforcement.controllers.controller_weapon')
local data = require('GTA_LawEnforcement.data.weapons')



local state = {
    viewsLoaded = false
}

function pedestriansMenu_weapon(parent)

    pedestriansMenu_weapon = menu.add_feature('All Weapons', 'parent', parent, function(feat) 

        if not state.viewsLoaded then
            controllerWeapon.all(pedestriansMenu_weapon)
        end
        state.viewsLoaded = true

    end).id
    
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
--             --     controllerWeapon.all(pedestriansMenu_weapon)
--             -- end
--             -- isLoaded = true
    
    
--             -- load this once, so far it loads each time the dropdown is clicked
--             loadController(controllerWeapon.all(pedestriansMenu_weapon))
--         end).id
--     ```