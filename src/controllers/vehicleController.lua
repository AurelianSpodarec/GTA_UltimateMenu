


local vehicleController = {}


function vehicleController.all(parent, callback)
     
    for index = 1, #data do
        local ult_category = data[index]

        local ult_categoryName = ult_category.name
        local ult_vehicles = ult_category.children

        local ult_categoryParent = menu.add_feature(ult_categoryName, "parent", parent, nil).id
        for j = 1, #ult_vehicles do
            ult_vehicle = ult_vehicles[j]
            menu.add_feature(ult_vehicle.name, "action", ult_categoryParent, function()                   
                callback(ult_vehicle.hash)
            end)
        end

    end
    
end


return vehicleController