local entityHelper <const> = require('UltimateMenu.src.helpers.entityHelper')



local vehicleModel = {};

-- set_vehicle_density_multipliers_this_frame
-- #### void               set_vehicle_door_open(Vehicle veh, int doorIndex, bool loose, bool openInstantly)
-- #### void               set_vehicle_doors_shut(Vehicle veh, bool closeInstantly)
-- set_vehicle_doors_locked

 
function vehicleModel.preventLockOn(vehicle)
    if vehicle ~= 0 then
        utility.request_ctrl(veh)
--         if f.value == 0 then
--             vehicle.set_vehicle_can_be_locked_on(veh, false, false)
--         else
--             vehicle.set_vehicle_can_be_locked_on(veh, true, true)
--         end
    else
        return notify('No Vehicle Found!', nil, '')
    end
end

-- function vehicleModel.enableLockOn() ?


function vehicleModel.preventNerbyLockOn(vehicles)

end

function vehicleModel.isSeatEmpty(_veh,_seat)
    
 
end
 

return vehicleModel;