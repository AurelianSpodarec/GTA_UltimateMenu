-- require('GTA_LawEnforcement.views.localMenu.militaryMenu')
-- require('GTA_LawEnforcement.views.localMenu.policeMenu')
-- require('GTA_LawEnforcement.views.localMenu.trolling.trollingMenu')


local pedestrians <const> = require('GTA_LawEnforcement.views.localMenu.pedestrians.index')


function localMenu()
    ultimateMenu <const> = menu.add_feature("Law Enforcement Menu", "parent", 0, nil).id

    pedsMenu(ultimateMenu)
    -- trollingMenu(lawEnforcementMenu)
    -- militaryMenu(lawEnforcementMenu)
    -- policeMenu(lawEnforcementMenu)




  
end