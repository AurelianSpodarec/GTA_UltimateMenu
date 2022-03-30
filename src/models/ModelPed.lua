local entityHelper = require('UltimateMenu.src.helpers.entityHelper')


local ModelPed = {};

-- /STARTShould go into ModelEntity
-- function ModelPed.setGodmode(feat, Entity)
--     return entity.set_entity_god_mode(Entity, true)
-- end

-- function ModelPed.removeGodmode(feat, Entity)
--     return entity.set_entity_god_mode(Entity, false)
-- end


function ModelPed.setAllGodmode(feat)

    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if entityHelper.request_control(peds[i], 25) then
            entity.set_entity_god_mode(peds[i], true)
        end
    end

end

function ModelPed.removeAllGodmode(feat) 

    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if entityHelper.request_control(peds[i], 25) then
            entity.set_entity_god_mode(peds[i], false)
            ped.set_ped_health(peds[i], 328)
        end
    end

end
-- /END Should go into ModelEntity



function ModelPed.removePeds(feat)
  
    local peds <const> = ped.get_all_peds()
    menu.create_thread(function(peds)
        for i = 1, #peds do
            if not ped.is_ped_a_player(peds[i]) then
                if entityHelper.request_control(peds[i], 25) then
                    entity.delete_entity(peds[i])
                end
            end
        end
    end, peds)

end

function ModelPed.density(feat)

end

-- _2t1script.feature['Delete All Peds'] = menu.add_feature('Delete All Peds', 'toggle', _2t1script.parent['Ped Manager'], function(f)
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


function ModelPed.ressurectAll(feat)
    -- resurrect_ped
end

function ModelPed.attackPlayer(feat)
    -- if has weapon use it
    local peds <const> = ped.get_all_peds()

    for i = 1, #peds do
        if entityHelper.request_control(peds[i], 25) then
            -- ped.set_ped_combat_attributes(peds[i], 46, true)
            ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
        end
    end
       
end



function ModelPed.setAllWeapon()
    -- get all weapon hash
    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if not ped.is_ped_a_player(peds[i]) then
            if entityHelper.request_control(peds[i], 25) then
                weapon.give_delayed_weapon_to_ped(peds[i], 0xBFE256D4, 10000, true)
            end
        end
    end 

end

function ModelPed.setWeapon(ult_weapon)
    -- get all weapon hash
    print(ult_weapon)
    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if not ped.is_ped_a_player(peds[i]) then
            if entityHelper.request_control(peds[i], 25) then
                weapon.give_delayed_weapon_to_ped(peds[i], ult_weapon, 10000, true)
            end
        end
    end 

end


function ModelPed.removeAllWeapon()

    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if not ped.is_ped_a_player(peds[i]) then
            if entityHelper.request_control(peds[i], 25) then
                weapon.remove_all_ped_weapons(peds[i])
            end
        end
    end 

end


return ModelPed;


-- #### void               set_create_random_cops(bool t)
-- #### bool               can_create_random_cops()



-- ped.set_ped_can_switch_weapons(Ped, true)
-- ped.set_ped_combat_ability(Ped, 100)







-- function ModelPeds.setHealth(feat)

-- end

-- function ModelPeds.setMaxHealth(feat)

-- end


-- function ModelPeds.setArmor(feat)

-- end


-- function ModelPeds.setOutfit(feat)

-- end

-- function ModelPeds.setAllWeapon(feat)

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

-- end











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

-- -- enhanced peds
-- -- armor, 50000 hp, weapons, walk in group(bodyguard)





-- function HP_Peds.isInvisible(feat)

-- end


-- function HP_Peds.attackOtherPeds(feat)
    
-- end




-- end

-- function HP_Peds.setWeapon(feat, player)

-- end


-- function HP_Peds.setRandomWeapon(feat)

-- end


-- local items <const> = ped.get_all_peds()

-- function loopEntity(data, time, func)

--     for i = 1, #data do
--         if entityHelper.request_control(data[i], 25) then
--             func
--             -- entity.set_entity_god_mode(peds[i], true)
--         end
--     end
--     system.wait(time)

-- end;



-- while feat.on do
--     local peds <const> = ped.get_all_peds()

--         for i = 1, #peds do
--             if entityHelper.request_control(peds[i], 25) then
--             ModelPed.setGodmode(ped[i])
--         end

--     end
--     system.wait(100)
-- end    


-- function whileToggleOn(feat, time, codeBlock)
--     while feat.on do

--         -- codeBlock

--         system.wait(time)
--     end     
-- end


-- toggleOn(feat, 100, function() 
--     local peds <const> = ped.get_all_peds()
--         for i = 1, #peds do
--             if entityHelper.request_control(peds[i], 25) then
--                 -- entity.set_entity_god_mode(peds[i], true)
--             end
--         end
-- end)

