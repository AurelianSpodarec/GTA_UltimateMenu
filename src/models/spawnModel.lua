local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper')



local spawnModel = {};

function spawnModel.ped(ult_hash, ult_position, ult_pedType, ult_heading, ult_networked, ult_unk1)
    if not ult_hash or not streaming.is_model_a_ped(ult_hash) then
        return
    end

    entityHelper.request_model(ult_hash)
    ult_pedType = ult_pedType or 26
    ult_position = ult_position or player.get_player_coords(player.player_id())
    ult_heading = ult_heading or 0.0
    ult_networked = ult_networked or true
    ult_unk1 = ult_unk1 or false

    local ult_ped = ped.create_ped(ult_pedType, ult_hash, ult_position, ult_heading, ult_networked, ult_unk1)
    streaming.set_model_as_no_longer_needed(ult_hash)

    return ult_ped
end

function spawnModel.vehicle(ult_hash, ult_position, ult_heading, ult_networked, ult_unk1)
    if not ult_hash or not streaming.is_model_a_vehicle(ult_hash) then
        return
    end

    entityHelper.request_model(ult_hash)
    ult_position = ult_position or player.get_player_coords(player.player_id()) --TODO: random position v3()
    ult_heading = ult_heading or 0.0
    ult_networked = ult_networked or true
    ult_unk1 = ult_unk1 or false

    local ult_vehicle = vehicle.create_vehicle(ult_hash, ult_position, ult_heading, ult_networked, ult_unk1)
    streaming.set_model_as_no_longer_needed(ult_hash)

    return ult_ehicle
end

function spawnModel.object(ult_hash, ult_position, ult_networked, ult_dynamic)
    if not ult_hash or not streaming.is_model_an_object(ult_hash) then
        return
    end

    entityHelper.request_model(ult_hash)
    ult_position = ult_position or v3()
    ult_networked = ult_networked or true
    ult_dynamic = ult_dynamic or false

    local ult_object = object.create_object(ult_hash, ult_position, ult_networked, ult_dynamic)
    streaming.set_model_as_no_longer_needed(ult_hash)

    return ult_object
end

function spawnModel.worldObject(ult_hash, ult_position, ult_networked, ult_dynamic)
    if not ult_hash or not streaming.is_model_a_world_object(ult_hash) then
        return
    end

    entityHelper.request_model(ult_hash)
    ult_position = ult_position or v3()
    ult_networked = ult_networked or true
    ult_dynamic = ult_dynamic or false

    local worldObject = object.create_world_object(ult_hash, ult_position, ult_networked, ult_dynamic)
    streaming.set_model_as_no_longer_needed(ult_hash)

    return worldObject
end

return spawnModel;