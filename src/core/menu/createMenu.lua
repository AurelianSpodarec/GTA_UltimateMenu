local routes = require("UltimateMenu.src.core.menu.routes")
require("UltimateMenu.src.core.menu.components")

function createMenu() 
    local menuItem = menu.add_player_feature("UltimatePapoi(Ultimate Menu)", "parent", 0, nil).id

    for index, item in pairs(routes) do
        createItem(item, menuItem)       
    end
end
