local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')
local render = require('UltimateMenu.src.core.renderObjects')

local data = {
    sms = { 
        initial = "You hit my ride, you bastard!"
    },
    squads = {
        relationship = 1, -- protect, attack, follow, 
        vehicles = {
            modelHash = -2048333973,
            drivingMode = 17039360,
            speed = 200,
            engine = {
                on = true,
            },
            mode = "follow"
        },
        members = {
            {
                name = "Driver",
                modelHash = -413447396,
                seat = -1,
                mode = "follow"
            }
        }
    }
}

function carAccident(parent, name, pid)
    local machine = data.squads.vehicles
    local members = data.squads.members

    player.send_player_sms(pid, data.sms.initial)

    local car = render.vehicle(machine, npcs, pid)
    local npcs = render.npc(members, car, pid)

end
