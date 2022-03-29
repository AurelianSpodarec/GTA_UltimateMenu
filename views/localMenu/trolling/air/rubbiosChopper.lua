
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
    

 
    
end
