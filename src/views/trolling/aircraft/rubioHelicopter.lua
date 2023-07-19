local spawnModel = require('UltimateMenu.src.models.spawnModel')
local render = require('UltimateMenu.src.core.renderObjects')

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
-- --                
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
        groupLeader = 1,
        groupMember = 9999,
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
        groupMember = 9999,
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
        groupMember = 9999,
        taskCombatPed = true,
    }
}




function rubioHelicopter(parent)

    local pos = player.get_player_coords(player.get_player_ped(player.player_id()))


    render.npc(pedProperties)
    
end
