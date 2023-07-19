local spawnModel = require('UltimateMenu.src.models.spawnModel')
local render = require('UltimateMenu.src.core.renderObjects')

local squadRubio = {
    sms = { 
        initial = "Mr Rubio is not happy!"
    },
    squads = {
        vehicles = {
            modelHash = 0xA09E15FD,
        },
        members = {
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
                seat = -1,
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
                seat = 1,
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
                seat = 2
            }
        }
    }
}

function rubioHelicopter(parent)
    local heli = render.vehicle(squadRubio.squads.vehicles.modelHash)
    render.npc(squadRubio.squads.members, heli)
end
