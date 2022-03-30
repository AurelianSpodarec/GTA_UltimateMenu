local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper')



local ModelVehicle = {};

-- chase player
-- change color

function ModelVehicle.preventLockOn(feat)

end


function ModelVehicle.preventNerbyLockOn(feat)



end
 

return ModelVehicle;



-- _2t1script.feature['Player Prevent Lock-On'] = menu.add_player_feature('Prevent Lock-On', 'action_value_str', _2t1script.parent['Player Vehicle'], function(f, id)
--     local veh = get.PlayerVehicle(id)
--     if veh ~= 0 then
--         utility.request_ctrl(veh)
--         if f.value == 0 then
--             vehicle.set_vehicle_can_be_locked_on(veh, false, false)
--         else
--             vehicle.set_vehicle_can_be_locked_on(veh, true, true)
--         end
--     else
--         return notify('No Vehicle Found!', nil, '')
--     end
-- end)



-- Suggestion: Adjustable vehicle rapid fire

-- Details: instead of ridiculous fast or normal, a selection of a few speeds, or a slider to progressively increase speed.



-- Suggestion: kamikaze planes
-- Details: a plane of your choice to kamikaze into a player and kill them.

-- Edit: choose whether to blame, no blame,  blame another player.






-- FBI agents
-- Suggestion details: Automatically spawn a new vehicle and continue to wander/follow if you are killed or if the vehicle is destroyed.