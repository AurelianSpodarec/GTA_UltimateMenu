local createSubMenu = require('UltimateMenu.src.core.menu.createSubMenu')

local state = {
  viewsLoaded = false
}

-- value_str
-- action
-- togle
-- parent
-- action_value_str
-- slider
-- autoaction_value_str

local function createFeature(item, parent)
  local name = item.name
  local subMenu = item.children
  local component = item.component
  local type = item.type
  local data = item.data

  if subMenu then
    local subMenuId = menu.add_player_feature(name, "parent", parent, nil).id
    createSubMenu(subMenu, subMenuId)
  elseif component then
    if type then
      if data then
        local nameP = menu.add_player_feature(name, type, parent, function()
          if not state.viewsLoaded then
            for _, category in pairs(data) do
              local catName = menu.add_player_feature(category.name, "action", nameP, nil).id
              -- Uncomment the following section if you have additional logic for handling sub-children
              -- createSubMenu(category.children, catName)
            end
          end
          state.viewsLoaded = true
        end).id
      else
        menu.add_player_feature(name, type, parent, function(feat, pid)
          component(feat, name, pid)
        end, name)
      end
    else
      menu.add_player_feature(name, "action", parent, function(feat, pid)
        component(feat, name, pid)
      end, name)
    end
  end
end
