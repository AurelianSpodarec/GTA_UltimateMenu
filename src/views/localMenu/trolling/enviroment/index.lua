require('UltimateMenu.src.views.localMenu.trolling.enviroment.floatingVehicles')


-- table
function hasValue(ult_table, ult_value)
    if not ult_table then return false end

    for index, value in ipairs(ult_table) do
        if value ~= ult_value then return false else
            return ult_value
        end
    end
end

-- table
function printTable(tbl)
    for index, value in ipairs(tbl) do
        print(index , value, "---------")
    end
end


function enviromentMenu(parent)
    local enviromentMenu = menu.add_player_feature("Enviroment", "parent", parent, nil).id;
    
    floatingVehicles(enviromentMenu)
end


-- storm, magnet, gravity

   



-- create storm - make everything around player fly up/down different direction, different speed
-- don't include player car
-- perhaps create a car behind once every 2min to push
-- spawn ufo ship above the player and drop cows

-- put a big object above the player to make it dark


-- hurricane

-- ufo comes takes it up