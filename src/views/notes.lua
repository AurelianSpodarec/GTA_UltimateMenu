-- FBI



-- /Protection
    -- Bodyguard
    -- Tank followiing
    -- Choper following
    -- Jet following

     -- Single Personel: Sniper, SWAT member, cop, back ops, gf - lots of  hp, well trained and armed
    -- Paramedic: Gives health/armour to nerby players or only to that oneplayer if he comes close by
    
    -- CIA Security - gentle follow
    -- SWAT Security - follows you backwards, highway patrol infront of you 
    -- Mayweather security (in your face), armored vehicle, helicopter
    -- Military Security - Tanks, jets, helicopters, military personel


    -- Add player to friendly group by shooting to them OR players nerby - toggle on and off


    -- followInCar
    -- followInFront
    -- followBackwards
    -- followInbetween

    -- stealVehicle


-- is_vehicle_stopped withingXrange - get out and shoot the player
 
-- needs to be global

-- pedModel[key](agent, unpack(pedModelValuesHash))
-- pedModel.createPed(police, 5000hp, "weapon_raycarabine", "offensive", "professional", "groupd1", "loyal")

    
-- create components later
-- create agents component, diferent outfit, guns etc...
-- create cars components, different car, modification etc...

-- set_task_vehicle_chase_behaviour_flag(Ped ped, int flag, bool set)


-- set_task_vehicle_chase_ideal_persuit_distance(ped, dist)

 
-- if not next(ult_entities) == nil then
--     -- if entityHelper.request_control(driver, 25) then
--         ai.task_vehicle_follow(ult_entities[0], car,  player.get_player_ped(player.player_id()), drivingSpeed, drivingMode, drivingFollowBehindGap)
--     -- end
--     system.wait(100)
-- end
 

-- protection follow by vehicle, dont allow the bodyguards to come to your vehicle, steal one if needed or spawn
-- ai.task_vehicle_follow(driver, vehicle, targetToFollow, speed, driving mode, distanceBehind)
-- ai.task_vehicle_escort()
-- if can't enter a car, steal one








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


 






















-- Ability to enable/disable

-- SMS phases 

-- #Griefing 
-- (attack sent)
-- - Surrender now! The National Security forces have been deployed!


-- #Help
-- (on setting protection)
-- - To protect and serve

-- (units death)
-- - Mission failed comare, we'll get it next time! 
-- - The fight might be lost, but the battle is not over yet!

-- (units dying)
-- - We are losing units! Takve cover!
-- - Takve cover now!

-- (upon killing a player - 20% chance in happening)
-- - Were spraying them!
-- - Good job! 

-- -->




-- function _GF_spawn_angry_ped_at_pos(_pos,_model_hash,_weapon_hash1,_weapon_hash2,_pid)  --thnks to midnight and kek 
--     local _ped=ped.create_ped(6, _model_hash,_pos, math.random(0,359), true, false)
--     if _pid ~= nil then
--         gameplay.shoot_single_bullet_between_coords(_pos, _pos + v3(0,0,.25), 0, gameplay.get_hash_key("weapon_pistol"), player.get_player_ped(_pid), false, true, 100)
--     end
--     if _weapon_hash1 ~= nil then
--         weapon.give_delayed_weapon_to_ped(_ped, _weapon_hash1, 1, 1)                    
--     end
--     if _weapon_hash2 ~= nil then
--         weapon.give_delayed_weapon_to_ped(_ped, _weapon_hash2, 1, 1)                    
--     end
--     ped.set_ped_combat_attributes(_ped, 1, true) -- can use vehicles
--     ped.set_ped_combat_attributes(_ped, 2, true) -- can do drivebys 
--     ped.set_ped_combat_attributes(_ped, 3, true) -- can leave vehicle
--     ped.set_ped_combat_attributes(_ped, 5, true) -- can fight unarmed
--     ped.set_ped_combat_attributes(_ped, 46, true) --always fight
--     ped.set_ped_combat_attributes(_ped, 52, true) --ignore traffic
--     ped.set_ped_combat_attributes(_ped, 292, false) --freeze movement
--     ped.set_ped_combat_range(_ped, 2) -- far range
--     ped.set_ped_combat_ability(_ped, 2) -- pro
--     ped.set_ped_combat_movement(_ped, 2) 
--     ped.set_ped_max_health(_ped, 1000.0)
--     ped.set_ped_health(_ped, 1000.0)
--     ped.set_ped_config_flag(_ped, 187, 0) -- is hurt
--     ped.set_ped_can_ragdoll(_ped, false)
--     ped.set_ped_relationship_group_hash(_ped, gameplay.get_hash_key("HATES_PLAYER"))
--     if _pid ~= nil then
--         ai.task_combat_ped(_ped, player.get_player_ped(_pid), 0, 16)
--     end
--     for bf = 1, 26 do
--         ped.set_ped_ragdoll_blocking_flags(_ped, bf)
--         system.yield(0)
--     end
--     return _ped
-- end







