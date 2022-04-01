local pedModel <const> = require('UltimateMenu.src.models.pedModel');
local weaponModel <const> = require('UltimateMenu.src.models.weaponModel');
local spawnModel <const> = require('UltimateMenu.src.models.spawnModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');

local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper');

local entityState = require('UltimateMenu.src.state.entityState')
local characterState  = require('UltimateMenu.src.state.characterState')



local characterModel = {}

-- character = {
--     id = "alient",
--     name = "Alient",
--     outfit = 1650288984,
--     health = 10000,
--     armor = 100,
--     weapons = {
--         primary = "weapon_windowmaker"
--     },
--     combatAbility = "professional",
--     combatMovement = "offensive"
-- }

function characterModel.create(character, group, amountToSpawn)
    -- print(character)
    -- print(characterState.test[1].name)
    -- if amountToSpawn == nil or amountToSpawn =< 1 then
    --     characterHash = spawnModel.ped(character.outfit)
    --     table.insert(group, character)
    -- end
    amountToSpawn = amountToSpawn or 1

    for i = 1, amountToSpawn do
        -- mob = amountToSpawn[i] 
        spawnModel.ped(character.outfit)
        table.insert(group, character)
    end

    -- local object = characterHash = {
    --     ..character
    -- }
    -- object = character
    -- insert an object 
    -- hash = {
        -- ..character 
    -- }
    
    
    -- print(characterState.test[1].name)
end
    -- amountToSpawn
    -- if ultEntities[group] == nil then
    --     print("ERROR", "Group '", group, "' doesn't exist")
    -- end
    -- if it doesn't haavae a group send it to 'randomPed'

    -- if empty, create 01 in the group
    -- if not empty, check last group and add agent to it
    -- if last number is full, create a new group
    -- ultEntities[group]
    -- local model = pedModel.spawn(character.outfit)
   
    -- character.create(data)
    -- model = {
        -- ..data
    -- }

    --  group, check if ultEntities exists or if full, or create new one underneeth
    -- check if group is empty, if yes delete the object



function characterModel.properties(model, data)
    if not entity.is_entity_dead(model) then
        entityHelper.request_control(model)

        weaponModel.createArsenal(model, data.weapons.primary)
        pedModel.setHealth(model, data.health)
        pedModel.setCombatMovement(model, data.combatMovement)
        pedModel.setCombatAbility(model, data.combatAbility)
        -- -- maybe needs to be outside from here
    end
end

-- function characterModel.create(model, data)
--     if not entity.is_entity_dead(model) then
--         entityHelper.request_control(model)

--         weaponModel.createArsenal(model, data.weapons.primary)
--         pedModel.setHealth(model, data.health)
--         pedModel.setCombatMovement(model, data.combatMovement)
--         pedModel.setCombatAbility(model, data.combatAbility)
--         -- -- maybe needs to be outside from here
--     end
-- end

return characterModel