local createSubMenu = require('UltimateMenu.src.core.menu.createSubMenu')

local state = {
  viewsLoaded = false
}

local testData =  {
  {
    name = "Hi",
    type = "action",
    component = ""
  },
  {
    name = "woo",
    type = "action",
    component = ""
  }
}

function createList(data, parent) 
  if not data then

  end
  for _, item in pairs(data) do
    menu.add_player_feature(item.name, "action", parent, function(feat, pid)
      -- Functionality 
    end, name)
  end
end



local function createFeature(item, parent)
  local name = item.name
  local component = item.component
  local type = item.type or "action"
  local data = item.data

    -- Menu Item
    if data then
      local subParent = menu.add_player_feature(name, "parent", parent, nil).id
      if not state.viewsLoaded then
        createList(data, subParent)
      end
      state.viewsLoaded = true
    else  
      menu.add_player_feature(name, type, parent, function(feat, pid)
        component(feat, name, pid)
      end, name)
    end

end



function menuChildren(subMenuItem, parent)
  if not subMenuItem then
    return
  end

  for _, item in pairs(subMenuItem) do
    local subMenu = item.children

    if(subMenu) then  
      local name = menu.add_player_feature(item.name, "parent",  parent, nil).id
      menuChildren(subMenu, name)
    else
      createFeature(item, parent)
    end
  end
end



        -- end
        -- menu.add_player_feature("hgi", "action", par, function(feat, pid)
        
        -- end, name)
        -- local nameParent = menu.add_player_feature(name, type, parent, function(feat)

        --   -- if not state.viewsLoaded then
        --   --   for _, category in pairs(testData) do
        --       -- menu.add_player_feature("hi", "parent", par, nil).id
        --       -- FBIMenu = menu.add_feature("FBI", "action", nameParent, nil).id
        --       menu.add_feature("Personel", "action", nameParent, function(feat) 

        --         -- local characterData = characterModel.getByID("cop_undercover")
        --         -- local groupID = player.get_player_group(player.player_id())
                
        --         -- character = characterModel.create(characterData)
        --         -- groupModel.setPedGroup(character, groupID, true)
                
            
        --     end)
        --       -- local catName = menu.add_player_feature("hi", "action", nameParent, nil).id
        --       -- Uncomment the following section if you have additional logic for handling sub-children
        --       -- createSubMenu(category.children, catName)
        --     -- end
        -- -- end
        -- -- state.viewsLoaded = true

        -- end).id

        
  -- if subMenu then
  --   local subMenuId = menu.add_player_feature(name, "parent", parent, nil).id
  --   createSubMenu(subMenu, subMenuId)
  -- elseif component then
    -- if type then
    --   if data then

    --     local nameParent = menu.add_player_feature(name, type, parent, function()
    --       if not state.viewsLoaded then
    --         for _, category in pairs(data) do
    --           local catName = menu.add_player_feature(category.name, "action", nameParent, nil).id
    --           -- Uncomment the following section if you have additional logic for handling sub-children
    --           -- createSubMenu(category.children, catName)
    --         end
    --       end
    --       state.viewsLoaded = true

    --     end).id
    --   else
    --     menu.add_player_feature(name, type, parent, function(feat, pid)
    --       component(feat, name, pid)
    --     end, name)
    --   end
    -- else
    --   menu.add_player_feature(name, "action", parent, function(feat, pid)
    --     component(feat, name, pid)
    --   end, name)
    -- end
  -- end