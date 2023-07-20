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
            modelHash = 0x79FBB0C5,---2048333973,
            drivingMode = 17039360,
            speed = 200,
            engine = {
                on = true,
            },
            spawn = {
                radius = {200, 200},
                x = {-50, 50},
                z = {50, 50}
            },
            mode = "follow"
        },
        members = {
            {
                name = "Driver",
                modelHash = -413447396,
                seat =  -1,
                mode = "follow"
            },
            {
                name = "Passanger",
                modelHash = -413447396,
                seat = 1,
                mode = "follow"
            }, 
            {
                name = "Passanger",
                modelHash = -413447396,
                seat = 2,
                mode = "follow"
            }
        }
    }
}

function carAccident(parent, name, pid)
    player.send_player_sms(pid, data.sms.initial)
    local machine = data.squads.vehicles
    local members = data.squads.members

    local car = render.vehicle(machine, pid)

    for index, item in ipairs(members) do
        local npc = render.npc(item, car, pid)


        if(npc) then

            if(item.seat == -1) then
                if entityHelper.request_control(npc, 25) then
                    ai.task_vehicle_follow(npc, car, player.get_player_ped(pid), machine.speed, machine.drivingMode, 0)
                    vehicle.start_vehicle_horn(car, 1, 0xF4924635A19EB37D, true)
                    native.call(0xF4924635A19EB37D, car, true ) -- turn on sirens
                end
                system.wait(100)
            end

        end
        

    end

end
