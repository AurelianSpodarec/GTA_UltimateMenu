local customData <const> = require('UltimateMenu.src.data.customData')

local ModelSpawn <const> = require('UltimateMenu.src.models.ModelSpawn')
local HelpMenuParser <const> = require('UltimateMenu.src.helpers.HelpMenuParser')



function policeMenu(parent)

    policeMenu = menu.add_feature("Police", "parent", parent, nil).id

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", policeMenu, nil).id
    HelpMenuParser.createActionList(customData.vehicles.police, spawnVehicle)
 

end