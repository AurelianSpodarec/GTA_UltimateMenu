local charactersData <const> = require('UltimateMenu.src.data.charactersData');

local groupModel <const> = require('UltimateMenu.src.models.groupModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');

-- local entityState <const> = require('UltimateMenu.src.state.entityState');


function FBIMenu(parent)
    FBIMenu = menu.add_feature("FBI", "parent", parent, nil).id

    local protectionMenu_protectFBI = menu.add_feature("Personel", "action", FBIMenu, function(feat) 

        local characterData = characterModel.getByID("cop_undercover")
        local groupID = player.get_player_group(player.player_id())
        
        character = characterModel.create(characterData)
        groupModel.setPedGroup(character, groupID, true)
        
    
    end)

end