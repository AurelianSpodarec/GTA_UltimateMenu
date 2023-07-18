require('UltimateMenu.src.views.localMenu.pedestrians.index')
require('UltimateMenu.src.views.localMenu.protection.index')
require('UltimateMenu.src.views.localMenu.trolling.index')
require('UltimateMenu.src.views.localMenu.vehicles.index')

local routes = {
    {
        name = "UltimateMenu",
        children = {
            {
                name = "Pedestrian"
            },
            {
                name = "Protection"
            },
            {
                name = "Trolling"
            },
            {
                name = "Vehicles"
            }
        }
    }
}


-- function trollingMenu(parent)
    -- local pedestriansMenu = menu.add_player_feature("Pedestrians", "parent", parent, nil).id;
--     trollingMenu = menu.add_player_feature("Trolling", "parent", parent, nil).id

--     enviromentMenu(trollingMenu)
--     planeMenu(trollingMenu)
--     roadMenu(trollingMenu)


function createMenu() 
    -- local test = menu.add_player_feature(routes[1].name, "parent", 0, nil).id
    for index, item in ipairs(routes) do
        local name = item.name
        local name = menu.add_player_feature(name, "parent", 0, nil).id
        
        local subMenu = item.children
        if(subMenu) then
            for key, value in pairs(subMenu) do
                subMenuItem = subMenu[key]
                local subMenuItem = menu.add_player_feature(subMenuItem.name, "parent",  name, nil).id
            end
        end

    end
end


    -- trollingMenu = menu.add_player_feature("Trolling", "parent", parent, nil).id
    -- local ultimateMenu = menu.add_player_feature("Ultimate Menu", "parent", 0, nil).id


function localMenu()


    createMenu()
    -- local ultimateMenu = menu.add_player_feature("Ultimate Menu", "parent", 0, nil).id

    -- pedestriansMenu(ultimateMenu)
    -- protectionMenu(ultimateMenu)
    -- trollingMenu(ultimateMenu)
    -- vehiclesMenu(ultimateMenu)
    
end
