local ModelPed = require('UltimateMenu.src.models.ModelPed');
local ModelSpawn = require('UltimateMenu.src.models.ModelSpawn');
local ModelWeapon = require('UltimateMenu.src.models.ModelWeapon');

local entityHelper = require('UltimateMenu.src.helpers.entityHelper')

-- should be global so we can clean it or use it in other functions if needed
local ultEntities = {
    ['police'] = {},
    ['police_vehicle'] = {},
    ['criminals'] = {}
}



function protectionMenu(parent)
    local protectionMenu = menu.add_feature("Protection", "parent", parent, nil).id; 
    
    local protectionMenu_protectBy = menu.add_feature("Protect By", "parent", protectionMenu, nil).id;


    local protectionMenu_protectPolice = menu.add_feature("police", "action", protectionMenu_protectBy, function(feat) 
        local gangGroupID = player.get_player_group(player.player_id())
        local numberOfPolice = 2
        local threads = {1, 2, 3, 4, 5, 6, 7}

        for i = 1, numberOfPolice do
            table.insert(ultEntities['police'], ModelSpawn.ped(1650288984))
        end

        -- if menu.has_thread_finished(threads[i]) then
        --     threads[i] = menu.create_thread(function()

            for j = 1, #ultEntities['police'] do
                police = ultEntities['police'][j]

                if not entity.is_entity_dead(police) then
                    entityHelper.request_control(police)

                    ModelWeapon.createArsenal(police, "weapon_raycarbine")
                    ModelPed.setHealth(police, 5000)
                    ModelPed.setCombatMovement(police, "offensive")
                    ModelPed.setCombatAbility(police, "professional")

                
                    if ped.get_ped_group(police) ~= gangGroupID then
                        ModelPed.setGroup(police, gangGroupID, true)
                    end
                end

            end
            -- ped.set_ped_combat_movement(entitys['bodyguards'][i], _2t1script.feature['Bodyguard Behavior'].value)
        -- end, ultEntities['police'])

        -- for i = 1, numberOfPolice do
        --     table.insert(ultEntities['police'], ModelSpawn.ped(1650288984))
        -- end

        -- for j = 1, #ultEntities['police'] do
        --     police = ultEntities['police'][j]
        --     entityHelper.request_control(police)

        --     ModelWeapon.createArsenal(police, "weapon_raycarbine")
            
        --     if ped.get_ped_group(police) ~= gangGroupID then
        --         ped.is_ped_group_member(police, gangGroupID)
        --         ped.set_ped_as_group_member(police, gangGroupID)
        --         ped.set_ped_never_leaves_group(police, true)
        --     end
        -- end
    end)

    
-- create components later
-- create agents component, diferent outfit, guns etc...
-- create cars components, different car, modification etc...


-- set_task_vehicle_chase_behaviour_flag(Ped ped, int flag, bool set)
-- set_task_vehicle_chase_ideal_persuit_distance(ped, dist)

-- function setRelationshipBetweenGroups(ult_relationship, ult_group1, ult_group2) 

--     if ult_type[ult_relationship] == 0 then
--         print("ERROR", "Wrong relationship given")
--     end

--     local ult_type = {
--         companion = 0,  
--         respect = 1,  
--         like = 2,  
--         neutral = 3,  
--         dislike = 4,  
--         hate = 5,  
--         pedestrians = 255
--     }

--     return ped.set_relationship_between_groups(ult_type[ult_relationship], ult_group1, ult_grpup2)
-- end


-- function SpawnRandomRange()
-- horizon, vertical, diagnonal - max random
-- end



            -- ped.set_relationship_between_groups(0, group1, grpup2)
            -- https://docs.fivem.net/natives/?_0xBF25EB89375A37AD
    -- local protectionMenu_protectBy_CIA = menu.add_feature("criminalGang", "action", protectionMenu_protectBy, function(feat) 
        
    --     local gangGroupID = 2
    --     local numberOfPolice = 2

    --     for policeIndex = 1, numberOfPolice do
    --         table.insert(ultEntities['criminals'], ModelSpawn.ped(1650288984, player.get_player_coords(player.player_id())))
    --     end


    --     for policeIndex = 1, #ultEntities['criminals'] do
    --         police = ultEntities['criminals'][policeIndex]

    --         ModelWeapon.createArsenal(police, "weapon_raycarbine")
            
    --         ped.set_ped_as_group_member(police, 2)
    --         ped.set_ped_never_leaves_group(police, true)
    --         -- ped.set_relationship_between_groups(gangGroupID, group1, grpup2)

    --     end
        
    -- end)



