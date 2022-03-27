local CustomData = require('GTA_LawEnforcement.Data.CustomData')
-- local MenuData = require('GTA_LawEnforcement.Data.MenuData')

-- create a list from UI, parse JSON list

-- Data, Parent
-- function createList(data, parent)
--     for i = 1, #data do
--         local item = data[i]
--         local parent = menu.add_feature(item.Name, "parent", parent.id)
        
--         for j=1,#item.Children do
--             local area = item.Children[j]
            
--             menu.add_feature(area.Name, "action", parent.id, nil)
--         end
--     end
-- end


function MilitaryMenu(parent)

 

    militaryMenu = menu.add_feature("Military", "parent", parent.id, nil)

    spawnVehicle = menu.add_feature("Spawn Vehicles", "parent", militaryMenu.id, nil)
    print(CustomData)
    -- createList(CustomData.vehicles.military, spawnVehicle)

    -- for i = 1, #CustomData.vehicles.military do
    --     local item = CustomData.vehicles.military[i]
    --     local parent = menu.add_feature(item.Name, "parent", _2t1script.parent['Block Areas']).id
        
    --     for j=1,#item.Children do
    --         local area = item.Children[j]
            
    --         menu.add_feature("Block " .. area.Name, "action", parent, block_area).data = area
    --     end
    -- end

    -- Military 
    
        -- Spaw nVehicles
            -- - Cars
            -- boats
            -- planes
            -- helicopters
            -- heavy
        -- Send Backup
        -- Grief
        -- Protect


end

-- function createArmyMenu(parent, config)

    
--     militarySubmenu = menu.add_feature(MenuData.military.name, "parent", parent.id, nil)


--     militarySpawnVehice = menu.add_feature(MenuData.military.spawn_vehicles.name, "parent", militarySubmenu.id, nil)
--     for index = 1, #MenuData.military.spawn_vehicles.children do

--         local item = MenuData.military.spawn_vehicles.children[index]
--         local parent = menu.add_feature(item.name, "parent", militarySpawnVehice.id, nil)

--         for j = 1, #item.children do
--             local submenu = item.children[j]
--             menu.add_feature(submenu.name, "action", parent.id,  function(f) 
--                 Spawn.Vehicle(submenu.hash, player.get_player_coords(player.player_id()))
--             end)
--         end

--     end

--     militaryTrolling = menu.add_feature(MenuData.military.trolling.name, "parent", militarySubmenu.id, nil)
--     militaryPeaceful = menu.add_feature(MenuData.military.peaceful.name, "parent", militarySubmenu.id, nil)


-- end