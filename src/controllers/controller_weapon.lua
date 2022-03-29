local data = require('GTA_LawEnforcement.data.weapons')
local ModelPed = require('GTA_LawEnforcement.models.ModelPed')

local controllerWeapon = {}
 
function controllerWeapon.all(parent, callback)
     
    for index = 1, #data do
        local ult_category = data[index]

        local ult_categoryName = ult_category.name
        local ult_weapons = ult_category.children

        local ult_categoryParent = menu.add_feature(ult_categoryName, "parent", parent, nil).id

        for j = 1, #ult_weapons do
            ult_weapon = ult_weapons[j]
            menu.add_feature(ult_weapon.name, "action", ult_categoryParent, function()                   
                callback(ult_weapon.hash)
                -- ModelPed.setWeapon(ult_weapon.hash) -- functoin that's being passsed, doesn't work
                -- ModelPed.setWeapon(0x476BF155) 

                -- ModelPed.setAllWeapon() -- works
                -- ModelPed.setWeapon(ult_weapon.hash) -- doesn't
            
            end)
        end

    end
    
end


--     local peds <const> = ped.get_all_peds()
--     for i = 1, #peds do
--         if not ped.is_ped_a_player(peds[i]) then
--             if HP_Entity.request_control(peds[i], 25) then
--                 weapon.give_delayed_weapon_to_ped(peds[i],  weapon.hash, 10000, equippedOnSpawn)
--             end
--         end
--     end 


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



-- In JS, how would you achieve this? Its pseudo code per say but that's the idea

-- ```js

-- function Add(a, b) {
--     return a + b;
-- }

-- function Subtract(a, b) {
--     return a - b;
-- }




-- function MakeCalculation(func) {
--     const value1 = 5
--     const value2 = 8

--     return func(value1, value2)
-- }



-- function Calculator() {
--     Calculation(Add)
--     Calculation(Subtract)
-- }
-- ```



 

        -- local item = data[i]
        -- local itemChildren = item.children
        -- local parent = menu.add_feature(item.name, "parent", parent, nil).id

        -- for j = 1, #itemChildren do
            -- local area = itemChildren[j]

            -- menu.add_feature(area.name, "action", parent, function(f) 
            --     ModelSpawn.Vehicle(area.hash, player.get_player_coords(player.player_id()))
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