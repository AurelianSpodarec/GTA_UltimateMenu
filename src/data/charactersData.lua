-- /Pedestrians Outfits: https://wiki.gtanet.work/index.php/Peds


local charactersData = {
    
    cop_undecover = {
        name = "",
        outfitHash = "-277325206", -- spawn random cop, all same properites (if needed can always ovveride weapons when creating the model - maybe have an array and pick one randomly if characters are the same
        gender = "male",

        -- health = 328,
        -- armor = 50,
        -- weapons = {
        --     primary = "weapon_railgun",
        --     secondary = "",
        --     melee = "",
        --     throwables = "",
        --     launchers = ""
        -- },
        -- combatAbility = "professional",
        -- combatMovement = "offensive",
        -- combatAccuracy = 1000
    }

}

return charactersData;



-- Have default if no properties defined, then have defalt one
-- Have default properties for cops
-- default properties for paramedics
-- default properties for gang members

-- unless specifcied otherwise























    -- cop = {
    --     {
    --         outfitHash = "", -- maybe have an array and pick one randomly if characters are the same
    --         id = "cop_highway",
    --         name = "cop_1",
    --         category = "city", -- city/county
    --         health = 328,
    --         armor = 50, -- 50 max
    --         weapons = {
    --             primary = "weapon_railgun",
    --             secondary = "",
    --             melee = "",
    --             throwables = "",
    --             launchers = ""
    --         },
    --         combatAbility = "professional",
    --         combatMovement = "offensive"
    --     },
    --     {
    --         id = "cop_snowcop",
    --         outfitHash = "451459928", -- maybe have an array and pick one randomly if characters are the same
    --         category = "city", -- city/county
    --         health = 328,
    --         armor = 50, -- 50 max
    --         weapons = {
    --             primary = "weapon_railgun",
    --             secondary = "",
    --             melee = "",
    --             throwables = "",
    --             launchers = ""
    --         },
    --         combatAbility = "professional",
    --         combatMovement = "offensive"
    --     },
    --     {
    --         id = "cop_undecover",
    --         outfitHash = "-277325206", -- maybe have an array and pick one randomly if characters are the same
    --         gender = "male",
    --         -- category = "city", -- city/county
    --         health = 328,
    --         armor = 50, -- 50 max
    --         weapons = {
    --             primary = "weapon_railgun",
    --             secondary = "",
    --             melee = "",
    --             throwables = "",
    --             launchers = ""
    --         },
    --         combat = {
    --             ability = "professional",
    --             movement = "offensive",
    --             accuracy = 1000
    --         }
    --         -- combatAbility = "professional",
    --         -- combatMovement = "offensive"
    --     }
    -- }, 
    -- swat = {

    -- }
-- }















-- Below is more of a grouping functionality
-- local charactersData = {




-- What if I get JSON wrong? Maybe some testing to make sure an example of the character object has the correct naming or somethinig?
-- Why is this not in JSON but lua actually? Does Lua support working with json?

    -- lawEnforcement = {
    --     police = {},
    --     fbi = {},
    --     swat = {
    --         {
    --             id = 1,
    --             weapons = {
    --                 primary = "weapon_raycarbine",
    --                 secondary = "weapon_smg"
    --             },
    --             health = 10000,
    --             armor = 100,
    --             combatAbility = "professional",
    --             combatMovement = "offensive"
    --         }
    --     },
    --     military = {}
    -- },
    -- gangs = {
        
    --     -- hood,
    --      -- punk
    --     -- chinese
    --     -- korean
    --     -- families
        -- prisoners

    -- },
    -- porn = {},
    -- jesus = {
    --     corpse = {
    --         -- jesus, corpse 1-3, factory, autospy, scientist
    --     },
    --     zombie = {
    --     -- /Jesus Zombie
    --     -- Jesus(godmode, revive dead zombies (once))
    --     -- Zombies
    --     }

    -- },
    -- creepy = { 
    --     -- clown,mime, statue
    -- },
    -- heroic = {
    --     -- /Heroic Team
    --     -- Pogo | Ranger | RS Ranger
    -- },
--     aliens = {
--         vehicle = "Space Docker"
--         {
--             id = "alient",
--             name = "Alient",
--             outfit = "",
--             health = 10000,
--             armor = 100,
--             weapons = {
--                 primary = "weapon_windowmaker"
--             },
--             combatAbility = "professional",
--             combatMovement = "offensive"
--         },
--         {
--             id = "astronaut",
--             name = "Astronaut",
--             outfit = "",
--             health = 2000,
--             armor = 100,
--             weapons = {
--                 primary = "weapon_raycarbine"
--             },
--             combatAbility = "professional",
--             combatMovement = "offensive"
--         },
--         {
--             id = "rs_ranger",
--             name = "RS Ranger",
--             outfit = "",
--             health = 500,
--             armor = 100,
--             weapons = {
--                 primary = "weapon_railgun",
--                 secondary = "",
--                 melee = "",
--                 throwables = "",
--                 launchers = ""
--             },
--             combatAbility = "professional",
--             combatMovement = "offensive"
--         }
--     }
--     -- peds = {},
--     -- animal = {
--     --      --Big foot"
--     --     --  pogo weapon_molotov
--     -- }

-- }