end










    -- local protectionMenu_protectBy_CIA = menu.add_feature("terroristGang", "action", protectionMenu_protectBy, function(feat) 

    --     terrorist_entities = {}

    -- end)



-- - Make police in a group
    -- Make terrorist in a group

    -- Make police && terorist in one group

 

    -- local protectionMenu_protectBy_CIA = menu.add_feature("bodyguard", "action", protectionMenu_protectBy, function(feat) 

    --     ult_entities = {}
    --    

    --     local car = ModelSpawn.vehicle(1127131465, player.get_player_coords(player.player_id()))
    --     local drivingMode = 537657515
    --     local drivingSpeed = 100
    --     local drivingFollowBehindGap = 10

    --     for agentIndex = 1, numberOfAgents do        
    --         table.insert(ult_entities, ModelSpawn.ped(agents[agentIndex].outfit))

    --         for j = 1, #ult_entities do
    --             agent = ult_entities[j]

    --             -- check if seats are free 
    --             -- ped.set_ped_into_vehicle(agent, car, j - 2)
 

    --             ped.set_ped_combat_ability(agent, 100)
    --             ped.set_can_attack_friendly(agent, false, false)
    --             ped.set_ped_combat_attributes(agent, 3, false)

    --             ped.set_ped_max_health(agent, 3000)
    --             ped.set_ped_health(agent, 3000)

    --             entity.set_entity_as_mission_entity(agent, 1, 1)

    --             table.insert(ult_group, ped.set_ped_as_group_member(agent, ped_group))
    --             ped.set_ped_never_leaves_group(agent, true)

                
                
    --         end
    --         -- ped.set_relationship_between_groups(ped_group, group1, grpup2)
    --     end

    --     -- if not next(ult_entities) == nil then
    --     --     -- if entityHelper.request_control(driver, 25) then
    --     --         ai.task_vehicle_follow(ult_entities[0], car,  player.get_player_ped(player.player_id()), drivingSpeed, drivingMode, drivingFollowBehindGap)
    --     --     -- end
    --     --     system.wait(100)
    --     -- end


    -- end)

-- protection follow by vehicle, dont allow the bodyguards to come to your vehicle, steal one if needed or spawn

    -- local protectionMenu_protectBy_CIA = menu.add_feature("CIA", "action", protectionMenu_protectBy, function(feat) 
  
    -- end).id;


    
   

-- ai.task_vehicle_follow(driver, vehicle, targetToFollow, speed, driving mode, distanceBehind)
-- ai.task_vehicle_escort()
--    if can't enter a car, steal one




-- function createSquat(numberOfPed, [outfit1, outfit2 random], group, attack/protect)


    -- /Protection
    -- Bodyguard
    -- Tank followiing
    -- Choper following
    -- Jet following
    
    
    -- protectionMenu_weapon(protectionMenu)

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
    



-- Close doors for players, FBI only
-- When spawn, doors closed, when the player who spawned the car wants to enter let him, and close the doors

-- #### void               set_vehicle_door_open(Vehicle veh, int doorIndex, bool loose, bool openInstantly)
-- #### void               set_vehicle_doors_shut(Vehicle veh, bool closeInstantly)
-- set_vehicle_doors_locked



-- To make the city empty
-- set_vehicle_density_multipliers_this_frame




-- is_vehicle_stopped - get out and shoot the player


-- set_vehicle_can_be_locked_on



-- function isSeatEmpty(_veh,_seat)

--     if _GF_valid_veh(_veh) then
--         if not entity.is_entity_a_ped(vehicle.get_ped_in_vehicle_seat(_veh, _seat)) then
--             return true
--         end
--     end

-- end