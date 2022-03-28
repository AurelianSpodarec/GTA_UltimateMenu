
-- Make it so X players can use the cmds or all players or by friends etc...

cmds <const> = {
    self = {

    },
    vehicle = {
        {
            'cmd_vehicleRepair',
            '/vehicle repair'
        },
        {
            'cmd_vehicleUpgrade',
            '/vehicle upgrade'
        }
    },
    police = {
        {
            'cmd_policeClear',
            '/police level_1'
        },
        {
            'cmd_policeNo',
            '/police never'
        }
    }
}


-- local cmds = {
--     all = {
--         {'cmd_clearwanted', '/clearwanted'},
--         {'cmd_giveweapons', '/giveweapons'},
--         {'cmd_removeweapons', '/removeweapons <playername>'},
--         {'cmd_setbounty', '/setbounty <playername>'},
--         {'cmd_explode', '/explode <playername>'},
--         {'cmd_lag', '/lag <playername>'},
--         {'cmd_trap', '/trap <playername>'},
--         {'cmd_kick', '/kick <playername>'},
--         {'cmd_crash', '/crash <playername>'},
--         {'cmd_spawn', '/spawn <NAME>'},
--         {'cmd_vehiclegod', '/vehiclegod <on/off>'},
--         {'cmd_upgrade', '/upgrade'},
    
--     },
--     self = {
--         {'cmd_tp', '/tp <playername>'},
--         {'cmd_explode_all', '/explodeall'},
--         {'cmd_kick_all', '/kickall'},
--         {'cmd_crash_all', '/crashall'},
--     }
-- }