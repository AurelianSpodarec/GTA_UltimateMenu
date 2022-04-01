local groupModel = {}

-- groupModel.setInGoup()
function groupModel.create()
    -- local groupName = ultEntities['policeGroup']
    --     local groupID = player.get_player_group(player.player_id())
    --     local groupSize = 2
    
    --     for i = 1, groupSize do
    --         table.insert(groupName, spawnModel.ped(1650288984))
    --     end
    
    --     for j = 1, #groupName do
    --         agent = groupName[j]
    
    --         if not entity.is_entity_dead(agent) then
    --             entityHelper.request_control(agent)
     
    --             -- weaponModel.createArsenal(agent, "weapon_raycarbine")
    --             -- pedModel.setHealth(agent, 5000)
    --             -- pedModel.setCombatMovement(agent, "offensive")
    --             -- pedModel.setCombatAbility(agent, "professional")
    --             -- pedModel.setGroup(agent, groupID, true)
    
    --         end
end

function groupModel.setRelationshipType(ult_relationshipType, group1, group2)
  --     if ult_type[ult_relationship] == 0 then
    --         print("ERROR", "Wrong relationship given")
    --     end
    
    --     local ult_type = {
    --         companion = 0,  
    --         respect = 1,  
    --         like = 2,  
    --         neutral = 3,  
    --         dislike = 4,  
    --         hate = 5,  
    --         pedestrians = 255
    --     }
    
    --     return ped.set_relationship_between_groups(ult_type[ult_relationship], ult_group1, ult_grpup2)
end

function groupModel.setRelationshipBetweenGroups() 

end

return groupModel



-- pedModelValuesHash = {
--     weapon = "weapon_raycarabine"
--     health = 5000,
--     combatMovement = "offensive",
--     combatAbility = "professional",
--     -- group = ?dynamic group ID later on
--     groupLoyality = true
-- }
-- function pedValueApply(pedValues)
--     ModelWeapon.createArsenal(agent, pedValues.weapon)
--     ModelPed.setHealth(agent, pedValues.health)
--     ModelPed.setCombatMovement(agent, pedValues.combatMovement)
--     ModelPed.setCombatAbility(agent, pedValues.combatAbility)
--     ModelPed.setGroup(agent, pedValues.group, pedValues.groupLoyality)
-- end

-- I don't know too much about FiveM, but I think that should work
-- You might want to supply ModelPed and ModelWeapon as function arguments though, like this:
-- function pedValueApply(ModelWeapon ,ModelPed ,pedValues )



 
-- ped.set_relationship_between_groups(0, group1, grpup2)
-- https://docs.fivem.net/natives/?_0xBF25EB89375A37AD

-- function createSquat(numberOfPed, [outfit1, outfit2 random], group, attack/protect

 
-- Details: instead of ridiculous fast or normal, a selection of a few speeds, or a slider to progressively increase speed.


-- Edit: choose whether to blame, no blame,  blame another player.


-- FBI agents
-- Suggestion details: Automatically spawn a new vehicle and continue to wander/follow if you are killed or if the vehicle is destroyed.

 

-- function createEntities(table, count) 

--     for i = 1, count do
--         table.insert(ultEntities[table], spawnModel.ped(2323))
--     end

-- end

-- - function setRelationshipBetweenGroups(ult_relationship, ult_group1, ult_group2) 

  
    -- end


-- end