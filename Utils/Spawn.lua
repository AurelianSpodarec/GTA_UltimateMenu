local Spawn = {}


local function request_model(Hash)
    if Hash and not streaming.has_model_loaded(Hash) then
        streaming.request_model(Hash)
        local time = utils.time_ms() + 7500

        while not streaming.has_model_loaded(Hash) do
            system.wait(0)

            if time < utils.time_ms() then
                return false
            end
            
        end

    end

    return true
end



function Spawn.Vehicle(Hash, Position, Heading, Networked, unk1)
    if not Hash or not streaming.is_model_a_vehicle(Hash) then
        return
    end

    request_model(Hash)
    Position = Position or v3()
    Heading = Heading or 0.0
    Networked = Networked or true
    unk1 = unk1 or false

    local Vehicle = vehicle.create_vehicle(Hash, Position, Heading, Networked, unk1)
    streaming.set_model_as_no_longer_needed(Hash)

    return Vehicle
end

return Spawn