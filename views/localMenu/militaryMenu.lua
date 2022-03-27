local customData = require('GTA_LawEnforcement.data.customData')
local Spawn = require('GTA_LawEnforcement.helpers.Spawn')
 

--| TODO:
--| #Military 
--| - Spaw nVehicles
--|     Cars
--|     boats
--|     planes
--|     helicopters
--|     heavy
--| - Send Backup
--| - Grief
--| -Protect


-- Data, Parent
function createList(data, parent)

    for i = 1, #data do

        local item = data[i]
        local itemChildren = item.children

        local parent = menu.add_feature(item.name, "parent", parent.id, nil)
        for j = 1, #itemChildren do
            local area = itemChildren[j]
            menu.add_feature(area.name, "action", parent.id, function(f) 
                Spawn.Vehicle(area.hash, player.get_player_coords(player.player_id()))
            end)
        end

    end

end


function militaryMenu(parent)

 

    militaryMenu = menu.add_feature("Military", "parent", parent.id, nil)

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", militaryMenu.id, nil)
    createList(customData.vehicles.military, spawnVehicle)
 



end