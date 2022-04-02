local customData <const> = require('UltimateMenu.src.data.customData');

-- have one file to include all models
local pedModel <const> = require('UltimateMenu.src.models.pedModel');
local weaponModel <const> = require('UltimateMenu.src.models.weaponModel');
local spawnModel <const> = require('UltimateMenu.src.models.spawnModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');
local groupModel <const> = require('UltimateMenu.src.models.groupModel');

local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper');

local entityState = require('UltimateMenu.src.state.entityState')
local characterState  = require('UltimateMenu.src.state.characterState')


pedData = {
    id = "alient",
    name = "Alient",
    outfit = 1650288984,
    health = 10000,
    armor = 100,
    weapons = {
        primary = "weapon_windowmaker"
    },
    combatAbility = "professional",
    combatMovement = "offensive"
}

-- /Characters have data
-- Get character COP that is a VARIATION 2

-- We have Cop DATA - outfit, weapons, coombat ability etc...

-- /Spawn the COP with that DATA
-- create character data




function FBIMenu(parent)
    FBIMenu = menu.add_feature("FBI", "parent", parent, nil).id

    local protectionMenu_protectFBI = menu.add_feature("police", "action", FBIMenu, function(feat) 

        local groupName = entityState.test
        local groupID = player.get_player_group(player.player_id())

        characterModel.create(pedData)



        -- state.temporary - clean it up
        -- state randomPeds
        -- characterModel - characterState.test model put in a temporary place
        -- characterModel.create(pedData, entityState.pedestrian, 2)
        -- set into agroup, no group pedestrian, or bodyguard for x player hmmmm
        -- groupModel.createGroup(characterState.test, groupID, true)
    

    end)

end