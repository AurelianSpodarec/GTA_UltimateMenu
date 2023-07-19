local weaponController = require('UltimateMenu.src.controllers.weaponController')
local pedModel = require('UltimateMenu.src.models.pedModel')
local data = require('UltimateMenu.src.data.weaponsData')

function pedSetWeapon(feat, name)

    local state = {
        viewsLoaded = false
    }

    if not state.viewsLoaded then
        -- return weaponController.all(name, pedModel.setWeapon)

        for index = 1, #data do
            local category = data[index]
    
        --     local name = category.name
        --     local children = category.children
    
            local parent = menu.add_player_feature(category.name, "action", name, nil).id
    
            -- for j = 1, #children do
                -- subChildren = children[j]
                -- menu.add_player_feature(subChildren.name, "action", parent, function()                   
                --     callback(subChildren.hash)
                -- end)
            -- end
            
        end


    end
    state.viewsLoaded = true

end
