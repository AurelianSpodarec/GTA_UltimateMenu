-- local spawnModel = require('UltimateMenu.src.models.spawnModel')

-- -- local function loadModels(models)
-- --     for _, model in ipairs(models) do
-- --         streaming.request_model(model)
-- --     end

-- --     local allModelsLoaded = false
-- --     while (not allModelsLoaded) do
-- --         allModelsLoaded = true
-- --         for _, model in ipairs(models) do
-- --             if (not streaming.has_model_loaded(model)) then
-- --                 allModelsLoaded = false
-- --                 break
-- --             end
-- --         end
-- --         system.wait(10)
-- --     end
-- -- end


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




-- -- local function spawnPedFromData(pedData)
-- --     if not pedData or not pedData.modelHash then
-- --         print("Invalid ped data or missing modelHash.")
-- --         return
-- --     end

-- --     loadModels({ pedData.modelHash })

-- --     local pos = player.get_player_coords(player.get_player_ped(player.player_id()))
-- --     local ped = ped.create_ped(1, pedData.modelHash, pos, 1.0, true, false)

-- --     -- ped.set_ped_can_switch_weapons(ped, pedData.canSwitchWeapons or false)
-- --     -- ped.set_ped_max_health(ped, pedData.maxHealth or 100)
-- --     -- ped.set_ped_health(ped, pedData.health or 100)
-- --     -- ped.set_ped_combat_attributes(ped, pedData.combatAttributes or 0, true)
-- --     -- ped.set_ped_combat_ability(ped, pedData.combatAbility or 0)

-- --     -- if pedData.groupLeader then
-- --     --     ped.set_ped_as_group_leader(ped, 1)
-- --     -- end

-- --     -- if pedData.groupMember then
-- --     --     ped.set_ped_as_group_member(ped, 1)
-- --     --     ped.set_ped_never_leaves_group(ped, true)
-- --     -- end

-- --     -- if pedData.taskCombatPed then
-- --     --     ai.task_combat_ped(ped, player.get_player_ped(player.player_id()), 0, 16)
-- --     -- end

-- --     return ped
-- -- end

-- testNPC = {
--     name = "Rubio",
--     modelHash = 0xD74B8139,
--     canSwitchWeapons = false,
--     weaponHash = 0x57A4368C,
--     maxHealth = 5000,
--     health = 5000,
--     combatAttributes = 1,
--     combatAbility = 2,
--     groupLeader = true,
--     groupMember = true,
--     taskCombatPed = true,
-- }
-- -- Example implementation of spawnPedFromData function
-- -- function spawnPedFromData(npcData, pos)
-- --     if not npcData or type(npcData) ~= "table" then
-- --         return nil
-- --     end

-- --     local pedModel = npcData.modelHash
-- --     -- local pedPosition = player.get_player_coords(player.get_player_ped(player.player_id())) --v3(0, 0, 0) -- Set the position where you want to spawn the NPC

-- --     local pedHandle = ped.create_ped(1, pedModel, pos, 1.0, true, false)

-- --     -- Set NPC attributes
-- --     -- if pedHandle then
-- --     --     SetEntityInvincible(pedHandle, true)
-- --     --     SetEntityMaxHealth(pedHandle, npcData.maxHealth)
-- --     --     SetEntityHealth(pedHandle, npcData.health)
-- --     --     SetEntityAsMissionEntity(pedHandle, true, true)
-- --     --     SetEntityDynamic(pedHandle, true)
-- --     --     SetPedCombatAttributes(pedHandle, npcData.combatAttributes, true)
-- --     --     SetPedCombatAbility(pedHandle, npcData.combatAbility)
-- --     --     SetPedAccuracy(pedHandle, npcData.accuracy or 70) -- You can add more attributes based on your needs

-- --     --     -- Equip the NPC with a weapon
-- --     --     if npcData.weaponHash and npcData.canSwitchWeapons then
-- --     --         GiveWeaponToPed(pedHandle, npcData.weaponHash, 1000, true, true)
-- --     --     end

-- --     --     return pedHandle
-- --     -- else
-- --     --     return nil
-- --     -- end
-- -- end

-- -- function renderNPC(peds)
-- --     if not peds or type(peds) ~= "table" then
-- --         print("Error: Invalid or missing NPC data.")
-- --         return
-- --     end

-- --     for _, npcData in ipairs(peds) do
-- --         local ped = spawnPedFromData(npcData, pos)
-- --         if not ped then
-- --             print("Error: Failed to spawn NPC.")
-- --         end
-- --     end
-- -- end

-- function rubioHelicopter(pid)
--     local pos = player.get_player_coords(player.get_player_ped(player.player_id()))
--     -- streaming.request_model(0xD74B8139)
--     -- while (not streaming.has_model_loaded(0xD74B8139)) do
--     --     system.wait(10)
--     -- end
--     -- for i = 1, rubioSquad.numIterations or 1 do
--     -- renderNPC(testNPC, pos) 
--     -- end
--     -- for i = 1, 1 do
--         local Rubio = ped.create_ped(1, 0xD74B8139, pos + v3(math.random(-10, 10), math.random(-10, 10), 0), 1.0, true, false)
--     -- end
    
-- end

