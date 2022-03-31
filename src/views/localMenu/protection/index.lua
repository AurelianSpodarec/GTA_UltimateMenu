require('UltimateMenu.src.views.localMenu.protection.fbi.index')

local pedModel = require('UltimateMenu.src.models.pedModel');
local spawnModel = require('UltimateMenu.src.models.spawnModel');
local weaponModel = require('UltimateMenu.src.models.weaponModel');

local entityHelper = require('UltimateMenu.src.helpers.entityHelper')



function protectionMenu(parent)
    local protectionMenu = menu.add_feature("Protection", "parent", parent, nil).id; 

    FBIMenu(protectionMenu)

end