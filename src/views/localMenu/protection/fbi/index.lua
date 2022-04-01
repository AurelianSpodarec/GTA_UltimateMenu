local customData <const> = require('UltimateMenu.src.data.customData');

local pedModel <const> = require('UltimateMenu.src.models.pedModel');
local weaponModel <const> = require('UltimateMenu.src.models.weaponModel');
local spawnModel <const> = require('UltimateMenu.src.models.spawnModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');

local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper');

local entityState <const> = require('UltimateMenu.src.state.entityState')
local characterState <const> = require('UltimateMenu.src.state.characterState')

-- characterModel.spawn(data.alien.bob, hasGroup)
-- characterModel.spawn(data.alien.joe, hasGroup, amount)
-- createGRoup(hasGroup)

-- hashPed 29382938  = {
--     id = "alient",
--     name = "Alient",
--     outfit = "",
--     health = 10000,
--     armor = 100,
--     weapons = {
--         primary = "weapon_windowmaker"
--     },
--     combatAbility = "professional",
--     combatMovement = "offensive"
-- }

-- characterModel.spawn(data.alien.bob, ultEntities.randomPeds)
-- createGroup(ultEntities.randomPeds)

-- function createGroup(groupName, groupID)
--     local groupName = ultEntities['FBIGroup']
--     local groupID = player.get_player_group(player.player_id())

--     for j = 1, #groupName do
--         agent = groupName[j]

--         characterModel.create(agent.alien, data)

--         pedModel.setGroup(agent, groupID, true) 
--     end
-- end

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

function createGroup(groupID, isLoyal)
    -- if group == nil then
    --     print("ERROR", "No group provided or ", group, " isinvalid")
    -- end 
    -- ID prob gonna need to be auto generatd dynamic and stored somewhere
       
    for character = 1, #group do
        if ped.get_ped_group(entityState.test[character]) ~= groupID then
            ped.is_ped_group_member(entityState.test[character], groupID)
            ped.set_ped_as_group_member(entityState.test[character], groupID)
            ped.set_ped_never_leaves_group(entityState.test[character], isLoyal)
        end
    end
   
end

function FBIMenu(parent)
    FBIMenu = menu.add_feature("FBI", "parent", parent, nil).id

    local protectionMenu_protectFBI = menu.add_feature("police", "action", FBIMenu, function(feat) 

        local groupName = entityState.test
        local groupID = player.get_player_group(player.player_id())

        characterModel.create(pedData)

        -- for i = 1, #characterState.test do
        --     print(characterState.test[i])
        -- end
        -- createGroup(groupID, true)

        -- createPedGroup(ultEntities['FBIGroup'], player.get_player_group(player.player_id()), 2, 1650288984

    end)

end
 
-- pedModel.setGroup(agent, groupID, true)
-- getCharacterGroup func