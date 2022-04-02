local pedModel <const> = require('UltimateMenu.src.models.pedModel');
local weaponModel <const> = require('UltimateMenu.src.models.weaponModel');
local spawnModel <const> = require('UltimateMenu.src.models.spawnModel');
local characterModel <const> = require('UltimateMenu.src.models.characterModel');

local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper');

local entityState <const> = require('UltimateMenu.src.state.entityState');
local characterState <const> = require('UltimateMenu.src.state.characterState');

local charactersData <const>  = require('UltimateMenu.src.data.charactersData');


local characterModel = {}

function characterModel.getByID(id)
    for index, value in pairs(charactersData) do
        if id ~= index then 
            print("ERROR", id, "provided does not exist in characters data")
        else 
            print("VA", value)
            return value 
        end
    end
end

function characterModel.create(characterData, amountToSpawn)
    local amountToSpawn = amountToSpawn or 1
    
    for i = 1, amountToSpawn do
        characterHash = spawnModel.ped(characterData.outfitHash)   
        -- characterModel.setProperties(characterHash, characterData)
        -- not sure if this should be here actually, we can spawn characters, but put them in group later
        -- spawn a cop, then put him in cops group perhaps
        -- group[characterHash] = {
        --     table.unpack(character) 
        -- }
        -- table.insert(group, character)
    end
    
end

-- function characterModel.setProperties(characterHash, data)
--     if not entity.is_entity_dead(characterHash) then
--         entityHelper.request_control(characterHash)

--         weaponModel.createArsenal(characterHash, true, 0, data)
--         characterModel.setHealth(characterHash, data)
--     end
-- end

-- function characterModel.setHealth(characterHash, data) 
--     ped.set_ped_max_health(characterHash, data.health)
--     ped.set_ped_health(characterHash, data.health)
--     -- pedModel.setCombatMovement(characterHash, character.combatMovement)
--     -- pedModel.setCombatAbility(characterHash, character.combatAbility)
-- end





-- function characterModel.setProperties(data, character)
   
-- end


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