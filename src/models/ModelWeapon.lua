local ModelWeapon = {}


function ModelWeapon.getWeapon(ult_weapon) 
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


function ModelWeapon.createArsenal(ult_pedestrian, ult_equipNow, ult_equipAfterTime, ult_primaryWeapon, ult_secondaryWeapon, ult_melee, ult_throwables, ult_launchers)
    if not ult_pedestrian then
        print("ERROR", "function createArsenal: No pedestrian selected")
    end
    
    local equipNow = ult_equipNow or 1
    local equipAfterTime = ult_equipAfterTime or 0

    local defaultArsenal = {
        {
            name = "Primary Weapon",
            type = ult_primaryWeapon or "weapon_heavyrifle",
            _whenTo = "on foot"
        },
        {
            name = "Secondary Weapon",
            type = ult_secondaryWeapon or "weapon_smg",
            _whenTo = "in a vehicle "
        },
        {
            name = "Melee",
            type = ult_melee or "weapon_knife",
            _whenTo = "close proximity"
        },
        {
            name = "Throwables",
            type = ult_throwables or "weapon_grenade",
            _whenTo = "attacker is taking cover behind an entity"
        },
        {
            name = "Launchers",
            type = ult_launchers or "weapon_hominglauncher",
            _whenTo = "attacker is fleeing in a vehicle or in air vehicle"
        }
    }

    for weaponIndex = 1, #defaultArsenal do
        return weapon.give_delayed_weapon_to_ped(ult_pedestrian, ModelWeapon.getWeapon(defaultArsenal[weaponIndex].type), equipAfterTime, equipNow)
    end
end

return ModelWeapon

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
