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
            engine = {
                on = true,
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
                end
                system.wait(100)
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
                    print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", criminalNpc)
                    ai.task_vehicle_follow(copNpc, copCar, criminalNpc, copMachine.speed, copMachine.drivingMode, 0)
                end
                system.wait(100)
            end

        end

    end









    -- local criminalMachine = dataCriminal.squads.vehicles
    -- local criminalMembers = dataCriminal.squads.members

    -- local car = render.vehicle(criminalMachine, pid)

    -- for index, item in ipairs(criminalMembers) do
    --     local npc = render.npc(item, car, pid)

    --     if(npc) then

    --         if(item.seat == -1) then
    --             if entityHelper.request_control(npc, 25) then
    --                 ai.task_vehicle_follow(npc, car, player.get_player_ped(pid), criminalMachine.speed, criminalMachine.drivingMode, 0)
    --             end
    --             system.wait(100)
    --         end

    --     end
        

    -- end









end
