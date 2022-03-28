local ULT_Ped <const> = require('GTA_LawEnforcement.models.ULT_Ped');

function pedsMenu(parent)
    local_pedsMenu = menu.add_feature("Pedestrians", "parent", parent, nil).id;
    
    local__pedsMenu_godMode = menu.add_feature("Godmode", "toggle", local_pedsMenu, function(feat) ULT_Ped.setAllGodmode(feat); end);
    -- local__pedsMenu_weapons = menu.add_feature("Attack Player", "toggle", local_pedsMenu, function(feat) ULT_Ped.attackPlayer(feat); end);
    -- local__pedsMenu_godMode = menu.add_feature("Set Weapon to All", "toggle", local_pedsMenu, function(feat) ULT_Ped.setAllWeapon(feat) end);

    -- local__pedsMenu_weeeeeee = menu.add_feature("All Weapons", "action", local_pedsMenu, function(feat)
        
    --     local all_weapons = weapon.get_all_weapon_hashes()

    --     mappedWeapons = {}

    --     -- for index = 1, #all_weapons do
    --     --     weaponHash = all_weapons[index]

    --     --     weaponName = weapon.get_weapon_name(weaponHash)


            

    --     -- end



    -- end);

    -- {
    --     name
    --     hash
    -- }


    
end


-- function chaseVehicle(feat, slot)

--     if ped.get_vehicle_ped_is_using(player.get_player_ped(slot)) ~= nil then
  
--       local r, s = input.get("Chase distance",100, 64, 3)
--       if r == 1 then return HANDLER_CONTINUE end
--       if r == 2 then return HANDLER_POP end
  
--       ai.set_task_vehicle_chase_ideal_persuit_distance(player.get_player_ped(player.get_player_ped(player.player_id()),s))
--       ai.task_vehicle_chase(player.get_player_ped(player.get_player_ped(player.player_id())),slot)
--     end
--   end