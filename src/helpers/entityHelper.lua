local entityHelper = {}


function entityHelper.request_control(ult_entity, time)
    local time = utils.time_ms() + (time or 2000)
    network.request_control_of_entity(ult_entity)

    while time > utils.time_ms() and entity.is_an_entity(ult_entity) 
        and not network.has_control_of_entity(ult_entity) do
        system.yield(0)
    end

    return network.has_control_of_entity(ult_entity)
end


function entityHelper.request_model(ult_hash, time)
    if ult_hash and not streaming.has_model_loaded(ult_hash) then
        streaming.request_model(ult_hash)
        local time = utils.time_ms() + 7500

        while not streaming.has_model_loaded(ult_hash) do
            system.wait(0)

            if time < utils.time_ms() then
                return false
            end
        end

    end

    return true
end


-- pointEntityHorizontalyTowards
-- function pointEntityHorizontalyOnPlayer(ult_entity, ult_player)
--     local entityCords = entity.get_entity_coords(ult_entity)
--     local playerCords = entity.get_entity_coords((player.get_player_ped(ult_player)))

--     local diffX = playerCords.x - entityCords.x
--     local diffY = playerCords.y - entityCords.y
--     local diffZ = playerCords.z - entityCords.z

--     local pointAtHeadingAngle = math.atan(diffX, diffY) * -180 / math.pi
 
--     entity.set_entity_heading(ult_entity, pointAtHeadingAngle)
-- end

-- pointEntityTowards
function entityHelper.pointEntityTowards(from, towards)
    local entityCords = entity.get_entity_coords(from)
    local playerCords = entity.get_entity_coords(towards)
    local playerHeight = 2;

    local diffX = playerCords.x - entityCords.x
    local diffY = playerCords.y - entityCords.y
    local diffZ = (entityCords.z - playerCords.z + playerHeight) * -1

    local pointAtHeadingAngle = math.atan(diffX, diffY) * -180 / math.pi
    local pointAtAngle = math.asin(diffZ / playerCords:magnitude(entityCords)) / (2 * math.pi) * 360
    
    system.yield(15)
    entity.set_entity_rotation(from, v3(pointAtAngle, 0, pointAtHeadingAngle))
end


return entityHelper


-- function SpawnRandomRange()
-- horizon, vertical, diagnonal - max random
-- end
