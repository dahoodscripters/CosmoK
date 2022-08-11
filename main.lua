if not game:IsLoaded() then
    game.Loaded():Wait()
end

-- [[ Security ]] --

getgenv().Key = 'CRACKED-BY-PENNYWISE-LOL'
getgenv().Discord = '696969696969696969'

-- [[ Settings ]] --

getgenv().prefix = '!' -- prefix which should run the commands
getgenv().controller = 12345 -- id of controller, aka the account which uses the commands

getgenv().gui = true -- controller gui
getgenv().lag_reducer = false -- alternative lag reducer if gui is not being used

getgenv().FPS = 5 -- the default fps which alts should have when they join
getgenv().CrewId = 14007434 -- The group id which alts should join with !joingroup
getgenv().ChatMessages = false -- toggle if you want alts to say messages on commands or not

getgenv().alts = { -- max 38 alts
    Alt1 = 12345, -- Alt3, etc make sure all have ',' after each alt
    Alt2 = 12345,
}

-- [[ Launcher ]] --

loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/Bypasser.lua"))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Husam-Dev/altcontroller/main/premium.lua', true))()
