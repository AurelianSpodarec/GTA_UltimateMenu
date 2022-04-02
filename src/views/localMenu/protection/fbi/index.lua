local charactersData <const> = require('UltimateMenu.src.data.charactersData');

local groupModel <const> = require('UltimateMenu.src.models.groupModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');

-- local entityState <const> = require('UltimateMenu.src.state.entityState');


function FBIMenu(parent)
    FBIMenu = menu.add_feature("FBI", "parent", parent, nil).id

    local protectionMenu_protectFBI = menu.add_feature("Personel", "action", FBIMenu, function(feat) 

        -- local groupName = entityState.test
        local character = characterModel.getByID("cop_undercover")
        local groupID = player.get_player_group(player.player_id())
        
        -- print(character)
        characterModel.create(character)
        -- print(character)

        -- print(character)
        -- create_group()
        -- Creates a new ped group.  
        -- Groups can contain up to 8 peds.  
        -- The parameter is unused.  
        -- Returns a handle to the created group, or 0 if a group couldn't be created.  

        -- function create group for the character, or put him in group now
        -- functoin group the character with somene | groupModel.setPedGroup(characterState.test, groupID, true)
    
    end)

end