local attackPlayer = require('UltimateMenu.src.views.localMenu.pedestrians.action.attackPlayer')


function pedestriansMenu_action(parent)
    pedestriansMenu_action = menu.add_feature('Action', 'parent', parent, nil).id

    pedestriansMenu_attackPlayer(pedestriansMenu_action)


end