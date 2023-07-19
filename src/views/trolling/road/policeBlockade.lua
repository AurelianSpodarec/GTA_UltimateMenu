-- police, tank blockade etc... spikes

local spawnModel = require('UltimateMenu.src.models.spawnModel')
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

function policeBlockade(parent)

    local playerPos = player.get_player_coords(player.player_id())

    local randomOffsetX = 0
    local yOffset = 100
    local zOffset = 0

    local forwardVector = entity.get_entity_forward_vector(player.get_player_ped(player.player_id()))
    local spawnPosition = playerPos + forwardVector * yOffset

    local car = spawnModel.vehicle(0x2EA68690, spawnPosition + v3(randomOffsetX, 0, 0))

    vehicle.set_vehicle_mod_kit_type(car, 0)

end
