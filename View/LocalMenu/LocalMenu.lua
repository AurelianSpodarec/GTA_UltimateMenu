-- require("GTA_LawEnforcement/Menu/Army/index")
-- require("GTA_LawEnforcement/Menu/Protection/index")


require('GTA_LawEnforcement.View.LocalMenu.MilitaryMenu')

local state = {
    parent = {},
    feature = {},
    mainparent = 0,
    playerparent = 0
}


function LocalMenu()
    lawEnforcementMenu = menu.add_feature("Law Enforcement Menu", "parent", 0, nil) 

    MilitaryMenu(lawEnforcementMenu)
    -- listArmyOptions()
    -- createArmyMenu(lawEnforcementMenu, config)
    -- createProtectionMenu(lawEnforcementMenu, config)
end


-- listArmyOptions()
-- listPoliceOptions()
-- listProtection()
-- listMotorcade()