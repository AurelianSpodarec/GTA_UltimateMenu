require('GTA_LawEnforcement.views.onlineMenu.trollMenu')


function onlineMenu()
    onlineMenu_lawEnforcement = menu.add_player_feature("Law Enforcement", "parent", 0, nil).id;

    trollMenu(onlineMenu_lawEnforcement)
    

end
