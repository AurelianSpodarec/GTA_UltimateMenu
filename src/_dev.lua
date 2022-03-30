require('UltimateMenu.src.ultimateMenu')

if _ultimateMenuDev then
    print('Ultimate Menu already loaded!')
    return menu.notify('Ultimate Menu already loaded!', 'Ultimate Menu Setup', 8, 0x0000FF)
end


function ultimateMenu()

    load()
 
    _ultimateMenuDev = true
    return true
end


if ultimateMenu() then 
    return menu.notify('Ultimate Menu Successfully executed!', 0x00ff00)
end