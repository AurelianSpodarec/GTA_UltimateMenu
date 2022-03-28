local HP_Entity = {}

function HP_Entity.request_control(Entity, time)
    local time = utils.time_ms() + (time or 2000)
    network.request_control_of_entity(Entity)

    while time > utils.time_ms() and entity.is_an_entity(Entity) and not network.has_control_of_entity(Entity) do
      system.yield(0)
    end

    return network.has_control_of_entity(Entity)
end

return HP_Entity