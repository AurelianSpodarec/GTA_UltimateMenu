local ULT_Ped <const> = require('GTA_LawEnforcement.models.ULT_Ped');

function pedsMenu(parent)
    local_pedsMenu = menu.add_feature("Pedestrians", "parent", parent, nil).id;
    
    local__pedsMenu_godMode = menu.add_feature("Godmode", "toggle", local_pedsMenu, function(feat) 
        while feat.on do  
            ULT_Ped.setAllGodmode(feat); 
            system.wait(100)
        end     
        ULT_Ped.removeAllGodmode(feat); 
    end);
    local__pedsMenu_weapons = menu.add_feature("Attack Player", "toggle", local_pedsMenu, function(feat) 
        while feat.on do
            ULT_Ped.attackPlayer(feat); 
            system.wait(100)
        end  
    end);

    local__pedsMenu_arm = menu.add_feature("Arm Peds", "action", local_pedsMenu, function(feat) ULT_Ped.setAllWeapon(feat); end);
    
    
    local__pedsMenu_remove = menu.add_feature("Remove All Peds", "toggle", local_pedsMenu, function(feat) 
        while feat.on do
            ULT_Ped.removePeds(feat); 
            system.wait(100)
        end  
    end);
    


    -- Godmode
    ----------------------------
    -- Ped, Bodyguard, Attacker
    ----------------------------
    -- Group Peds
    ----------------------------
    -- Spawn 1-30 peds
    -------------------------
    -- Set Weapons
    -- / All, Specific weapon
    --/ can change weapon?
    --------------------------
    -- Properties
    -- / Max Health
    -- / Combat Attribute
    -- / Combat Accuracy
    -- / Combat Ability (set_ped_combat_ability)
    --/ Combat Movement (set_ped_combat_movement)
    --/ Combat Range ( set_ped_combat_range)
    --/ Is entity visible
    --/ Freeze entities/peds
    --/ get_ped_in_vehicle_seat
    --/set_entity_gravity
    -------------------
    -- Action
    --/ get_ped_in_vehicle_seat
    --/ 
    ---------------------------------
    --/ Ragdool on/off (can_ped_ragdoll)
    -----------------------------------
    -- Default 
    --/ Police Peds
    --/ Military Peds
    --/ Clown Peds - clone_ped if health is 20%
    --/ Jesus peds, seetings(atomizer) (resurrect_ped) after 5seconds stop attacking player, have candle, if player aiming at jesus atomize right away
    --/ Firefighter peds
    --/ Paramedic peds - fire
    ---------------------------------
    

    -- test = menu.add_feature("Test sound", "toggle", local_pedsMenu, function(feat) 

    --     if feat.on then
    --         audio.play_sound_from_coord(-1, "Traffic_Control_Light_Switch_Back", entity.get_entity_coords(player.get_player_ped(player.player_id())), "BIG_SCORE_3A_SOUNDS", true, 5, false)
        
    --         -- Walkie Talkie sound
    --         -- audio.play_sound_from_coord(-1, "Start_Squelch", entity.get_entity_coords(player.get_player_ped(player.player_id())), "CB_RADIO_SFX", true, 5, false)
    --     end
    --     audio.play_sound_from_coord(-1, "Traffic_Control_Light_Switch_Back", entity.get_entity_coords(player.get_player_ped(player.player_id())), "BIG_SCORE_3A_SOUNDS", true, 5, false)
        
    --     -- audio.play_sound_from_coord(-1, "Start_Squelch", entity.get_entity_coords(player.get_player_ped(player.player_id())), "CB_RADIO_SFX", true, 5, false)

    -- end)


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

    -- Type: Pedestrian, Bodyguard, Attacker
    -- Settings: Weapon, Outfit(random from category 'Police'), health etc
    
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







-- cooll stuff

-- function randomFireWork()
--     if((os.clock() - lastFirework) > 1)then
--       local pos = player.get_player_coords(player.player_id())
--       pos.z = pos.z+math.random(50)+50
--       if(math.random(2) == 1) then
--         if(math.random(2) == 1) then
--           pos.x = pos.x+math.random(100)
--         else
--           pos.x = pos.x+(math.random(100)*-1)
--         end
--       else
--         if(math.random(2) == 1) then
--           pos.y = pos.y+math.random(100)
--         else
--           pos.y = pos.y+(math.random(100)*-1)
--         end
  
--       end
--       gameplay.shoot_single_bullet_between_coords(pos,pos,0,0x7F7497E5,player.player_id(),false,false,1)
--       lastFirework = os.clock()
--     end
--     if(firework.on) then
--       return HANDLER_CONTINUE
--     else
--       return HANDLER_POP
--     end
--   end