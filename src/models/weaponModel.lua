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


-- function weaponModel.createArsenal(ult_pedestrian, ult_equipNow, ult_equipAfterTime, ult_primaryWeapon, ult_secondaryWeapon, ult_melee, ult_throwables, ult_launchers)
function weaponModel.createArsenal(ult_pedestrian, ult_equipNow, ult_equipAfterTime, data)
    if not ult_pedestrian then
        print("ERROR", "function createArsenal: No pedestrian selected")
    end

    -- check if data exists, if not, use default seetings

    local equipNow = ult_equipNow or 1
    local equipAfterTime = ult_equipAfterTime or 0
    
    local defaultArsenal = {
        data['primary'] or "weapon_heavyrifle",
        data['secondary'] or "weapon_smg",
        data['melee'] or "weapon_knife",
        data['throwables'] or "weapon_grenade",
        data['launchers'] or "weapon_hominglauncher"
    }
   
    -- needs to be a different loop to set all I think pairs
    for weaponIndex = 1, #defaultArsenal do
        -- for key, value in pairs(defaultArsenal) do
        weapon.give_delayed_weapon_to_ped(ult_pedestrian, weaponModel.getWeapon(defaultArsenal[weaponIndex]), equipAfterTime, equipNow)
    end
end

return weaponModel

-- Shooting games
    -- Primary Weapons
    --     Assault Rifles
    --     SMGS
    --     Shotguns
    --     LMGS
    --     Marksman Rifles
    --     Sniper Rifles
    --     Melee
    -- Secondary Weapons
    --     Handguns
    --     Launchers
    --     Melee
-- GTA: Car(smg), Foot(close by:assault, farby: sniper), 

    -- weapon sample
    -- {
    --     name: "Hand Gun",
    --     ref: "hand_gun"
    --     hash: 999999,
    -- }
