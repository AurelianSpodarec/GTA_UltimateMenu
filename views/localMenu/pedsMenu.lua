local ULT_Ped <const> = require('GTA_LawEnforcement.models.ULT_Ped');
local HP_Spawn <const> = require('GTA_LawEnforcement.helpers.HP_Spawn')
local HP_Entity <const> = require('GTA_LawEnforcement.helpers.HP_Entity')

function pedsMenu(parent)
    local_pedsMenu = menu.add_feature("Pedestrians", "parent", parent, nil).id;
    

    --/ Troll
    -- Type: From air, from ground, magic
    -- Kamikaze
    -- Airstrike in an area with big range
    -- Rain poop
    -- Drop a tank on player
    -- Send Tanks from front to crush 
    -- Chase player and ram it
    --Jesus chase: White car, white plane, atomizer - if jesus killed, revive and set it on fire, give 5000max health and attack the player

        
    --   TESTTTTTTTTTTT




    local__pedsMenu_carram = menu.add_feature("Ram Player", "action", local_pedsMenu, function(feat) 
        Car = HP_Spawn.Vehicle(-2048333973, player.get_player_coords(player.player_id()) + v3(math.random(0, 0), math.random(0, 0), math.random(0, 0)), math.random(0, 0))
        Driver = HP_Spawn.Ped(-413447396)

        ped.set_ped_into_vehicle(Driver, Car, -1)
        vehicle.set_vehicle_engine_on(Car, true, true, false) 

        
        local playerPos = player.get_player_coord(splayer.get_player_ped(player.player_id())) 
        ai.task_vehicle_drive_to_coord(Driver, Car, v3(playerPos.x playerPos.y), 0), 0, 50, -2048333973, 263595, 1, 1)
       
    end)

    -- while f.on do
    --     local veh = get.OwnVehicle()
    --     if utility.valid_vehicle(veh) then
    --         if f.value == 0 then
    --             ai.task_vehicle_drive_wander(get.OwnPed(), veh, 100, drivingstyle)
    --         elseif f.value == 1 then
    --             local waypoint = ui.get_waypoint_coord()
    --             local veh2 = entity.get_entity_model_hash(veh)
    --             ai.task_vehicle_drive_to_coord(get.OwnPed(), veh, v3(waypoint.x, waypoint.y, 0), 100, 10, veh2, drivingstyle, 1, 1)
    --         else
    --             local waypoint = ui.get_waypoint_coord()
    --             local veh2 = entity.get_entity_model_hash(veh)
    --             ai.task_vehicle_drive_to_coord(get.OwnPed(), veh, v3(waypoint.x, waypoint.y, 0), 100, 10, veh2, drivingstyle, 1, 1)
    --             if waypoint.x == 16000 and waypoint.y == 16000 then
    --                 notify('waypoint reached')
    --                 ped.clear_ped_tasks_immediately(get.OwnPed())
    --                 ped.set_ped_into_vehicle(get.OwnPed(), veh, -1)
    --                 toggle_off({'AI Driving Start'})
    --             end
    --         end
    --         if vehicle.is_vehicle_stuck_on_roof(veh) then
    --             vehicle.set_vehicle_on_ground_properly(veh)
    --         end
    --     end
    --     system.wait(2500)
    -- end








    -- local waypoint = ui.get_waypoint_coord()
    --                 local veh2 = entity.get_entity_model_hash(veh)
    --                 ai.task_vehicle_drive_to_coord(get.OwnPed(), veh, v3(waypoint.x, waypoint.y, 0), 100, 10, veh2, drivingstyle, 1, 1)
    --                 if waypoint.x == 16000 and waypoint.y == 16000 then
    --                     notify('waypoint reached')
    --                     ped.clear_ped_tasks_immediately(get.OwnPed())
    --                     ped.set_ped_into_vehicle(get.OwnPed(), veh, -1)
    --                     toggle_off({'AI Driving Start'})
    --                 end


    local__pedsMenu_plane = menu.add_feature("Kamikaze Plane", "action", local_pedsMenu, function(feat) 
        -- while feat.on do
        --     ULT_Ped.removePeds(feat); 
        --     system.wait(100)
        -- end  
        Plane = HP_Spawn.Vehicle(-1214505995, player.get_player_coords(player.player_id()) + v3(math.random(-300, 300), math.random(-300, 300), math.random(90, 110)), math.random(0, 0))
        Pilot = HP_Spawn.Ped(-413447396)

        -- if HP_Entity.request_control(pedA, 25) then
        --     if HP_Entity.request_control(PlaneA, 25) then
        ped.set_ped_into_vehicle(Pilot, Plane, -1)

        vehicle.set_vehicle_engine_on(Plane, true, true, false)
        vehicle.control_landing_gear(Plane, 3)
        vehicle.set_vehicle_forward_speed(Plane, 90.0)
            -- end
        -- end

        -- task_enter_vehicle
        -- task_leave_vehicle(
        -- task_parachute_to_target
        -- give the pilot a lock in homing launcher


        -- if (not entity.is_entity_a_vehicle(tracker[scid].vehicle) or ped.is_ped_a_player(vehicle.get_ped_in_vehicle_seat(tracker[scid].vehicle, enums.vehicle_seats.driver)))
			
        -- get_ped_in_vehicle_seat(planeA, 0)
    end);
    -- END TESTTT
    


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
    
    
    local__pedsMenu_remove = menu.add_feature("Remove All Peds", "action", local_pedsMenu, function(feat) 
        -- while feat.on do
            ULT_Ped.removePeds(feat); 
        --     system.wait(100)
        -- end  
    end);


    menu.add_feature("Spawn Rubios Attack Chopper", "action", local_pedsMenu, function(feat, pid)
        -- notify_above_map("Mr Rubio is not happy!", string title, )
        -- Send SMS to player as it spawns (Mr Rubio is not happy!)

        	local pos = player.get_player_coords(player.get_player_ped(player.player_id()))
            streaming.request_model(0xD74B8139)
            streaming.request_model(0xA09E15FD)
            streaming.request_model(0x7ED5AD78)
        
            while (not streaming.has_model_loaded(0xD74B8139)) do
        		system.wait(0)
        	end
        
            while (not streaming.has_model_loaded(0xA09E15FD)) do
        		system.wait(0)
        	end
        
            while (not streaming.has_model_loaded(0x7ED5AD78)) do
        		system.wait(0)
        	end
        
            for i = 1, 1 do
                -- local Heli = vehicle.create_vehicle(0xA09E15FD, pos + v3(math.random(-200, 200), math.random(-200, 200), math.random(50, 60)), math.random(0, 0), true, false)
                -- local Heli = vehicle.create_vehicle(0xA09E15FD,  player.get_player_coords(player.get_player_ped(player.player_id())), true, false)
                local Heli = HP_Spawn.Vehicle(0xA09E15FD, player.get_player_coords(player.player_id()) + v3(math.random(-200, 200), math.random(-200, 200), math.random(50, 60)), math.random(0, 0))
                local Rubio = ped.create_ped(1, 0xD74B8139, pos + v3(math.random(-200, 200), math.random(-200, 200), 0), 1.0, true, false)
                local Shooter1 = ped.create_ped(1, 0x7ED5AD78, pos + v3(math.random(-200, 200), math.random(-200, 200), 0), 1.0, true, false)
                local Shooter2 = ped.create_ped(1, 0x7ED5AD78, pos + v3(math.random(-200, 200), math.random(-200, 200), 0), 1.0, true, false)
        
                ped.set_ped_can_switch_weapons(Rubio, false)
                ped.set_ped_can_switch_weapons(Shooter1, false)
                ped.set_ped_can_switch_weapons(Shooter2, false)

                weapon.give_delayed_weapon_to_ped(Rubio, 0x57A4368C, 0, true)
                weapon.give_delayed_weapon_to_ped(Shooter1, 0x9D1F17E6, 0, true)
                weapon.give_delayed_weapon_to_ped(Shooter2, 0x9D1F17E6, 0, true)

                ped.set_ped_into_vehicle(Rubio, Heli, -1)

                ped.set_ped_max_health(Shooter1, 5000)
                ped.set_ped_health(Shooter1, 5000)

                ped.set_ped_max_health(Shooter2, 5000)
                ped.set_ped_health(Shooter2, 5000)

                ped.set_ped_max_health(Rubio, 5000)
                ped.set_ped_health(Rubio, 5000)

                vehicle.set_vehicle_engine_on(Heli, true, true, false)
                vehicle.control_landing_gear(Heli, 3)
                vehicle.set_vehicle_forward_speed(Heli, 10.0)

                ped.set_ped_combat_attributes(Heli, 1, true)
                ped.set_ped_combat_ability(Rubio, 2)
                ped.set_ped_combat_attributes(Rubio, 5, true)
                ped.set_ped_combat_ability(Shooter1, 2)
        		ped.set_ped_combat_attributes(Shooter1, 5, true)
                ped.set_ped_combat_ability(Shooter2, 2)
        		ped.set_ped_combat_attributes(Shooter2, 5, true)

                ped.set_ped_into_vehicle(Shooter1, Heli, 1)
                ped.set_ped_into_vehicle(Shooter2, Heli, 2)

                ped.set_ped_as_group_leader(Rubio, 1)
                ped.set_ped_as_group_member(Shooter1, 1)
                ped.set_ped_as_group_member(Shooter2, 1)

                ped.set_ped_never_leaves_group(Rubio, true)
                ped.set_ped_never_leaves_group(Shooter1, true)
                ped.set_ped_never_leaves_group(Shooter2, true)

                ai.task_combat_ped(Shooter1, player.get_player_ped(player.player_id()), 0, 16)
                ai.task_combat_ped(Shooter2, player.get_player_ped(player.player_id()), 0, 16)
                ai.task_combat_ped(Rubio, player.get_player_ped(player.player_id()), 0, 16)
            end
        end)
    


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





-- if RubiosAttackChopper then 
-- 	menu.notify("Script is already loaded!", "Initialization cancelled.", 3, 211) 
-- 	return
-- end

-- RubiosAttackChopper = menu.add_player_feature("Rubios Attack Chopper", "parent", 0).id

-- menu.add_player_feature("Spawn Rubios Attack Chopper", "action", RubiosAttackChopper, function(feat, pid)
-- 	local pos = player.get_player_coords(pid)
--     streaming.request_model(0xD74B8139)
--     streaming.request_model(0xA09E15FD)
--     streaming.request_model(0x7ED5AD78)

--     while (not streaming.has_model_loaded(0xD74B8139)) do
-- 		system.wait(0)
-- 	end

--     while (not streaming.has_model_loaded(0xA09E15FD)) do
-- 		system.wait(0)
-- 	end

--     while (not streaming.has_model_loaded(0x7ED5AD78)) do
-- 		system.wait(0)
-- 	end

--     for i = 1, 1 do
--         local Heli = vehicle.create_vehicle(0xA09E15FD, pos + v3(math.random(-200, 200), math.random(-200, 200), math.random(50, 60)), math.random(0, 0), true, false)
--         local Rubio = ped.create_ped(1, 0xD74B8139, pos + v3(math.random(-200, 200), math.random(-200, 200), 0), 1.0, true, false)
--         local Shooter1 = ped.create_ped(1, 0x7ED5AD78, pos + v3(math.random(-200, 200), math.random(-200, 200), 0), 1.0, true, false)
--         local Shooter2 = ped.create_ped(1, 0x7ED5AD78, pos + v3(math.random(-200, 200), math.random(-200, 200), 0), 1.0, true, false)

--         ped.set_ped_can_switch_weapons(Rubio, false)
--         ped.set_ped_can_switch_weapons(Shooter1, false)
--         ped.set_ped_can_switch_weapons(Shooter2, false)
--         weapon.give_delayed_weapon_to_ped(Rubio, 0x57A4368C, 0, true)
--         weapon.give_delayed_weapon_to_ped(Shooter1, 0x9D1F17E6, 0, true)
--         weapon.give_delayed_weapon_to_ped(Shooter2, 0x9D1F17E6, 0, true)
--         ped.set_ped_into_vehicle(Rubio, Heli, -1)
--         ped.set_ped_max_health(Rubio, 500)
--         ped.set_ped_health(Rubio, 500)
--         vehicle.set_vehicle_engine_on(Heli, true, true, false)
--         vehicle.control_landing_gear(Heli, 3)
--         vehicle.set_vehicle_forward_speed(Heli, 10.0)
--         ped.set_ped_combat_attributes(Heli, 1, true)
--         ped.set_ped_combat_ability(Rubio, 2)
--         ped.set_ped_combat_attributes(Rubio, 5, true)
--         ped.set_ped_combat_ability(Shooter1, 2)
-- 		ped.set_ped_combat_attributes(Shooter1, 5, true)
--         ped.set_ped_combat_ability(Shooter2, 2)
-- 		ped.set_ped_combat_attributes(Shooter2, 5, true)
--         ped.set_ped_into_vehicle(Shooter1, Heli, 1)
--         ped.set_ped_into_vehicle(Shooter2, Heli, 2)
--         ped.set_ped_as_group_member(Rubio, 1)
--         ped.set_ped_as_group_member(Shooter1, 1)
--         ped.set_ped_as_group_member(Shooter2, 1)
--         ai.task_combat_ped(Shooter1, player.get_player_ped(pid), 0, 16)
--         ai.task_combat_ped(Shooter2, player.get_player_ped(pid), 0, 16)
--         ai.task_combat_ped(Rubio, player.get_player_ped(pid), 0, 16)
--     end
-- end)