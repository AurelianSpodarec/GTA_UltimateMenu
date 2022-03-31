local customData <const> = require('UltimateMenu.src.data.customData')
local spawnModel <const> = require('UltimateMenu.src.models.spawnModel')
local HelpMenuParser <const> = require('UltimateMenu.src.helpers.HelpMenuParser')


function militaryMenu(parent)

    militaryMenu = menu.add_feature("Military", "parent", parent, nil).id

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", militaryMenu, nil).id
    HelpMenuParser.createActionList(customData.vehicles.military, spawnVehicle)
 

end


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