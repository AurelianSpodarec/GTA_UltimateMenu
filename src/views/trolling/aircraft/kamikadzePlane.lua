local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')
local render = require('UltimateMenu.src.core.renderObjects')

local squadKamikadzePlane = {
    sms = { 
        initial = "Mayday Mayday! We got shot! Engine down, ENGINE DO..."
    },
    squads = {
        relationship = 1, -- protect, attack, follow, 
        vehicles = {
            modelHash = -1214505995,
            drivingMode = 17039360,
            speed = 200,
            engine = {
                on = true,
            }
        },
        members = {
            {
                name = "Pilot",
                modelHash = -413447396,
                seat = -1,
            }
        }
    }
}

function kamikadzePlane(parent, name, pid)
    local machine = squadKamikadzePlane.squads.vehicles
    local members = squadKamikadzePlane.squads.members

    player.send_player_sms(pid, squadKamikadzePlane.sms.initial)

    local plane = render.vehicle(squadKamikadzePlane.squads.vehicles.modelHash, pid)
    render.npc(members, plane)

    while not entity.is_entity_dead(plane) do
        if entityHelper.request_control(plane, 0) then

            entityHelper.pointEntityTowards(plane, player.get_player_ped(pid))
            vehicle.set_vehicle_on_ground_properly(plane)
            vehicle.control_landing_gear(plane, 3)
            system.yield(15)
            
            vehicle.set_vehicle_forward_speed(plane, 200)

        end
        system.wait(0)
    end
end
