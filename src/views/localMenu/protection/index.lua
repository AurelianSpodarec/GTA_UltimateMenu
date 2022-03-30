local ModelPed = require('UltimateMenu.src.models.ModelPed');
local ModelSpawn = require('UltimateMenu.src.models.ModelSpawn');
local entityHelper = require('UltimateMenu.src.helpers.entityHelper')


local entitys = {
    ['bodyguards'] = {},
    ['bodyguards_veh'] = {}
}


local agents = {
    {
        outfit = 1650288984,
        seat = -1
    },
    {
        outfit = 1650288984,
        seat = 1
    },
    {
        outfit = 1650288984,
        seat = 1
    }
}

function protectionMenu(parent)
    local protectionMenu = menu.add_feature("Protection", "parent", parent, nil).id;
    
    

    local protectionMenu_protectBy = menu.add_feature("Protect By", "parent", protectionMenu, nil).id;


    local protectionMenu_protectBy_CIA = menu.add_feature("bodyguard", "action", protectionMenu_protectBy, function(feat) 

        local ped_group = player.get_player_group(player.player_id())

        local primaryWeapon = 0xAF3696A1
        local secondaryWeapon = 0xAF3696A1



        for i = 1, 3 do
            -- agent = ModelSpawn.ped(agents[i].outfit)

            -- get model and index it 
            ult_entities = {}
            table.insert(ult_entities, ModelSpawn.ped(agents[i].outfit))

            for j = 1, #ult_entities do
                agent = ult_entities[j]

                weapon.give_delayed_weapon_to_ped(agent, primaryWeapon, 0, 1)
                weapon.give_delayed_weapon_to_ped(agent, secondaryWeapon, 0, 1)

                ped.set_ped_combat_ability(agent, 100)
                ped.set_can_attack_friendly(agent, false, false)

                entity.set_entity_as_mission_entity(agent, 1, 1)

                ped.set_ped_as_group_member(agent, ped_group)
                ped.set_ped_never_leaves_group(agent, true)
            end



        end

    end)


-- protection follow by vehicle, dont allow the bodyguards to come to your vehicle, steal one if needed or spawn




    local protectionMenu_protectBy_CIA = menu.add_feature("CIA", "action", protectionMenu_protectBy, function(feat) 
        
        undecoverFBICruiser = ModelSpawn.vehicle(1127131465, player.get_player_coords(player.player_id()))
        group = 1
        agents = {
            {
                outfit = 1650288984,
                seat = -1
            },
            {
                outfit = 1650288984,
                seat = 1
            },
            {
                outfit = 1650288984,
                seat = 1
            }
        }


        for i = 1, #agents do
            agentsModel = ModelSpawn.ped(agents[i].outfit)
        end


    
        for j = 1, #agentsModel do
        if entityHelper.request_control(agentsModel[i], 25) then
                
            for j = 1, #agentsModel do
                ped.set_ped_as_group_leader(agentModel, 1)
                ped.set_ped_never_leaves_group(agentModel, group)
                weapon.give_delayed_weapon_to_ped(agentModel, 0x9D1F17E6, 0, true)

                ped.set_ped_max_health(agentModel, 3000)
                ped.set_ped_health(agentModel, 3000)

                ai.task_combat_ped(agentModel, player.get_player_ped(player.player_id()), 0, 16)
            end

        end
        end

    -- Bodyguard functionality
    -- local ped_group = player.get_player_group(player.player_id())

       

        -- vehicle.set_vehicle_engine_on(undecoverFBICruiser, true, true, false)

        -- ped.set_ped_into_vehicle(agents.agent, undecoverFBICruiser, -1)
        -- ped.set_ped_into_vehicle(agents.agent2, undecoverFBICruiser, 0)
        -- ped.set_ped_into_vehicle(agents.agent3, undecoverFBICruiser, 1)
        
 



        -- utility.request_ctrl(entitys['bodyguards'][i])
        -- if ped.get_ped_group(entitys['bodyguards'][i]) ~= ped_group then
        --     ped.set_ped_as_group_member(entitys['bodyguards'][i], ped_group)
        --     ped.set_ped_never_leaves_group(entitys['bodyguards'][i], true)
        -- end

    end).id;


    -- local protectionMenu_protectBy_CIA = menu.add_feature("CIAAAA", "action", protectionMenu_protectBy, function(feat) 

    --     local agent = ModelSpawn.ped(880829941)
    --     local agent2 = ModelSpawn.ped(2016771922)

    --     ped.set_ped_max_health(agent, 600000)
    --     ped.set_ped_health(agent, 600000)

    --     ped.set_ped_max_health(agent2, 600000)
    --     ped.set_ped_health(agent2, 600000)
    -- end)


    
   
end

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