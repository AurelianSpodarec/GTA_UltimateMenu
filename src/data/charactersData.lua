
-- Variation of characters
local XXXcharactersData = {
    cops = {
        {
            id = "id_cop",
            name = "cop_1",
            category = "city", -- city/county
            outfit = "", -- maybe have an array and pick one randomly if characters are the same
            health = 500,
            armor = 100,
            weapons = {
                primary = "weapon_railgun",
                secondary = "",
                melee = "",
                throwables = "",
                launchers = ""
            },
            combatAbility = "professional",
            combatMovement = "offensive"
        }
    }, 
    swat = {

    }
}















-- Below is more of a grouping functionality
local charactersData = {




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
    aliens = {
        vehicle = "Space Docker"
        {
            id = "alient",
            name = "Alient",
            outfit = "",
            health = 10000,
            armor = 100,
            weapons = {
                primary = "weapon_windowmaker"
            },
            combatAbility = "professional",
            combatMovement = "offensive"
        },
        {
            id = "astronaut",
            name = "Astronaut",
            outfit = "",
            health = 2000,
            armor = 100,
            weapons = {
                primary = "weapon_raycarbine"
            },
            combatAbility = "professional",
            combatMovement = "offensive"
        },
        {
            id = "rs_ranger",
            name = "RS Ranger",
            outfit = "",
            health = 500,
            armor = 100,
            weapons = {
                primary = "weapon_railgun",
                secondary = "",
                melee = "",
                throwables = "",
                launchers = ""
            },
            combatAbility = "professional",
            combatMovement = "offensive"
        }
    }
    -- peds = {},
    -- animal = {
    --      --Big foot"
    --     --  pogo weapon_molotov
    -- }

}

return charactersData