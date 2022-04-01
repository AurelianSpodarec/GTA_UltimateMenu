require('UltimateMenu.src.views.localMenu.protection.fbi.index')


function protectionMenu(parent)
    local protectionMenu = menu.add_feature("Protection", "parent", parent, nil).id; 

    FBIMenu(protectionMenu)

end