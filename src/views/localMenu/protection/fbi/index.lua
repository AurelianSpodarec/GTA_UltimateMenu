local customData <const> = require('UltimateMenu.src.data.customData')

local pedModel = require('UltimateMenu.src.models.pedModel');
local weaponModel = require('UltimateMenu.src.models.weaponModel');
local spawnModel <const> = require('UltimateMenu.src.models.spawnModel')

local HelpMenuParser <const> = require('UltimateMenu.src.helpers.HelpMenuParser')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')



local ultEntities = {
    ['FBIGroup'] = {},
    ['criminals'] = {}
}


function FBIMenu(parent)

    FBIMenu = menu.add_feature("FBI", "parent", parent, nil).id

    local protectionMenu_protectFBI = menu.add_feature("police", "action", FBIMenu, function(feat) 

        -- createPedGroup(ultEntities['FBIGroup'], player.get_player_group(player.player_id()), 2, 1650288984)

        -- GROUP
        local groupName = ultEntities['FBIGroup']
        local groupID = player.get_player_group(player.player_id())
        local groupSize = 2

        for i = 1, groupSize do
            table.insert(groupName, spawnModel.ped(1650288984))
        end

        for j = 1, #groupName do
            agent = groupName[j]
            if not entity.is_entity_dead(agent) then
                entityHelper.request_control(agent)
        -- GROUP END
                
    
                -- Higher order function could be good or something?
                weaponModel.createArsenal(agent, "weapon_raycarbine")
                pedModel.setHealth(agent, 5000)
                pedModel.setCombatMovement(agent, "offensive")
                pedModel.setCombatAbility(agent, "professional")
                pedModel.setGroup(agent, groupID, true)


        -- GROUP 2
            end
        end
        -- GROUP 2 END
         
    end)

end