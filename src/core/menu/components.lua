local state = { viewsLoaded = false }
function menuChildren(subMenuItem, parent)
    if(subMenuItem) then
        
        for index, item in pairs(subMenuItem) do
            local name = item.name
            local subMenu = item.children
            local component = item.component
            local type = item.type
            local data = item.data
            
            if(subMenu) then
                local name = menu.add_player_feature(name, "parent",  parent, nil).id
                menuChildren(subMenu, name)
            elseif(component) then
                if(type) then

                    if(data) then
                        local nameP = menu.add_player_feature(name, type, parent, function() 
                            if not state.viewsLoaded then

                                -- for index = 1, #data do
                                    -- local category = data[index]
                            
                                    -- local catName = category.name
                                    -- local children = category.children
                            
                                    catName = menu.add_player_feature("name", "action", nameP, nil).id
                                    -- local catName = menu.add_player_feature("#################", "action", nameE, nil).id
                            
                                    -- for j = 1, #children do
                                    --     subChildren = children[j]
                                    --     menu.add_player_feature(subChildren.name, "action", parent, function()                   
                                    --         callback(subChildren.hash)
                                    --     end)
                                    -- end
                                    
                                -- end
                            end
                            state.viewsLoaded = true
                        end).id
                    else
                        local name = menu.add_player_feature(name, type, parent, function(feat) 
                            component(feat, name)
                        end, name)
                    end

                else
                    local name = menu.add_player_feature(name, "action", parent, function(feat) 
                        component(feat, name)
                    end, name)
                end
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
