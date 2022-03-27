local MenuData = {
    military = {
        name = "Military",
        spawn_vehicles = {
            name = "Spawn Vehicles",
            children = {
                {
                    name = "Cars",
                    children = {
                        {
                            name = 'Ramp Buggy',
                            hash = 0xCEB28249
                        },
                    },
                },
                {
                    name = "Planes",
                    children = {
                        {
                            name = 'Akula',
                            hash = 0x46699F47
                        },
                        {
                            name = 'Annihilator',
                            hash = 0x31F0B376
                        },
                        {
                            name = 'Buzzard',
                            hash = 0x2F03547B
                        },
                        {
                            name = 'Hunter',
                            hash = 0xFD707EDE
                        },
                        {
                            name = 'Savage',
                            hash = 0xFB133A17
                        },
                        {
                            name = 'Valkyrie',
                            hash = 0xA09E15FD
                        },
                        {
                            name = 'Valkyrie 2',
                            hash = 0x5BFA5C4B
                        },
                        {
                            name = 'Annihilator 2',
                            hash = 0x11962E49
                        },
                        {
                            name = 'Avenger',
                            hash = 0x81BD2ED0
                        },
                        {
                            name = 'Bombushka',
                            hash = 0xFE0A508C
                        },
                        {
                            name = 'Hydra',
                            hash = 0x39D6E83F
                        },
                        {
                            name = 'Lazer',
                            hash = 0xB39B0AE6
                        },
                        {
                            name = 'B-11 Strikeforce',
                            hash = 0x64DE07A1
                        },
                        {
                            name = 'Alkonost',
                            hash = 0xEA313705
                        }
                    }
                },
                {
                    name = "Combat Vehicle",
                    children = {
                        {
                            model = "RHINO", 
                            hash = 782665360, 
                            name = "Rhino", 
                            category = "Car"
                        },
                        {
                            model = "BARRACKS", 
                            hash = 3471458123, 
                            name = "Barracks", 
                            category = "Car"
                        },
                        {
                            name = 'APC',
                            hash = 0x2189D250
                        },
                    }
                }
            }
        },
        trolling = {
            name = "Trolling",
            children = {
                -- attack
            }
        },
        peaceful = {
            name = "Peaceful",
            children = {
                -- protection
            }
        }
    },
    police = {
        name = "Police",
        children = {

        }
    }

}

return MenuData