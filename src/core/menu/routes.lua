--------------------------------------------------------------------
-- Road
---------------------------------------------------------------------

    -- Aircraft
    ---------------------------------------------------------------------
    require("UltimateMenu.src.views.trolling.aircraft.kamikadzePlane")
    require("UltimateMenu.src.views.trolling.aircraft.rubioHelicopter")

    -- Enviroment
    ---------------------------------------------------------------------
    require("UltimateMenu.src.views.trolling.enviroment.floatingVehicles")

    -- Road
    ---------------------------------------------------------------------
    require("UltimateMenu.src.views.trolling.road.policeChase")
    require("UltimateMenu.src.views.trolling.road.militaryChase")
    require("UltimateMenu.src.views.trolling.road.carAccident")

---------------------------------------------------------------------
-- Pedestrians
---------------------------------------------------------------------

    -- Weapons
    ---------------------------------------------------------------------
    require("UltimateMenu.src.views.pedestrians.weapons.pedSetWeapon")

local routes = {
    {
        name = "Trolling",
        children = {
            {
                name = "Aircrafts",
                children = {
                    {
                        name = "Kamikadze Plane",
                        component = kamikadzePlane
                    },
                    {
                        name = "Spawn Rubios Attack Chopper",
                        component = rubioHelicopter
                    }
                }
            },
            {
                name = "Enviroment",
                children = {
                    {
                        name = "Floating Vehicles",
                        type = "toggle",
                        component = floatingVehicles
                    }
                }
            },
            {
                name = "Police Chase",
                component = policeChase
            },
            {
                name = "Military Chase",
                component = militaryChase
            },
            {
                name = "Car Addicent",
                component = carAccident
            }
        }
    },
    {
        name = "Pedestrian",
        children = {
            {
                name = "Action",
                children = {
                    {
                        name = "Attack Player",
                    }
                }
            },
            {
                name = "Weapons",
                children = {
                    {
                        name = "Set Weapon",
                        type = "parent",
                        component = pedSetWeapon,
                    }
                }
            },
            {
                name = "GodMode",
            },
            {
                name = "Weapon",
            }
        }
    },
    {
        name = "Protection"
    },
    {
        name = "Vehicles"
    }
}

return routes;
