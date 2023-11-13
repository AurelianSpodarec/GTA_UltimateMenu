require("UltimateMenu.src.core.menu.createMenu")
local routes = require("UltimateMenu.src.config.routes");

function load()
  createMenu(routes)
end
