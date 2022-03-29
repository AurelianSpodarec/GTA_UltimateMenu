local customData <const> = require('GTA_LawEnforcement.data.customData')

local ModelSpawn <const> = require('GTA_LawEnforcement.models.ModelSpawn')
local HelpMenuParser <const> = require('GTA_LawEnforcement.helpers.HelpMenuParser')



function policeMenu(parent)

    policeMenu = menu.add_feature("Police", "parent", parent, nil).id

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", policeMenu, nil).id
    HelpMenuParser.createActionList(customData.vehicles.police, spawnVehicle)
 

end