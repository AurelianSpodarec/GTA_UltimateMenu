local entityHelper = require('UltimateMenu.src.helpers.entityHelper')


local pedModel = {};

function pedModel.resurect(ult_ped)
    ped.resurrect_ped(ult_ped)
end

function pedModel.setHealth(ult_pedestrian, ult_health)
    ped.set_ped_max_health(ult_pedestrian, ult_health)
    ped.set_ped_health(ult_pedestrian, ult_health)
end

function pedModel.removePed(ult_ped)
    if entityHelper.request_control(ult_ped], 25) then
        entity.delete_entity(ult_ped)
    end
end

function pedModel.attackPlayer(feat)
    -- local peds <const> = ped.get_all_peds()
    
    -- for i = 1, #peds do
    --     if entityHelper.request_control(peds[i], 25) then
    --         -- ped.set_ped_combat_attributes(peds[i], 46, true)
    --         -- if has weapon use it instead
    --         ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
    --     end
    -- end
end

function pedModel.setWeapon(ult_weapon)
    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if not ped.is_ped_a_player(peds[i]) then
            if entityHelper.request_control(peds[i], 25) then
                weapon.give_delayed_weapon_to_ped(peds[i], ult_weapon, 10000, true)
            end
        end
    end 
end

function pedModel.removeWeapon(ult_ped, weapon_hash)
    if not ped.is_ped_a_player(peds[i]) then
        if entityHelper.request_control(peds[i], 25) then
            remove_weapon_from_ped(ult_ped, weapon_hash)
        end
    end
end

function pedModel.setOutfit(ult_ped)

end


-- Start pedModelCombat? @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

function pedModel.setCombatAbility(pedestrian, ability)
    local options = {
        poor = 0,
        average = 1,
        professional = 2,
        chicken = 50,
        attack = 100
    }

    if options[ability] == nil then
        print("ERROR", "Wrong combat ability. Selected: ", ability)
    end

    return ped.set_ped_combat_movement(pedestrian, options[ability])
end





function pedModel.setGroup(group, groupID, isLoyal)
    -- Note: 8 peds per group
    if character = 1; #group do
        if ped.get_ped_group(group[character]) ~= groupID then
            ped.is_ped_group_member(group[character], groupID)
            ped.set_ped_as_group_member(group[character], groupID)
            ped.set_ped_never_leaves_group(group[character], isLoyal)
        end
    end
end




function pedModel.setCombatMovement(pedestrian, combatMovement)
    local options = {
        stationary = 0,        -- Stand in place
        defensive = 1,         -- Take cover and blind fire
        offensive = 2,         -- Attack and take cover
        suicidalOffensive = 3  --Flank enemy in suicidal attack
    }

    if options[combatMovement] == nil then
        print("ERROR", "Wrong combat option selected")
    end

    return ped.set_ped_combat_movement(pedestrian, options[combatMovement])
end


function pedModel.setCombatAttributes(pedestrian, combatAttribute)
    -- Note: Can select many 

    -- function pedModel.setCombatAttributes(pedestrian, {combatAttributes})
    -- function pedModel(cop, {canUseCover, canUseVehicle})

    local options = {
        canUseCover = 0,
        canUseVehicles = 1,
        canDoDrivebys = 2,
        canLeaveVehicle = 3,
        canFightArmedPedsWhenNotArmed = 5,
        canTauntInVehicle = 20,
        alwaysFight = 46,
        ignoreTrafficWhenDriving = 52,
        fleesFromInvincibleOpponents = 63,
        freezeMovement = 292,  
        playerCanUseFiringWeapons = 1424  
    }

    if options[combatAttribute] == nil then
        print("ERROR", "Wrong combat attribute selected: ", combatAttribute)
    end

    -- local selectedCombatAttributes = {}

    -- https://docs.fivem.net/natives/?_0x9F7794730795E019
    
    -- for loop if many attributes are selected
    return ped.set_ped_combat_attributes(pedestrian, options[setCombatAttribute])
