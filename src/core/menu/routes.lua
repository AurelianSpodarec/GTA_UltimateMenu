require("UltimateMenu.src.views.localMenu.trolling.plane.kamikadzePlane")

local routes = {
    {
        name = "Trolling",
        children = {
            {
                name = "Plane",
                children = {
                    {
                        name = "Kamikadze",
                        component = kamikadzePlane
                    }
                }
            },
            {
                name = "Enviroment",
            },
            {
                name = "Road",
            }
        }
    },
    {
        name = "Pedestrian"
    },
    {
        name = "Protection"
    },
    {
        name = "Vehicles"
    }
}

return routes;