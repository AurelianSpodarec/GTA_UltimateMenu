local function createSubMenu(category, parent)
  for _, subCategory in pairs(category) do
    local categoryName = subCategory.name
    local categoryChildren = subCategory.children

    local categoryId = menu.add_player_feature(categoryName, "action", parent, nil).id

    if categoryChildren then
      createSubMenu(categoryChildren, categoryId)
    end
  end
end
