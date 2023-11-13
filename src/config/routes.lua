-------------------------------------------------------------------------------
-- Trolling
-------------------------------------------------------------------------------

  -- Aircraft
  ---------------------------------------------------------------------------
  require("UltimateMenu.src.views.trolling.aircraft.kamikadzePlane")
  require("UltimateMenu.src.views.trolling.aircraft.rubioHelicopter")

  -- Enviroment
  ---------------------------------------------------------------------------
  require("UltimateMenu.src.views.trolling.enviroment.floatingVehicles")

  -- Road
  ---------------------------------------------------------------------------
  require("UltimateMenu.src.views.trolling.road.policeChase")
  require("UltimateMenu.src.views.trolling.road.militaryChase")
  require("UltimateMenu.src.views.trolling.road.carAccident")
  require("UltimateMenu.src.views.trolling.road.policeBlockade")

  -- Other
  ---------------------------------------------------------------------------
  require("UltimateMenu.src.views.trolling.suicideBomber")
    
-------------------------------------------------------------------------------
-- Pedestrians
-------------------------------------------------------------------------------

  -- Weapons
  ---------------------------------------------------------------------------
  require("UltimateMenu.src.views.pedestrians.weapons.pedSetWeapon")
  local dataWeapons = require('UltimateMenu.src.data.weaponsData')

-------------------------------------------------------------------------------
-- Drama
-------------------------------------------------------------------------------
  require("UltimateMenu.src.views.drama.copChasesCar")

  -- test
  require("UltimateMenu.src.views.dispatch.test")
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------


-- TEST
require("UltimateMenu.src.views.test.testAction")
require("UltimateMenu.src.views.test.testToggle")
local routes = {
  -- -------------------------------------------------------------------------
  -- Test
  -- -------------------------------------------------------------------------
  {
    name = "Test",
    children = {
      {
        name = "parent",
        type = "parent",
        component = "",
        data = {
          {
            name = "Hi"
          },
          {
            name = "woo"
          }
        },
          -- component = ""
      },
      {
        name = "Action",
        type = "action",
        component = testAction
      },
      {
        name = "Toggle",
        type = "toggle",
        component = testToggle
      },
      {
        name = "Value Str",
        type = "value_str",
        component = ""
      },
      {
        name = "action_value_str",
        type = "action_value_str",
        component = ""
      },
      {
        name = "slider",
        type = "slider",
        component = ""
      },
      {
        name = "autoaction_value_str",
        type = "autoaction_value_str",
        component = ""
      }
    }
  },
    -- -------------------------------------------------------------------------
    -- Trolling
    -- -------------------------------------------------------------------------
    -- {
    --     name = "Trolling",
    --     children = {
    --         {
    --             name = "Test Dispatch",
    --             component = testDispatch
    --         },
    --         {
    --             name = "Aircrafts",
    --             children = {
    --                 {
    --                     name = "Kamikadze Plane",
    --                     component = kamikadzePlane
    --                 },
    --                 {
    --                     name = "Spawn Rubios Attack Chopper",
    --                     component = rubioHelicopter
    --                 }
    --             }
    --         },
    --         {
    --             name = "Enviroment",
    --             children = {
    --                 {
    --                     name = "Floating Vehicles",
    --                     type = "toggle",
    --                     component = floatingVehicles
    --                 }
    --             }
    --         },
    --         {
    --             name = "Police Chase",
    --             component = policeChase
    --         },
    --         {
    --             name = "Military Chase",
    --             component = militaryChase
    --         },
    --         {
    --             name = "Car Addicent",
    --             component = carAccident
    --         },
    --         {
    --             name = "Police Blockade",
    --             component = policeBlockade
    --         },
    --         -- {
    --         --     name = "Suicide Bomber",
    --         --     component = suicideBomber
    --         -- }
    --     },
    -- },
    -- -- -------------------------------------------------------------------------
    -- -- Pedestrians
    -- -- -------------------------------------------------------------------------
    -- {
    --     name = "Pedestrian",
    --     children = {
    --         {
    --             name = "Action",
    --             children = {
    --                 {
    --                     name = "Attack Player",
    --                 }
    --             }
    --         },
    --         {
    --             name = "Weapons",
    --             children = {
    --                 {
    --                     name = "Set Weapon",
    --                     type = "parent",
    --                     data = dataWeapons,
    --                     component = pedSetWeapon,
    --                 }
    --             }
    --         },
    --         {
    --             name = "GodMode",
    --         },
    --         {
    --             name = "Weapon",
    --         }
    --     }
    -- },
    -- -- -------------------------------------------------------------------------
    -- -- Drama
    -- -- -------------------------------------------------------------------------
    -- {
    --     name = "Drama",
    --     children = {
    --         {
    --             name = "Cop Chases Car",
    --             component = copChasesCar
    --         }
    --     }
    -- },
    -- -- -------------------------------------------------------------------------
    -- -- Protection
    -- -- -------------------------------------------------------------------------
    -- {
    --     name = "Protection"
    -- },
}

return routes;
