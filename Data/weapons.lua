-- https://wiki.gtanet.work/index.php?title=Weapons_Models

-- /Notes
-- Doing the data this way is a bit lmting {
        -- Could reate a list of all weapons and give it a 'category' id    {

            -- To give the items order  in catgory, can give them a 'category_item_order' id and organize it like that
            -- Then write a function to ge,t all wepons from X category
                -- That way the database is more dynamic - maybe
 
 


local weapons = {

    {
        name = "Melee",
        children = {
                
            {
                ID = "weapon_dagger",
                name = "Antique Cavalry Dagger",
                hash = 0x92A27487
            },   
            {
                ID = "weapon_bat",
                name = "Baseball Ball",
                hash = 0x958A4A8F
            },
            {
                ID = "weapon_bottle",
                name = "Broken Bottle",
                hash = 0xF9E6AA4B
            },
            {
                ID = "weapon_crowbar",
                name = "Crowbar",
                hash = 0x84BD7BFD
            },
            {
                ID = "weapon_unarmed",
                name = "Fist",
                hash = 0xA2719263
            },
            {
                ID = "weapon_flashlight",
                name = "Flashlight",
                hash = 0x8BB05FD7
            },
            {
                ID = "weapon_golfclub",
                name = "Golf Club",
                hash = 0x440E4788
            },
            {
                ID = "weapon_hammer",
                name = "Hammer",
                hash = 0x4E875F73
            },
            {
                ID = "weapon_hatchet",
                name = "Hatchet",
                hash = 0xF9DCBF2D
            },
            {
                ID = "weapon_knuckle",
                name = "Brass Knuckles",
                hash = 0xD8DF3C3C
            },
            {
                ID = "weapon_knife",
                name = "Knife",
                hash = 0x99B507EA
            },
            {
                ID = "weapon_machete",
                name = "Machete",
                hash = 0xDD5DF8D9
            },
            {
                ID = "weapon_switchblade",
                name = "Switchblade",
                hash = 0xDFE37640
            },
            {
                ID = "weapon_nightstick",
                name = "Nightstick",
                hash = 0x678B81B1
            },
            {
                ID = "weapon_wrench",
                name = "Pipe Wrench",
                hash = 0x19044EE0
            },
            {
                ID = "weapon_battleaxe",
                name = "Battle Axe",
                hash = 0xCD274149
            },
            {
                ID = "weapon_poolcue",
                name = "Pool Cue",
                hash = 0x94117305
            },
            {
                ID = "weapon_stone_hatchet",
                name = "Stone Hatchet",
                hash = 0x3813FC0   
            }

        },

        {
            name = "Handguns",
            children = {

                {                
                    ID = "weapon_pistol",
                    name = "Pistol",
                    hash = 0x1B06D571
                }
                -- { 
                --     ID = "weapon_pistol_mk2",
                --     name = "Pistol Mk II",
                --     hash = 0xBFE256D4
                -- },
                -- { 
                --     ID = "weapon_combatpistol",
                --     name = "Combat Pistol",
                --     hash = 0x5EF9FEC4
                -- },
                -- { 
                --     ID = "weapon_appistol",
                --     name = "AP Pistol",
                --     hash = 0x22D8FE39
                -- },
                -- { 
                --     ID = "weapon_stungun",
                --     name = "Stun Gun",
                --     hash = 0x3656C8C1
                -- },
                -- { 
                --     ID = "weapon_pistol50",
                --     name = "Pistol .50",
                --     hash = 0x99AEEB3B
                -- },
                -- { 
                --     ID = "weapon_snspistol",
                --     name = "SNS Pistol",
                --     hash = 0xBFD21232
                -- },
                -- { 
                --     ID = "weapon_snspistol_mk2",
                --     name = "SNS Pistol Mk II",
                --     hash = 0x88374054
                -- },
                -- { 
                --     ID = "weapon_heavypistol",
                --     name = "Heavy Pistol",
                --     hash = 0xD205520E
                -- },
                -- { 
                --     ID = "weapon_vintagepistol",
                --     name = "Vintage Pistol",
                --     hash = 0x83839C4
                -- },
                -- { 
                --     ID = "weapon_flaregun",
                --     name = "Flare Gun",
                --     hash = 0x47757124
                -- },
                -- { 
                --     ID = "weapon_marksmanpistol",
                --     name = "Marksman Pistol",
                --     hash = 0xDC4DB296
                -- },
                -- { 
                --     ID = "weapon_revolver",
                --     name = "Heavy Revolver",
                --     hash = 0xC1B3C3D1
                -- },
                -- { 
                --     ID = "weapon_revolver_mk2",
                --     name = "Heavy Revolver Mk II",
                --     hash = 0xCB96392F
                -- },
                -- { 
                --     ID = "weapon_doubleaction",
                --     name = "Double Action Revolver",
                --     hash = 0x97EA20B8
                -- },
                -- { 
                --     ID = "weapon_raypistol",
                --     name = "Up-n-Atomizer",
                --     hash = 0xAF3696A1
                -- },
                -- { 
                --     ID = "weapon_ceramicpistol",
                --     name = "Ceramic Pistol",
                --     hash = 0x2B5EF5EC
                -- },
                -- { 
                --     ID = "weapon_navyrevolver",
                --     name = "Navy Revolver",
                --     hash = 0x917F6C8C
                -- },
                -- { 
                --     ID = "weapon_gadgetpistol",
                --     name = "Perico Pistol",
                --     hash = 0x57A4368C
                -- },
                -- {
                --     ID = "weapon_stungun_mp",
                --     name = "Stun Gun",
                --     hash = 0x45CD9CF3
                -- }

             }

        }


    }

}

return weapons