local entityHelper = require('UltimateMenu.src.helpers.entityHelper')



local entityModel = {};


function entityModel.setGodmode(fult_entity)
    return entity.set_entity_god_mode(ult_entity, true)
end

function entityModel.removeGodmode(ilt_entity)
    return entity.set_entity_god_mode(ult_entity, false)
end

function entityModel.setVisibility(ult_entity, isVisible) 
    entity.set_entity_visible(ent, false)
end


return entityModel