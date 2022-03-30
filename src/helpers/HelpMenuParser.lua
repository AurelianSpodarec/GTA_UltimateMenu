local ModelSpawn <const> = require('UltimateMenu.src.model.ModelSpawn')



local HelpMenuParser = {}

function HelpMenuParser.createActionList(data, parent)

    for i = 1, #data do

        local item = data[i]
        local itemChildren = item.children
        local parent = menu.add_feature(item.name, "parent", parent, nil).id

        for j = 1, #itemChildren do
            local area = itemChildren[j]

            menu.add_feature(area.name, "action", parent, function(f) 
                ModelSpawn.vehicle(area.hash, player.get_player_coords(player.player_id()))
            end)
        end

    end

end

return HelpMenuParser;