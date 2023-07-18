require('UltimateMenu.src.views.localMenu.pedestrians.index')
require('UltimateMenu.src.views.localMenu.protection.index')
require('UltimateMenu.src.views.localMenu.trolling.index')
require('UltimateMenu.src.views.localMenu.vehicles.index')

require('UltimateMenu.src.views.localMenu.trolling.plane.kamikadzePlane')

local routes = {
    {
        name = "UltimateMenu",
        children = {
            {
                name = "Trolling",
                children = {
                    {
                        name = "Plane",
                        component = kamikadzePlane
                    },
                    {
                        name = "Woo",
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
    }
}

function menuChildren(parent, menuItem)
    if(menuItem) then

        for index, item in pairs(menuItem) do

            local name = item.name
            local subMenu = item.children

            local name = menu.add_player_feature(name, "parent",  parent, nil).id
            if(subMenu) then
                menuChildren(name, subMenu)
            end

        end

    end
end


function createMenu() 
    for index, item in ipairs(routes) do

        local name = item.name
        local subMenu = item.children

        local name = menu.add_player_feature(name, "parent", 0, nil).id
        if(subMenu) then
            menuChildren(name, subMenu)
        end

    end
end

function localMenu()
    createMenu()
end
