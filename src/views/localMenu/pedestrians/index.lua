require('UltimateMenu.src.views.localMenu.pedestrians.weapon.index')
require('UltimateMenu.src.views.localMenu.pedestrians.action.index')
require('UltimateMenu.src.models.pedModel')

function pedestriansMenu(parent)
    local pedestriansMenu = menu.add_feature("Pedestrians", "parent", parent, nil).id;
     
    pedestriansMenu_weapon(pedestriansMenu)
    pedestriansMenu_action(pedestriansMenu)

  
end
   



-- delete only one model is one 
-- function pedModel.setAllGodmode(feat)

--     local peds <const> = ped.get_all_peds()
--     for i = 1, #peds do
--         if entityHelper.request_control(peds[i], 25) then
--             entity.set_entity_god_mode(peds[i], true)
--         end
--     end

-- end

-- should be removeGodmode, and the loop elsewhere, this is a model - singular, maybe that can go into services/logic
-- function pedModel.removeAllGodmode(feat) 

--     local peds <const> = ped.get_all_peds()
--     for i = 1, #peds do
--         if entityHelper.request_control(peds[i], 25) then
--             entity.set_entity_god_mode(peds[i], false)
--             ped.set_ped_health(peds[i], 328)
--         end
--     end

-- end
-- /END Should go into entityModel@@@@@







-- Everyone are bodyguard?


-- All Pedestrians
    -- Spawn Pedestrians
    -- Player Pedestrian

    -- local pedModel <const> = require('UltimateMenu.src.models.pedModel');


    -- local__pedsMenu_godMode = menu.add_feature("Godmode", "toggle", local_pedsMenu, function(feat) 
    --     while feat.on do  
    --         pedModel.setAllGodmode(feat); 
    --         system.wait(100)
    --     end     
    --     pedModel.removeAllGodmode(feat); 
    -- end);

    -- local__pedsMenu_arm = menu.add_feature("Arm Peds", "action", local_pedsMenu, function(feat) pedModel.setAllWeapon(feat); end);
        
    -- local__pedsMenu_remove = menu.add_feature("Remove All Peds", "action", local_pedsMenu, function(feat) 
    --     -- while feat.on do
    --         pedModel.removePeds(feat); 
    --     --     system.wait(100)
    --     -- end  
    -- end);





-- if entity.get_entity_coords(Entity):magnitude(entity.get_entity_coords(Entity2) < range then
-- you can draw a red sphere displaying the range too, with draw_marker’s debug sphere

-- All Pedestrians
-- Spawn Pedestrians
--\ Type: Bodyguard, Attacker
-- Player Pedestrians

    -- Godmode
    ----------------------------
    -- All peds 
    -- Tyoe: Pedestrian, 
    -- Type: Bodyguard, 
    -- Type: Attacker
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
     --/ Is entity visible
    --/ Freeze entities/peds
     --/set_entity_gravity
     -- set entity velocity
     -- Ragdool on/off (can_ped_ragdoll)
    ------------------------------
    -- Combat
    -- / Combat Attribute
    -- / Combat Accuracy
    -- / Combat Ability (set_ped_combat_ability)
    -- / Combat Movement (set_ped_combat_movement)
    -- / Combat Range ( set_ped_combat_range)
    -------------------
    -- Action
    --/ get_ped_in_vehicle_seat
    ---------------------------------
    --/ 
    -----------------------------------
    -- Default 
    --/ Police Peds
    --/ Military Peds
    --/ Clown Peds - clone_ped if health is 20%
    --/ Jesus peds, seetings(atomizer) (resurrect_ped) after 5seconds stop attacking player, have candle, if player aiming at jesus atomize right away
    --/ Firefighter peds
    --/ Paramedic peds - fire
    ---------------------------------

    -- Give soundto peds? 
    

 
    -- protection_godMode = menu.add_feature("God Mode", "toggle", protection_menu.id, function(f) 
    
    --     print(player.get_player_ped(player.player_id()))
    --     entity.set_entity_god_mode(player.get_player_ped(player.player_id()), true)
    -- end);


    -- _2t1script.feature['Turn All Peds Invincible'] = menu.add_feature('Turn All Peds Invincible', 'toggle', _2t1script.parent['Ped Manager'], function(f)
    --     while f.on do
    --         local peds = ped.get_all_peds()
    --         for i = 1, #peds do
    --             if not ped.is_ped_a_player(peds[i]) then
    --                 utility.request_ctrl(peds[i])
    --                 entity.set_entity_god_mode(peds[i], true)
    --             end
    --         end
    --         system.wait(500)
    --     end
    --     local peds = ped.get_all_peds()
    --     for i = 1, #peds do
    --         if not ped.is_ped_a_player(peds[i]) then
    --             utility.request_ctrl(peds[i])
    --             entity.set_entity_god_mode(peds[i], false)
    --         end
    --     end
    -- end)



    

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