local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')
local render = require('UltimateMenu.src.core.renderObjects')

local dataCriminal = {
    squads = {
        relationship = 1, -- protect, attack, follow, 
        vehicles = {
            modelHash = 0xE33A477B,
            drivingMode = 17039360,
            speed = 200,
            engine = {
                on = true,
            },
            spawn = {
                x = {50, 50},
            },
            mode = "follow"
        },
        members = {
            {
                name = "Driver",
                modelHash = -413447396,
                seat =  -1,
                mode = "follow"
            }
        }
    }
}

local dataCop = {
    squads = {
        relationship = 1, -- protect, attack, follow, 
        vehicles = {
            modelHash = 0x79FBB0C5,
            drivingMode = 17039360,
            speed = 200,
            sirens = true,
            engine = {
                on = true,
            },
            spawn = {
                x = {50, 50},
            },
            mode = "follow"
        },
        members = {
            {
                name = "Driver",
                modelHash = 1581098148,
                seat =  -1,
                mode = "follow"
            }
        }
    }
}

function copChasesCar(parent, name, pid)

    local criminalMachine = dataCriminal.squads.vehicles
    local criminalMembers = dataCriminal.squads.members

    local criminalCar = render.vehicle(criminalMachine, pid)
    local criminalNpc

    for _, item in ipairs(criminalMembers) do
        criminalNpc = render.npc(item, criminalCar, pid)

        if(criminalNpc) then

            if(item.seat == -1) then
                if entityHelper.request_control(criminalNpc, 25) then
                    ai.task_vehicle_follow(criminalNpc, criminalCar, player.get_player_ped(pid), criminalMachine.speed, criminalMachine.drivingMode, 0)
                    -- ai.set_task_vehicle_chase_ideal_persuit_distance(player.get_player_ped(pid), 30)
                end
                system.wait(100)

                -- task_vehicle_drive_wander(Ped ped, Vehicle vehicle, float speed, int driveStyle)
                -- task_vehicle_drive_to_coord_longrange(Ped ped, Vehicle vehicle, v3 pos, float speed, int mode, float stopRange)
                -- task_vehicle_escort(Ped ped, Vehicle vehicle, Vehicle targetVehicle, int mode, float speed, int drivingStyle, float minDistance, int a8, float noRoadsDistance)
                -- task_vehicle_follow(Ped driver, Vehicle vehicle, Entity targetEntity, float speed, int drivingStyle, int minDistance)
                -- task_vehicle_drive_to_coord(Ped ped, Vehicle vehicle, v3 coord, float speed, int a5, Hash vehicleModel, int driveMode, float stopRange, float a9)
                -- task_vehicle_shoot_at_coord(Ped ped, v3 coord, float a3)
                -- task_vehicle_shoot_at_ped(Ped ped, Ped target, float a3)
                -- task_vehicle_aim_at_coord(Ped ped, v3 coord)
                -- task_vehicle_aim_at_ped(Ped ped, Ped target)
                -- task_vehicle_chase(Ped driver, Entity target)
                -- set_task_vehicle_chase_behaviour_flag
                -- set_task_vehicle_chase_ideal_persuit_distance(pd, float
            end

        end

    end


    local copMachine = dataCop.squads.vehicles
    local copMembers = dataCop.squads.members

    local copCar = render.vehicle(copMachine, pid)

    for _, copItem in ipairs(copMembers) do
        local copNpc = render.npc(copItem, copCar, pid)

        if(copNpc) then

            if(copItem.seat == -1) then
                if entityHelper.request_control(copNpc, 25) then
                    ai.task_vehicle_follow(copNpc, copCar, criminalNpc, copMachine.speed, copMachine.drivingMode, 0)
                    native.call(0xF4924635A19EB37D, copCar, true )
                end
                system.wait(100)
            end

        end

    end

    -- follow close porximity
end
