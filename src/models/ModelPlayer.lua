local ModelPlayer = {}

function ModelPlayer.name(ID)
    if player.is_player_valid(ID) then
        return player.get_player_name(ID)
    else
        return 'Invalid Player'
    end
end

function ModelPlayer.SCID(ID)
    if player.is_player_valid(ID) then
        local s = player.get_player_scid(ID)
        if s ~= -1 then
            return s
        end
    else
        return -1
    end
end

function ModelPlayer.IP(ID)
    if player.is_player_valid(ID) then
        local playerip = player.get_player_ip(ID)
        return string.format(
            '%i.%i.%i.%i',
            (playerip >> 24) & 0xff,
            ((playerip >> 16) & 0xff),
            ((playerip >> 8) & 0xff),
            playerip & 0xff
        )
    else
        return -1
    end
end

function ModelPlayer.hostToken(ID)
    if player.is_player_valid(ID) then  
        return player.get_player_host_token(ID)
    else
        return 1
    end
end

function ModelPlayer.hostPriority(ID)
    if player.is_player_valid(ID) then
        return player.get_player_host_priority(ID)
    else
        return 31
    end
end

function ModelPlayer.input(Title, Lenght, Type, Name)
    if not Title then
        return nil
    end

    Name = Name or ''
    Lenght = Lenght or 64
    Type = Type or 0
    local err, i = input.get(Title, Name, Lenght, Type)

    while err == 1 do
        system.wait(0)
        err, i = input.get(Title, Name, Lenght, Type)
    end

    if err == 2 then
        return nil
    end

    return i
end


function ModelPlayer.wwnPed()
    return player.get_player_ped(player.player_id())
end

function ModelPlayer.ownVehicle()
    return ped.get_vehicle_ped_is_using(player.get_player_ped(player.player_id()))
end

function ModelPlayer.ownHeading()
    return player.get_player_heading(player.player_id())
end

function ModelPlayer.ownCoords()
    return player.get_player_coords(player.player_id())
end


return ModelPlayer