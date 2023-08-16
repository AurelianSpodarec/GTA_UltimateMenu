local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')
local render = require('UltimateMenu.src.core.renderObjects')

local data = {
    squads = {
        members = {
            -- relationship = 1, -- protect, attack, follow,
            {
                name = "Driver",
                modelHash = -413447396,
                seat =  -1,
                mode = "follow"
            }
        }
    }
}

function testDispatch(parent, name, pid) 
    for index, item in ipairs(data.squads.members) do
        local npc = render.npc(item, car, pid)

        -- Follow player
        -- group player
        -- shoot any enemies
        


        -- if(item.taskCombatPed) then
        --     ai.task_combat_ped(npc, pid, 0, 16)
        -- end

        -- Friendly, bodyguard, 
        -- group players by name



    end
end