require('UltimateMenu.src.views.localMenu.pedestrians.index')
require('UltimateMenu.src.views.localMenu.protection.index')
require('UltimateMenu.src.views.localMenu.trolling.index')
require('UltimateMenu.src.views.localMenu.vehicles.index')

require('UltimateMenu.src.views.localMenu.trolling.plane.kamikadzePlane')

local routes = {
    {
        name = "Trolling",
        children = {
            {
                name = "Plane",
                children = {
                    {
                        name = "Kamikadze",
                        component = kamikadzePlane
                    }
                }
            },
            {
                name = "Enviroment",
            },
            {
                name = "Road",
            }
        }
    },
    {
        name = "Pedestrian"
    },
    {
        name = "Protection"
    },
    {
        name = "Vehicles"
    }
}


function menuChildren(subMenuItem, parent)
    if(subMenuItem) then

        for index, item in pairs(subMenuItem) do
            local name = item.name
            local subMenu = item.children
            local component = item.component

            if(subMenu) then
                local name = menu.add_player_feature(name, "parent",  parent, nil).id
                menuChildren(subMenu, name)
            elseif(component) then
                local name = menu.add_player_feature("hi", "action", parent, function() 
                    component()
                end)
            end


        end

    end
end

function createItem(item, parent)
    if(item) then

        local name = item.name
        local subMenu = item.children
        local component = item.component

        local name = menu.add_player_feature(name, "parent", parent, nil).id
        if(subMenu) then
            menuChildren(subMenu, name)
        end

    end
end



function createMenu() 
    local menuItem = menu.add_player_feature("Ultimate Menu", "parent", 0, nil).id

    for index, item in pairs(routes) do
        createItem(item, menuItem)       
    end
end

function localMenu()
    createMenu()
end


            -- if(component) then
            --     wop = name.add_player_feature(name, "action", parent, function() 
            --         component()
            --     end)
            -- end
