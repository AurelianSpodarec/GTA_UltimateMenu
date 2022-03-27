require("GTA_LawEnforcement/Menu/Army/features/armyGodMode")
require("GTA_LawEnforcement/Menu/Army/features/armyJets")
require("GTA_LawEnforcement/Menu/Army/features/armyPersonel")
require("GTA_LawEnforcement/Menu/Army/features/armyTanks")
require("GTA_LawEnforcement/Menu/Army/features/armyVehicles")
local Spawn = require('GTA_LawEnforcement.Utils.Spawn')






 
-- local armmySubMenu = {
--     {
--         'name' = "Spawn Military Vehicles",
--         'parent' = false,
--         'function' = nil
--     }
-- }
-- loop over it and create a menu like that instead

--  local militaryVehicles = {
--     {
--         model = "RHINO", 
--         hash = 782665360, 
--         name = "Rhino", 
--         category = "Car"
--     },
--     {
--         model = "BARRACKS", 
--         hash = 3471458123, 
--         name = "Barracks", 
--         category = "Car"
--     },
-- }


-- get model by name 

-- function createMenuItem(item, featureType, parentID, functionality)
--     add_feature(item, featureType, parentID, functionality)
-- end


-- function spawnVehicle(hash)
--     Spawn.Vehicle(hash, player.get_player_coords(player.player_id()), entity.get_entity_heading(player.get_player_ped(player.player_id()))
-- end



-- Army 
-- Vehicles
-- - Combat
-- -- tank, tank2 etc
-- - Planes
-- -- lazer, hydra, byro
-- - Cars
-- etc

    

local menuData = {
    military = {
        name = "Military",
        spawn_vehicles = {
            name = "Spawn Vehicles",
            children = {
                {
                    name = "Cars",
                    children = {
                        {
                            name = 'Ramp Buggy',
                            hash = 0xCEB28249
                        },
                    },
                },
                {
                    name = "Planes",
                    children = {
                        {
                            name = 'Akula',
                            hash = 0x46699F47
                        },
                        {
                            name = 'Annihilator',
                            hash = 0x31F0B376
                        },
                        {
                            name = 'Buzzard',
                            hash = 0x2F03547B
                        },
                        {
                            name = 'Hunter',
                            hash = 0xFD707EDE
                        },
                        {
                            name = 'Savage',
                            hash = 0xFB133A17
                        },
                        {
                            name = 'Valkyrie',
                            hash = 0xA09E15FD
                        },
                        {
                            name = 'Valkyrie 2',
                            hash = 0x5BFA5C4B
                        },
                        {
                            name = 'Annihilator 2',
                            hash = 0x11962E49
                        },
                        {
                            name = 'Avenger',
                            hash = 0x81BD2ED0
                        },
                        {
                            name = 'Bombushka',
                            hash = 0xFE0A508C
                        },
                        {
                            name = 'Hydra',
                            hash = 0x39D6E83F
                        },
                        {
                            name = 'Lazer',
                            hash = 0xB39B0AE6
                        },
                        {
                            name = 'B-11 Strikeforce',
                            hash = 0x64DE07A1
                        },
                        {
                            name = 'Alkonost',
                            hash = 0xEA313705
                        }
                    }
                },
                {
                    name = "Combat Vehicle",
                    children = {
                        {
                            model = "RHINO", 
                            hash = 782665360, 
                            name = "Rhino", 
                            category = "Car"
                        },
                        {
                            model = "BARRACKS", 
                            hash = 3471458123, 
                            name = "Barracks", 
                            category = "Car"
                        },
                        {
                            name = 'APC',
                            hash = 0x2189D250
                        },
                    }
                }
            }
        },
        trolling = {
            name = "Trolling",
            children = {
                -- attack
            }
        },
        peaceful = {
            name = "Peaceful",
            children = {
                -- protection
            }
        }
    },
    police = {
        name = "Police",
        children = {

        }
    }

}

-- function spawnByHash(hash)
--     Spawn.Vehicle(hash, player.get_player_coords(player.player_id()), entity.get_entity_heading(player.get_player_ped(player.player_id()))
-- end

-- backup
-- swat, police, army: will follow around X player as bodyguards, if someone attacks, they go chase after them


function createArmyMenu(parent, config)

    
    militarySubmenu = menu.add_feature(menuData.military.name, "parent", parent.id, nil)


    militarySpawnVehice = menu.add_feature(menuData.military.spawn_vehicles.name, "parent", militarySubmenu.id, nil)
    for index = 1, #menuData.military.spawn_vehicles.children do

        local item = menuData.military.spawn_vehicles.children[index]
        local parent = menu.add_feature(item.name, "parent", militarySpawnVehice.id, nil)

        for j = 1, #item.children do
            local submenu = item.children[j]

            menu.add_feature(submenu.name, "action", parent.id,  function(f) 
                -- Spawn.Vehicle(782665360, player.get_player_coords(player.player_id()), entity.get_entity_heading(player.get_player_ped(player.player_id()))
                Spawn.Vehicle(submenu.hash, player.get_player_coords(player.player_id()), entity.get_entity_heading(player.get_player_ped(player.player_id())))
            end)
            -- spawn the vehicle
        end

    end


    militaryTrolling = menu.add_feature(menuData.military.trolling.name, "parent", militarySubmenu.id, nil)
    militaryPeaceful = menu.add_feature(menuData.military.peaceful.name, "parent", militarySubmenu.id, nil)


end

     
    

    -- for key in pairs(militaryVehicles) do
    --     menu.add_feature(militaryVehicles[key]['name'], "action", armySubmenu_vehicles.id,  Spawn.Vehicle(militaryVehicles[key]['hash'], player.get_player_coords(player.player_id()), entity.get_entity_heading(player.get_player_ped(player.player_id())))
    -- )
    -- end
    
   


    -- armySubmenu_godMode = menu.add_feature('God Mode', "toggle", armySubmenu.id, armyGodMode)
    -- armySubmenu_personel = menu.add_feature('Personel', "action", armySubmenu.id, armyPersonel)
    -- armySubmenu_tanks = menu.add_feature('Tanks', "action", armySubmenu.id, armyTanks)
    -- armySubmenu_jets = menu.add_feature('Jets', "action", armySubmenu.id, armyJets)
    -- armySubmenu_vehicles = menu.add_feature('Spawn Military Vehicles',  armySubmenu.id, armyVehicles)
