local customData <const> = require('GTA_LawEnforcement.data.customData')
local ModelSpawn <const> = require('GTA_LawEnforcement.models.ModelSpawn')
local HP_MenuParser <const> = require('GTA_LawEnforcement.helpers.HP_MenuParser')


function militaryMenu(parent)

    militaryMenu = menu.add_feature("Military", "parent", parent, nil).id

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", militaryMenu, nil).id
    HP_MenuParser.createActionList(customData.vehicles.military, spawnVehicle)
 

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