local HP_Entity <const> = require('GTA_LawEnforcement.helpers.HP_Entity')


local ULT_Ped = {};

-- function ULT_Ped.setGodmode(feat, Entity)
--     return entity.set_entity_god_mode(Entity, true)
-- end

-- function ULT_Ped.removeGodmode(feat, Entity)
--     return entity.set_entity_god_mode(Entity, false)
-- end

function ULT_Ped.setAllGodmode(feat)

    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if HP_Entity.request_control(peds[i], 25) then
            entity.set_entity_god_mode(peds[i], true)
        end
    end

end

function ULT_Ped.removeAllGodmode(feat) 

    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if HP_Entity.request_control(peds[i], 25) then
            entity.set_entity_god_mode(peds[i], false)
            ped.set_ped_health(peds[i], 328)
        end
    end

end




function ULT_Ped.removePeds(feat)
  
    local peds <const> = ped.get_all_peds()
    menu.create_thread(function(peds)
        for i = 1, #peds do
            if not ped.is_ped_a_player(peds[i]) then
                if HP_Entity.request_control(peds[i], 25) then
                    entity.delete_entity(peds[i])
                end
            end
        end
    end, peds)

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


function ULT_Ped.ressurectAll(feat)
    -- resurrect_ped
end

function ULT_Ped.attackPlayer(feat)
    -- if has weapon use it
    local peds <const> = ped.get_all_peds()

    for i = 1, #peds do
        if HP_Entity.request_control(peds[i], 25) then
            ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
        end
    end
       
end



function ULT_Ped.setAllWeapon(feat)

    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if not ped.is_ped_a_player(peds[i]) then
            if HP_Entity.request_control(peds[i], 25) then
                weapon.give_delayed_weapon_to_ped(peds[i],  0x476BF155, 10000, true)
            end
        end
    end 

end


return ULT_Ped;


-- #### void               set_create_random_cops(bool t)
-- #### bool               can_create_random_cops()



-- ped.set_ped_can_switch_weapons(Ped, true)
-- ped.set_ped_combat_ability(Ped, 100)







-- function ULT_Peds.setHealth(feat)

-- end

-- function ULT_Peds.setMaxHealth(feat)

-- end


-- function ULT_Peds.setArmor(feat)

-- end


-- function ULT_Peds.setOutfit(feat)

-- end

-- function ULT_Peds.setAllWeapon(feat)

--     while feat.on do
--         local peds <const> = ped.get_all_peds()

--         for i = 1, #peds do
--             if HP_Entity.request_control(peds[i], 25) then
--                 -- ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
--                 weapon.give_delayed_weapon_to_ped(peds[i],  0x476BF155, 10000, true)
--             end
--         end
--         system.wait(100)
--     end

-- end



-- return ULT_Ped;













-- function HP_Peds.godmode(feat) 

--     while feat.on do
--         local peds <const> = ped.get_all_peds()
--         for i = 1, #peds do
--             if HP_Entity.request_control(peds[i], 25) then
--                 entity.set_entity_god_mode(peds[i], true)
--             end
--         end
--         system.wait(100)
--     end     
    
--     local peds <const> = ped.get_all_peds()
--     for i = 1, #peds do
--         if HP_Entity.request_control(peds[i], 25) then
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
--             if HP_Entity.request_control(peds[i], 25) then
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
--             if HP_Entity.request_control(peds[i], 25) then
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
--         if HP_Entity.request_control(data[i], 25) then
--             func
--             -- entity.set_entity_god_mode(peds[i], true)
--         end
--     end
--     system.wait(time)

-- end;



-- while feat.on do
--     local peds <const> = ped.get_all_peds()

--         for i = 1, #peds do
--             if HP_Entity.request_control(peds[i], 25) then
--             ULT_Ped.setGodmode(ped[i])
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
--             if HP_Entity.request_control(peds[i], 25) then
--                 -- entity.set_entity_god_mode(peds[i], true)
--             end
--         end
-- end)