local spawnModel = require('UltimateMenu.src.models.spawnModel')
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
    }
}
function rubioHelicopter(parent)

    local pos = player.get_player_coords(player.get_player_ped(player.player_id()))
    -- streaming.request_model(0xD74B8139)
    -- streaming.request_model(0xA09E15FD)
    -- streaming.request_model(0x7ED5AD78)

    -- while (not streaming.has_model_loaded(0xD74B8139)) do
    --     system.wait(0)
    -- end

    -- while (not streaming.has_model_loaded(0xA09E15FD)) do
    --     system.wait(0)
    -- end

    -- while (not streaming.has_model_loaded(0x7ED5AD78)) do
    --     system.wait(0)
    -- end

    -- for i = 1, 1 do
        -- local Heli = vehicle.create_vehicle(0xA09E15FD, pos + v3(math.random(-200, 200), math.random(-200, 200), math.random(50, 60)), math.random(0, 0), true, false)
        -- local Heli = vehicle.create_vehicle(0xA09E15FD,  player.get_player_coords(player.get_player_ped(player.player_id())), true, false)
        -- local Heli = spawnModel.vehicle(0xA09E15FD, player.get_player_coords(player.player_id()) + v3(math.random(-10, 10), math.random(-10, 10), math.random(50, 60)), math.random(0, 0))
        -- local Rubio =  spawnModel.ped(0xD74B8139, pos + v3(math.random(-10, 10), math.random(-10, 10), 0), 1.0, true, false)
        -- local Shooter1 =  spawnModel.ped(0x7ED5AD78, pos + v3(math.random(-10, 10), math.random(-10, 10), 0), 1.0, true, false)
        -- local Shooter2 =  spawnModel.ped(0x7ED5AD78, pos + v3(math.random(-10, 10), math.random(-10, 200), 0), 1.0, true, false)







        -- local Shooter2 =  spawnModel.ped(0x7ED5AD78)
        -- weapon.give_delayed_weapon_to_ped(Shooter2, 0x9D1F17E6, 0, true)
        -- ped.set_ped_can_switch_weapons(Shooter2, false)
        -- ped.set_ped_max_health(Shooter2, 5000)
        -- ped.set_ped_health(Shooter2, 5000)
        -- ped.set_ped_combat_ability(Shooter2, 2)
        -- ped.set_ped_combat_attributes(Shooter2, 5, true)
        -- ped.set_ped_as_group_member(Shooter2, 1)
        -- ped.set_ped_never_leaves_group(Shooter2, true)
        -- ai.task_combat_ped(Shooter2, player.get_player_ped(player.player_id()), 0, 16)



        for _, property in ipairs(pedProperties) do
            local ped = spawnModel.ped(property.modelHash)
                if(ped) then
                    weapon.give_delayed_weapon_to_ped(ped, property.weaponHash or 0, 0, true)


                    if(property.canSwitchWeapons) then
                        ped.set_ped_can_switch_weapons(ped, property.canSwitchWeapons)
                    end
                    -- ped.set_ped_max_health(ped, property.maxHealth or 5000)

                    -- ped.set_ped_health(ped, property.health or 5000)
                    -- ped.set_ped_combat_attributes(ped, property.combatAttributes or 5, true)
                    -- ped.set_ped_combat_ability(ped, property.combatAbility or 2)
                    -- ped.set_ped_as_group_leader(ped, property.groupLeader or false)
                    -- ped.set_ped_as_group_member(ped, property.groupMember or false)
                
                if property.taskCombatPed then
                    ai.task_combat_ped(ped, player.get_player_ped(player.player_id()), 0, 16)
                end
            end
        end



























        -- ped.set_ped_can_switch_weapons(Rubio, false)
        -- ped.set_ped_can_switch_weapons(Shooter1, false)

        -- weapon.give_delayed_weapon_to_ped(Rubio, 0x57A4368C, 0, true)
        -- weapon.give_delayed_weapon_to_ped(Shooter1, 0x9D1F17E6, 0, true)

        
        -- ped.set_ped_max_health(Shooter1, 5000)
        -- ped.set_ped_health(Shooter1, 5000)
        
        
        -- ped.set_ped_max_health(Rubio, 5000)
        -- ped.set_ped_health(Rubio, 5000)
        
        -- ped.set_ped_into_vehicle(Shooter2, Heli, -1)
        -- vehicle.set_vehicle_engine_on(Heli, true, true, false)
        -- vehicle.control_landing_gear(Heli, 3)
        -- vehicle.set_vehicle_forward_speed(Heli, 10.0)
        -- ped.set_ped_combat_attributes(Heli, 1, true)
        -- ped.set_ped_into_vehicle(Shooter2, Heli, -1)

        -- ped.set_ped_combat_ability(Rubio, 2)
        -- ped.set_ped_combat_attributes(Rubio, 5, true)
        -- ped.set_ped_combat_ability(Shooter1, 2)
        -- ped.set_ped_combat_attributes(Shooter1, 5, true)

        -- -- ped.set_ped_into_vehicle(Shooter1, Heli, 1)


        -- -1 = pilot/driver

        -- ped.set_ped_as_group_leader(Rubio, 1)
        -- ped.set_ped_as_group_member(Shooter1, 1)

        -- ped.set_ped_never_leaves_group(Rubio, true)
        -- ped.set_ped_never_leaves_group(Shooter1, true)

        -- ai.task_combat_ped(Shooter1, player.get_player_ped(player.player_id()), 0, 16)
        -- ai.task_combat_ped(Rubio, player.get_player_ped(player.player_id()), 0, 16)
    -- end
end