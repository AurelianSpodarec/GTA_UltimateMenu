local render = require('UltimateMenu.src.core.renderObjects')

local suicideBombers = {
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
            }
        }
    }
}

function suicideBomber(parent, name, pid)
    render.npc(suicideBombers.squads.members, nil, pid)
end
