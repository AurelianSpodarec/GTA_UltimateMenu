require("GTA_LawEnforcement.views.localMenu.localMenu")

if _ultimateMenuDev then
    print('Ultimate Menu already loaded!')
    return menu.notify('Ultimate Menu already loaded!', 'Ultimate Menu Setup', 8, 0x0000FF)
end


function ultimateMenu()

    localMenu()
    -- onlineMenu()
 
    _ultimateMenuDev = true
    return true
end


if ultimateMenu() then 
    return menu.notify('LawEnforcementMen Successfully executed!', 0x00ff00)
end


-- function UltimateMenu:new ()

--     self.isLoaded = false

-- end

-- function UltimateMenu:load() 
--     localMenu()
--     self.isLoaded true
--     if self.isLoaded
--         menu.notify('LawEnforcementMen Successfully executed!', 0x00ff00)
--     end
-- end

-- function UltimateMenu:init() 
--     self.load()
-- end


-- UltimateMenu:init();