end





-- /pedModel Combat? @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

-- ult.feature['Delete All Peds'] = menu.add_feature('Delete All Peds', 'toggle', ult.parent['Ped Manager'], function(f)
--     while f.on do
--         local peds = ped.get_all_peds()
--         menu.create_thread(function(peds)
--             for i = 1, #peds do
--                 if not ped.is_ped_a_player(peds[i]) then
--                     utility.request_ctrl(peds[i])
--                     entity.delete_entity(peds[i])
--                 end
--             end
--         end, peds)
--         system.wait(500)
--     end
-- end)



return pedModel;

 
-- function pedModel.removeAllWeapon()

--     local peds <const> = ped.get_all_peds()
--     for i = 1, #peds do
--         if not ped.is_ped_a_player(peds[i]) then
--             if entityHelper.request_control(peds[i], 25) then
--                 weapon.remove_all_ped_weapons(peds[i])
--             end
--         end
--     end 

-- end

-- function pedModel.removePeds()
--     local peds <const> = ped.get_all_peds()
--     menu.create_thread(function(peds)
--         for i = 1, #peds do

--             if not ped.is_ped_a_player(peds[i]) then
--                 -- if entityHelper.request_control(peds[i], 25) then
--                     entity.delete_entity(peds[i])
--                 -- end
--             end
            
--         end
--     end, peds)
-- end

-- function pedModel.density(feat)

-- end

-- WARNING
-- function pedModel.setAccuracy(pedestrian, accuracy)
    --     -- WARNING 0-100 is NOT accurate. Accuracy doens't change
    --     -- Accuracy 0-100, where's 100 is perfectly accurate
    --     if type(accuracy) ~= 'number' then
    --         print("ERROR", "Provide value between 0-100. Provided value: ", accuracy)
    --     end
    
    --     if accuracy >= 0 and accuracy <= 100 then
    --         print("ERROR", "Wrong accuracy set. Values range from 0-100")
    --     end
    
    --     -- local options {
    --     --     retarded = 0,
    --     --     poor = 10,
    --     --     novice = 20,
    --     --     beginner = 40,
    --     --     competent = 60,
    --     --     proficient = 75,
    --     --     expert = 90,
    --     --     ai = 100
    --     -- }
    
    --     ped.set_ped_accuracy(pedestrian, accuracy)
    -- end

-- ped.set_ped_can_switch_weapons(Ped, true) 





-- function pedModels.setArmor(feat)

-- end


-







-- function HP_Peds.godmode(feat) 

--     while feat.on do
--         local peds <const> = ped.get_all_peds()
--         for i = 1, #peds do
--             if entityHelper.request_control(peds[i], 25) then
--                 entity.set_entity_god_mode(peds[i], true)
--             end
--         end
--         system.wait(100)
--     end     
    
--     local peds <const> = ped.get_all_peds()
--     for i = 1, #peds do
--         if entityHelper.request_control(peds[i], 25) then
--             entity.set_entity_god_mode(peds[i], false)
--             ped.set_ped_health(peds[i], 328)
--         end
--     end

-- end


-- function HP_Peds.attackPlayer(feat)
--     -- print(player.get_player_ped(player.player_id()))
--     while feat.on do
--         local peds <const> = ped.get_all_peds()

--         for i = 1, #peds do
--             if entityHelper.request_control(peds[i], 25) then
--                 ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
--             end
--         end
--         system.wait(100)
--     end  


--     -- if weapon - ai.task_shoot_at_entity

-- end



-- function HP_Peds.setWeaponToAll(feat) 
--     -- give_delayed_weapon_to_ped
--     while feat.on do
--         local peds <const> = ped.get_all_peds()

--         for i = 1, #peds do
--             if entityHelper.request_control(peds[i], 25) then
--                 -- ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
--                 weapon.give_delayed_weapon_to_ped(peds[i],  0x476BF155, 10000, true)
--             end
--         end
--         system.wait(100)
--     end  