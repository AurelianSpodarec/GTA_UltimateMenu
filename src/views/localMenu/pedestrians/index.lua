require('UltimateMenu.src.views.localMenu.pedestrians.weapon.index')
require('UltimateMenu.src.views.localMenu.pedestrians.action.index')
require('UltimateMenu.src.views.localMenu.pedestrians.godMode.index')

local entityHelper = require('UltimateMenu.src.helpers.entityHelper')


function pedestriansMenu(parent)
    local pedestriansMenu = menu.add_player_feature("Pedestrians", "parent", parent, nil).id;
    
    -- Exclude players
    -- General
    -- godmode, no ragdool, walk speed, outfit

    -- Funy: spawn transvetite with a batoon
    

    pedestrians_godMode(pedestriansMenu)

    peds = menu.add_player_feature("Type", "parent", pedestriansMenu, function() 
        
    end)

    peds = menu.add_player_feature("Set Weapon", "parent", pedestriansMenu, function() 
        -- Give All weapons
        -- Remove All weapons
        -- Give Specific weaapon
    end)

    peds = menu.add_player_feature("Properties", "parent", pedestriansMenu, function() 
        
    end)

    -- pedestriansMenu_weapon(pedestriansMenu)
    -- pedestriansMenu_action(pedestriansMenu)

  
end
   

  -- Type: Pedestrian, Bodyguard, Attacker
    -- Settings: Weapon, Outfit(random from category 'Police'), health etc
-- All Pedestrians
    -- Spawn Pedestrians
    -- Player Pedestrian
    -- Everyone bodyguard


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


 


-- launch peds in air and open parachadute

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
    
 

    -- _2t1script.feature['Turn All Peds Invincible'] = menu.add_player_feature('Turn All Peds Invincible', 'toggle', _2t1script.parent['Ped Manager'], function(f)
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