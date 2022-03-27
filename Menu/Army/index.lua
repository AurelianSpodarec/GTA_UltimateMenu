local Spawn = require('GTA_LawEnforcement.Utils.Spawn')
local MenuData = require('GTA_LawEnforcement.Data.MenuData')

require("GTA_LawEnforcement/Menu/Army/features/armyGodMode")
require("GTA_LawEnforcement/Menu/Army/features/armyJets")
require("GTA_LawEnforcement/Menu/Army/features/armyPersonel")
require("GTA_LawEnforcement/Menu/Army/features/armyTanks")
require("GTA_LawEnforcement/Menu/Army/features/armyVehicles")

-- backup
-- swat, police, army: will follow around X player as bodyguards, if someone attacks, they go chase after them

function createArmyMenu(parent, config)

    
    militarySubmenu = menu.add_feature(MenuData.military.name, "parent", parent.id, nil)


    militarySpawnVehice = menu.add_feature(MenuData.military.spawn_vehicles.name, "parent", militarySubmenu.id, nil)
    for index = 1, #MenuData.military.spawn_vehicles.children do

        local item = MenuData.military.spawn_vehicles.children[index]
        local parent = menu.add_feature(item.name, "parent", militarySpawnVehice.id, nil)

        for j = 1, #item.children do
            local submenu = item.children[j]
            menu.add_feature(submenu.name, "action", parent.id,  function(f) 
                Spawn.Vehicle(submenu.hash, player.get_player_coords(player.player_id()))
            end)
        end

    end


    militaryTrolling = menu.add_feature(MenuData.military.trolling.name, "parent", militarySubmenu.id, nil)
    militaryPeaceful = menu.add_feature(MenuData.military.peaceful.name, "parent", militarySubmenu.id, nil)


end

     
     


    -- armySubmenu_godMode = menu.add_feature('God Mode', "toggle", armySubmenu.id, armyGodMode)
    -- armySubmenu_personel = menu.add_feature('Personel', "action", armySubmenu.id, armyPersonel)
    -- armySubmenu_tanks = menu.add_feature('Tanks', "action", armySubmenu.id, armyTanks)
    -- armySubmenu_jets = menu.add_feature('Jets', "action", armySubmenu.id, armyJets)
    -- armySubmenu_vehicles = menu.add_feature('Spawn Military Vehicles',  armySubmenu.id, armyVehicles)
