local weaponModel = {}


function weaponModel.getWeapon(ult_weapon) 
    local __func__ = "function getWeapon:"

    if type(ult_weapon) == 'string' then
        if gameplay.get_hash_key(ult_weapon) == nil then
            print("ERROR", __func__, "Wrong weapon 'name ID' provided")
        end
        return gameplay.get_hash_key(ult_weapon)

        -- elseif type(ult_weapon) == 'number' then
        --     -- TODO: Check if weapon hash exists
        --     -- if gameplay.get_hash_key(ult_weapon) ~= nil then
        --     --     return print("ERROR", "function getWeapon: Wrong weapon 'hash' provided ")
        --     -- end
        --     return ult_weapon
    else
        return print("ERROR", __func__, "No weapon selected")
    end
end


function weaponModel.createArsenal(ult_pedestrian, ult_equipNow, ult_equipAfterTime, data)
    if not ult_pedestrian then
        print("ERROR", "function createArsenal: No pedestrian selected")
    end

    local equipNow = ult_equipNow or 1
    local equipAfterTime = ult_equipAfterTime or 0
    
    local defaultArsenal = {
        data['primary'] or "weapon_heavyrifle",
        data['secondary'] or "weapon_smg",
        data['melee'] or "weapon_knife",
        data['throwables'] or "weapon_grenade"
        -- data['launchers'] or "weapon_hominglauncher"
    }
   
    for weaponIndex = 1, #defaultArsenal do
        weapon.give_delayed_weapon_to_ped(ult_pedestrian, weaponModel.getWeapon(defaultArsenal[weaponIndex]), equipAfterTime, equipNow)
    end
end

return weaponModel