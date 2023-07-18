function menuChildren(subMenuItem, parent)
    if(subMenuItem) then

        for index, item in pairs(subMenuItem) do
            local name = item.name
            local subMenu = item.children
            local component = item.component

            if(subMenu) then
                local name = menu.add_player_feature(name, "parent",  parent, nil).id
                menuChildren(subMenu, name)
            elseif(component) then
                local name = menu.add_player_feature(name, "action", parent, function() 
                    component()
                end)
            end


        end

    end
end

function createItem(item, parent)
    if(item) then

        local name = item.name
        local subMenu = item.children
        local component = item.component

        local name = menu.add_player_feature(name, "parent", parent, nil).id
        if(subMenu) then
            menuChildren(subMenu, name)
        end

    end
end
