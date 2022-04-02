local charactersData <const> = require('UltimateMenu.src.data.charactersData');

local groupModel <const> = require('UltimateMenu.src.models.groupModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');

-- local entityState <const> = require('UltimateMenu.src.state.entityState');


function FBIMenu(parent)
    FBIMenu = menu.add_feature("FBI", "parent", parent, nil).id

    local protectionMenu_protectFBI = menu.add_feature("Personel", "action", FBIMenu, function(feat) 

        -- local groupName = entityState.test
        local characterData = characterModel.getByID("cop_undercover")
        local groupID = player.get_player_group(player.player_id())
        
        -- print(character)
        character = characterModel.create(characterData)
        
      

        -- /create_group()
        -- Creates a new ped group.  
        -- Groups can contain up to 8 peds.  
        -- The parameter is unused.  
        -- Returns a handle to the created group, or 0 if a group couldn't be created.  

        -- /function create group for the character, or put him in group now
        -- /functoin group the character with somene | 

        -- put in random id or player group
        ped.set_ped_as_group_member(character, groupID)
        -- groupModel.setPedGroup(character, groupID, true)
    
    end)

end