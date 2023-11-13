require("UltimateMenu.src.core.menu.createItem");

function createMenu(routes)
	local menuItem =(menu.add_player_feature("Ultimate Menu", "parent", 0, nil)).id;
	for index, item in pairs(routes) do createItem(item, menuItem); end
end
