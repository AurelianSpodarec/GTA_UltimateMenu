local spawnModel = require('UltimateMenu.src.models.spawnModel')
 
-- -- local rubioSquad = {
-- --     title = "Mr Rubio is not happy!",
-- --     sendSMS = true,
-- --     numIterations = 1,
-- --     teams = {
-- --         {
-- --             vehicle = {
-- --                 modelHash = 0xA09E15FD,
-- --             },
-- --             peds = {
-- --                 {
-- --                     name = "Rubio",
-- --                     modelHash = 0xD74B8139,
-- --                     canSwitchWeapons = false,
-- --                     weaponHash = 0x57A4368C,
-- --                     maxHealth = 5000,
-- --                     health = 5000,
-- --                     combatAttributes = 1,
-- --                     combatAbility = 2,
-- --                     groupLeader = true,
-- --                     groupMember = true,
-- --                     taskCombatPed = true,
-- --                 },
-- --                 {
-- --                     name = "Shooter",
-- --                     modelHash = 0x7ED5AD78,
-- --                     canSwitchWeapons = false,
-- --                     weaponHash = 0x9D1F17E6,
-- --                     maxHealth = 5000,
-- --                     health = 5000,
-- --                     combatAttributes = 1,
-- --                     combatAbility = 2,
-- --                     groupMember = true,
-- --                     taskCombatPed = true,
-- --                 },
-- --                 {
-- --                     name = "Shooter",
-- --                     modelHash = 0x7ED5AD78,
-- --                     canSwitchWeapons = false,
-- --                     weaponHash = 0x9D1F17E6,
-- --                     maxHealth = 5000,
-- --                     health = 5000,
-- --                     combatAttributes = 1,
-- --                     combatAbility = 2,
-- --                     groupMember = true,
-- --                     taskCombatPed = true,
-- --                 },
-- --             },
-- --         },
-- --     },
-- -- }

local pedProperties = {
    {
        name = "Rubio",
        modelHash = 0xD74B8139,
        canSwitchWeapons = false,
        weaponHash = 0x57A4368C,
        maxHealth = 5000,
        health = 5000,
        combatAttributes = 1,
        combatAbility = 2,
        groupLeader = true,
        groupMember = true,
        taskCombatPed = true,
    },
    {
        name = "Shooter",
        modelHash = 0x7ED5AD78,
        canSwitchWeapons = false,
        weaponHash = 0x9D1F17E6,
        maxHealth = 5000,
        health = 5000,
        combatAttributes = 1,
        combatAbility = 2,
        groupMember = true,
        taskCombatPed = true,
    },
    {
        name = "Shooter",
        modelHash = 0x7ED5AD78,
        canSwitchWeapons = false,
        weaponHash = 0x9D1F17E6,
        maxHealth = 5000,
        health = 5000,
        combatAttributes = 1,
        combatAbility = 2,
        groupMember = true,
        taskCombatPed = true,
    }
}

-- function rubioHelicopter(parent)
--     local pos = player.get_player_coords(player.get_player_ped(player.player_id()))

--     for index, property in ipairs(pedProperties) do
--         local ped = spawnModel.ped(property.modelHash)

--         if ped then
--             if property.weaponHash then
--                 weapon.give_delayed_weapon_to_ped(ped, property.weaponHash or 0, 0, true)
--             end 
--             print("Index:", index)
--             print("Health:", property.health)
    
--             if property.canSwitchWeapons then
--                 ped.set_ped_can_switch_weapons(ped, property.canSwitchWeapons)
--             end
            
--             -- if property.health then
--                 ped.set_ped_health(ped, 328)
--             -- end

--             -- if property.maxHealth then
--             --     ped.set_ped_max_health(ped, property.maxHealth)
--             -- end
            
--             -- if property.combatAttributes then
--             --     ped.set_ped_combat_attributes(ped, property.combatAttributes, true)
--             -- end
            
--             -- if property.combatAbility then
--             --     ped.set_ped_combat_ability(ped, property.combatAbility)
--             -- end
            
--             -- if property.groupLeader then
--             --     ped.set_ped_as_group_leader(ped, property.groupLeader)
--             -- end
            
--             -- if property.groupMember then
--             --     ped.set_ped_as_group_member(ped, property.groupMember)
--             -- end
            
--             -- if property.taskCombatPed then
--             --     ai.task_combat_ped(ped, player.get_player_ped(player.player_id()), 0, 16)
--             -- end
--         end
--     end
-- end

local pedProperties = {
    {
        name = "Rubio",
        modelHash = 0xD74B8139,
        canSwitchWeapons = false,
        weaponHash = 0x57A4368C,
        maxHealth = 5000,
        health = 5000,
        combatAttributes = 1,
        combatAbility = 2,
        groupLeader = true,
        groupMember = true,
        taskCombatPed = true,
    },
    {
        name = "Shooter",
        modelHash = 0x7ED5AD78,
        canSwitchWeapons = false,
        weaponHash = 0x9D1F17E6,
        maxHealth = 5000,
        health = 5000,
        combatAttributes = 1,
        combatAbility = 2,
        groupMember = true,
        taskCombatPed = true,
    },
    {
        name = "Shooter",
        modelHash = 0x7ED5AD78,
        canSwitchWeapons = false,
        weaponHash = 0x9D1F17E6,
        maxHealth = 5000,
        health = 5000,
        combatAttributes = 1,
        combatAbility = 2,
        groupMember = true,
        taskCombatPed = true,
    }
}

function rubioHelicopter(parent)

    local pos = player.get_player_coords(player.get_player_ped(player.player_id()))

    for index, property in ipairs(pedProperties) do
        local npc = spawnModel.ped(property.modelHash)

        if(npc) then
            if(property.weaponHash) then
                weapon.give_delayed_weapon_to_ped(npc, property.weaponHash or 0, 0, true)
            end 

            if(property.canSwitchWeapons) then
                ped.set_ped_can_switch_weapons(npc, property.canSwitchWeapons)
            end
            
            if(property.health) then
                ped.set_ped_health(npc, property.health)
            end

            if(property.maxHealth) then
                ped.set_ped_max_health(npc, property.maxHealth)
            end
            
            if(property.combatAttributes) then
                ped.set_ped_combat_attributes(npc, property.combatAttributes, true)
            end
            
            if(property.combatAbility) then
                ped.set_ped_combat_ability(npc, property.combatAbility)
            end
            
            if(property.groupLeader) then
                ped.set_ped_as_group_leader(npc, property.groupLeader)
            end
            
            if(property.groupMember) then
                ped.set_ped_as_group_member(npc, property.groupMember)
            end
            
            if(property.taskCombatPed) then
                ai.task_combat_ped(npc, player.get_player_ped(player.player_id()), 0, 16)
            end
        end

    end


end
