local spawnModel = require('UltimateMenu.src.models.spawnModel')

local render = {}

function render.npc(data) 
    for index, item in ipairs(data) do
        local npc = spawnModel.ped(item.modelHash)

        if(npc) then
            if(item.weaponHash) then
                weapon.give_delayed_weapon_to_ped(npc, item.weaponHash or 0, 0, true)
            end 

            if(item.canSwitchWeapons) then
                ped.set_ped_can_switch_weapons(npc, item.canSwitchWeapons)
            end
            
            if(item.health) then
                ped.set_ped_health(npc, item.health)
            end

            if(item.maxHealth) then
                ped.set_ped_max_health(npc, item.maxHealth)
            end
            
            if(item.combatAttributes) then
                ped.set_ped_combat_attributes(npc, item.combatAttributes, true)
            end
            
            if(item.combatAbility) then
                ped.set_ped_combat_ability(npc, item.combatAbility)
            end
            
            if(item.groupLeader) then
                ped.set_ped_as_group_leader(npc, item.groupLeader)
            end
            
            if(item.groupMember) then
                ped.set_ped_as_group_member(npc, item.groupMember)
            end
            
            if(item.taskCombatPed) then
                ai.task_combat_ped(npc, player.get_player_ped(player.player_id()), 0, 16)
            end
        end
    end
end

return render