--- car upgrade;





-- function _GF_veh_upgrades_kek_basic_simple(_veh)
--     local toggle_vehicle_mods = {
--     unk1 = 17,
--     unk2 = 19, 
--     unk3 = 21,
--     turbo = 18, 
--     tire_smoke = 20, 
--     xenon_lights = 22
--     }
--     for i = 0, 65 do
--         if vehicle.get_num_vehicle_mods(_veh, i) > 0 and not (i == 48) and not (i == 23) and not (i == 24) and not (i == 62) then
--             vehicle.set_vehicle_mod(_veh, i, math.random(0, vehicle.get_num_vehicle_mods(_veh, i) - 1))
--         end
--     end
--     _GF_armor_best_simple(_veh)
--     for _, mod in pairs(toggle_vehicle_mods) do
--         vehicle.toggle_vehicle_mod(_veh, mod, true)
--     end
--     if not streaming.is_model_a_heli(entity.get_entity_model_hash(_veh)) then -- Prevent removal of heli rotors
--         for i = 1, 9 do
--             if vehicle.does_extra_exist(_veh, i) then
--                 vehicle.set_vehicle_extra(_veh, i, math.random(0, 1) == 1)
--             end
--         end
--     end
-- end












    -- test = menu.add_feature("Test sound", "toggle", local_pedsMenu, function(feat) 

    --     if feat.on then
    --         audio.play_sound_from_coord(-1, "Traffic_Control_Light_Switch_Back", entity.get_entity_coords(player.get_player_ped(player.player_id())), "BIG_SCORE_3A_SOUNDS", true, 5, false)
        
    --         -- Walkie Talkie sound
    --         -- audio.play_sound_from_coord(-1, "Start_Squelch", entity.get_entity_coords(player.get_player_ped(player.player_id())), "CB_RADIO_SFX", true, 5, false)
    --     end
    --     audio.play_sound_from_coord(-1, "Traffic_Control_Light_Switch_Back", entity.get_entity_coords(player.get_player_ped(player.player_id())), "BIG_SCORE_3A_SOUNDS", true, 5, false)
        
    --     -- audio.play_sound_from_coord(-1, "Start_Squelch", entity.get_entity_coords(player.get_player_ped(player.player_id())), "CB_RADIO_SFX", true, 5, false)

    -- end)


    -- local__pedsMenu_godMode = menu.add_feature("Set Weapon to All", "toggle", local_pedsMenu, function(feat) pedModel.setAllWeapon(feat) end);

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














         
    -- Vehicle
    -- Drive force multiplayer -forward 4, backwards 4


















        

    -- while f.on do
    --     local veh = get.OwnVehicle()
    --     if utility.valid_vehicle(veh) then
    --         if f.value == 0 then
    --             ai.task_vehicle_drive_wander(get.OwnPed(), veh, 100, drivingMode)
    --         elseif f.value == 1 then
    --             local waypoint = ui.get_waypoint_coord()
    --             local veh2 = entity.get_entity_model_hash(veh)
    --             ai.task_vehicle_drive_to_coord(get.OwnPed(), veh, v3(waypoint.x, waypoint.y, 0), 100, 10, veh2, drivingMode, 1, 1)
    --         else
    --             local waypoint = ui.get_waypoint_coord()
    --             local veh2 = entity.get_entity_model_hash(veh)
    --             ai.task_vehicle_drive_to_coord(get.OwnPed(), veh, v3(waypoint.x, waypoint.y, 0), 100, 10, veh2, drivingMode, 1, 1)
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
    --                 ai.task_vehicle_drive_to_coord(get.OwnPed(), veh, v3(waypoint.x, waypoint.y, 0), 100, 10, veh2, drivingMode, 1, 1)
    --                 if waypoint.x == 16000 and waypoint.y == 16000 then
    --                     notify('waypoint reached')
    --                     ped.clear_ped_tasks_immediately(get.OwnPed())
    --                     ped.set_ped_into_vehicle(get.OwnPed(), veh, -1)
    --                     toggle_off({'AI Driving Start'})
    --                 end

    -- END TESTTT
    

