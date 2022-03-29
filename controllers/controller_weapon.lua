local data = require('GTA_LawEnforcement.data.weapons')


local controllerWeapon = {}
 
function controllerWeapon.all(parent)
     
    for index = 1, #data do
        -- local category = data[index]

    --     local categoryName = category.name
    --     local weapons = category.children

    --     menu.add_feature(categoryName, "parent", parent, nil).id

    --     for j = 1, weapons do
    --         local weapon = weapons[j]
    --         menu.add_feature(weapon.name, "action", parent, function(f)                 
    --         end)
    --     end

    end
    
end


function controllerWeapon.byCategory(parent, category)

end


function controllerWeapon.byName()

end



function controllerWeapons(category)

    -- check if category exists, if not throw out notification/error

end

return controllerWeapon



--/ Should render it by category or by all
-- Get data, parse it, display it, reuse it without having to duplicate code

-- display all weapons

--  get data from database, and return it

-- similar to model, except that this renders the data
-- services used to store the logic 












 

        -- local item = data[i]
        -- local itemChildren = item.children
        -- local parent = menu.add_feature(item.name, "parent", parent, nil).id

        -- for j = 1, #itemChildren do
            -- local area = itemChildren[j]

            -- menu.add_feature(area.name, "action", parent, function(f) 
            --     ULT_Spawn.Vehicle(area.hash, player.get_player_coords(player.player_id()))
            -- end)
        -- end
 
-- get_all_weapon_hashes()
-- #### string             get_weapon_name(Hash weapon)


-- get_all_weapon_hashes()
-- #### string             get_weapon_name(Hash weapon)


-- function displayAllWeapons()
--     allWeaponHashes <const> = weapons.get_all_weapon_hashes();

--     for index = 1; #allWeaponsHashes then
--         print(allWeaponHashes)
--     end

-- end