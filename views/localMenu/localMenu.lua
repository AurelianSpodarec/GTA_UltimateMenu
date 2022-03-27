-- require("GTA_LawEnforcement/Menu/Army/index")
-- require("GTA_LawEnforcement/Menu/Protection/index")


require('GTA_LawEnforcement.views.localMenu.militaryMenu')
-- local customData = require('GTA_LawEnforcement.data.customData')

-- local customData = require('GTA_LawEnforcement.views.localMenu.test')
-- local customData = require('GTA_LawEnforcement.data.customData')
-- local customData = require('GTA_LawEnforcement.data.customData')
-- local state = {
--     parent = {},
--     feature = {},
--     mainparent = 0,
--     playerparent = 0
-- }


function LocalMenu()
    lawEnforcementMenu = menu.add_feature("Law Enforcement Menu", "parent", 0, nil) 

    militaryMenu(lawEnforcementMenu)
    -- print(customData)
    -- listArmyOptions()
    -- createArmyMenu(lawEnforcementMenu, config)
    -- createProtectionMenu(lawEnforcementMenu, config)
end


-- listArmyOptions()
-- listPoliceOptions()
-- listProtection()
-- listMotorcade()