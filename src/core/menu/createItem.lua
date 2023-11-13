require("UltimateMenu.src.core.menu.menuChildren")

function createItem(item, parent)
  if (item) then

    local name = item.name
    local subMenu = item.children
    local component = item.component

    local name = menu.add_player_feature(name, "parent", parent, nil).id
    if (subMenu) then
        menuChildren(subMenu, name)
    end

  end
end
