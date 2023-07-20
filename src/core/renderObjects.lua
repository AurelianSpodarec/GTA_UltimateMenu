local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

local render = {}

function render.npc(item, machine, pid) 
    if not item then
        print("Error: Missing data argument for render.npc.")
        return
    end

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

        ped.set_ped_never_leaves_group(npc, true)
        
        -- Protect, Attack, Follow, 
        if(item.taskCombatPed) then
            ai.task_combat_ped(npc, pid, 0, 16)
        end

        if(machine) then --machine
            ped.set_ped_combat_attributes(machine, 1, true)
            ped.set_ped_into_vehicle(npc, machine, item.seat)
        end
    end

    return npc
end

function render.vehicle(data, pid)
    if not data then
        print("Error: Missing modelHash argument for render.vehicle.")
        return
    end

    -- local machine = spawnModel.vehicle(data.modelHash, player.get_player_coords(pid) + v3(math.random(-20, 20), math.random(-20, 20), math.random(50, 60)), math.random(0, 0))
    local machine = spawnModel.vehicle(data.modelHash, player.get_player_coords(pid) + v3(math.random(-50, 50), math.random(0, 0), math.random(0, 0)), math.random(0, 0))
    
    if(machine) then
        vehicle.set_vehicle_engine_on(machine, true, true, false)
        vehicle.control_landing_gear(machine, 3)
        vehicle.set_vehicle_forward_speed(machine, 10.0)

        -- if(data.mode == "follow") then
        --     if entityHelper.request_control(npc, 25) then
        --         ai.task_vehicle_follow(npc, machine, player.get_player_ped(pid), data.speed, data.drivingMode, 0)
        --     end
        --     system.wait(100)
        -- end

    end

    return machine

end

return render
