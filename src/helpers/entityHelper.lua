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


return entityHelper