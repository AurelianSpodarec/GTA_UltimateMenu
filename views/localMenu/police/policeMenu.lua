local customData <const> = require('GTA_LawEnforcement.data.customData')

local ULT_Spawn <const> = require('GTA_LawEnforcement.models.ULT_Spawn')
local HP_MenuParser <const> = require('GTA_LawEnforcement.helpers.HP_MenuParser')



function policeMenu(parent)

    policeMenu = menu.add_feature("Police", "parent", parent, nil).id

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", policeMenu, nil).id
    HP_MenuParser.createActionList(customData.vehicles.police, spawnVehicle)
 

end