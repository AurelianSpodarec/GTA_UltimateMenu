local HP_Entity <const> = require('GTA_LawEnforcement.helpers.HP_Entity')


local HP_Peds = {};

function HP_Peds.godmode(feat) 

    while feat.on do
        local peds <const> = ped.get_all_peds()
        for i = 1, #peds do
            if HP_Entity.request_control(peds[i], 25) then
                entity.set_entity_god_mode(peds[i], true)
            end
        end
        system.wait(100)
    end     
    
    local peds <const> = ped.get_all_peds()
    for i = 1, #peds do
        if HP_Entity.request_control(peds[i], 25) then
            entity.set_entity_god_mode(peds[i], false)
            ped.set_ped_health(peds[i], 328)
        end
    end

end


function HP_Peds.attackPlayer(feat)
    -- print(player.get_player_ped(player.player_id()))
    while feat.on do
        local peds <const> = ped.get_all_peds()

        for i = 1, #peds do
            if HP_Entity.request_control(peds[i], 25) then
                ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
            end
        end
        system.wait(100)
    end  


    -- if weapon - ai.task_shoot_at_entity

end

-- enhanced peds
-- armor, 50000 hp, weapons, walk in group(bodyguard)

function HP_Peds.setHealth(feat)

end


function HP_Peds.setArmor(feat)

end



function HP_Peds.isInvisible(feat)

end


function HP_Peds.attackOtherPeds(feat)
    
end


function HP_Peds.setWeaponToAll(feat) 
    -- give_delayed_weapon_to_ped
    while feat.on do
        local peds <const> = ped.get_all_peds()

        for i = 1, #peds do
            if HP_Entity.request_control(peds[i], 25) then
                -- ai.task_combat_ped(peds[i], player.get_player_ped(player.player_id()), 0, 16)
                weapon.give_delayed_weapon_to_ped(peds[i],  0x476BF155, 10000, true)
            end
        end
        system.wait(100)
    end  


end

function HP_Peds.setWeapon(feat, player)

end


function HP_Peds.setRandomWeapon(feat)

end


return HP_Peds;