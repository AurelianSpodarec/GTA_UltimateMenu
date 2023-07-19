local data = require('UltimateMenu.src.data.weaponsData')
local pedModel = require('UltimateMenu.src.models.pedModel')

local weaponController = {}
 
function weaponController.all(parent, callback)
    
    -- TODO: Extract this menu functionality to be reusable
    for index = 1, #data do
        local category = data[index]

        local name = category.name
        local children = category.children

        local parent = menu.add_player_feature(name, "parent", parent, nil).id

        for j = 1, #children do
            subChildren = children[j]
            menu.add_player_feature(subChildren.name, "action", parent, function()                   
                callback(subChildren.hash)
            end)
        end
        
    end
    
end

-- function weaponController.byCategory(parent, category)

-- end


-- function weaponController.byName()

-- end


-- function weaponControllers(category)

--     -- check if category exists, if not throw out notification/error

-- end


return weaponController



--/ Purpose of this file
-- = Should render it by category or by all
-- = Get data, parse it, display it, reuse it without having to duplicate code
 

--  get data from database, and return it


-- similar to model, except that this renders the data
-- services used to store the logic



 
  
-- get_all_weapon_hashes()

-- get_weapon_name(Hash weapon)
-- get_weapon_name(Hash weapon)