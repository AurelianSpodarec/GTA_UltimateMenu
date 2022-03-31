local data = require('UltimateMenu.src.data.weapons')
local pedModel = require('UltimateMenu.src.models.pedModel')

local weaponController = {}
 
function weaponController.all(parent, callback)
     
    for index = 1, #data do
        local ult_category = data[index]

        local ult_categoryName = ult_category.name
        local ult_weapons = ult_category.children

        local ult_categoryParent = menu.add_feature(ult_categoryName, "parent", parent, nil).id
        for j = 1, #ult_weapons do
            ult_weapon = ult_weapons[j]
            menu.add_feature(ult_weapon.name, "action", ult_categoryParent, function()                   
                callback(ult_weapon.hash)
            end)
        end

    end
    
end

function weaponController.byCategory(parent, category)

end


function weaponController.byName()

end


function weaponControllers(category)

    -- check if category exists, if not throw out notification/error

end


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