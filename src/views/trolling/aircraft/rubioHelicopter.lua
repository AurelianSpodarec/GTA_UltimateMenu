local spawnModel = require('UltimateMenu.src.models.spawnModel')
local render = require('UltimateMenu.src.core.renderObjects')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

local data = {
    sms = { 
        initial = "Mr Rubio is not happy!"
    },
    squads = {
        vehicles = {
            modelHash = 0xA09E15FD,
            speed = 200,
            drivingMode = 23232323,
            spawn = {
                radius = 200,
                x = {50, 100},
                z = {50}
            },
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

function rubioHelicopter(feat, name, pid)
    local machine = render.vehicle(data.squads.vehicles, pid)

    for index, item in ipairs(data.squads.members) do
        local npc = render.npc(item, machine, pid)
         -- if(data.mode == "follow") then
            if entityHelper.request_control(npc, 25) then
                ai.task_vehicle_follow(npc, machine, player.get_player_ped(pid), data.squads.vehicles.speed, data.squads.vehicles.drivingMode, 0)
            end
            system.wait(100)
        -- end
    end
end
