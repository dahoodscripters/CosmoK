-- INSTRUCTIONS --
--[[

Add your main account user ID to controller and add your alts accounts IDs to the alts table.

]]

if not game:IsLoaded() then
    game.Loaded():Wait()
end
-- [[ Settings ]] --

getgenv().prefix = '!' -- prefix which should run the commands
getgenv().controller = 12345 -- id of controller, requirements: must be in the group

getgenv().gui = true -- controller gui

getgenv().FPS = 5 -- the default fps which alts should have when they join
getgenv().CrewId = 14007434 -- The group id which alts should join with !joingroup
getgenv().ChatMessages = false -- toggle if you want alts to say messages on commands or not

getgenv().alts = { -- max 38 alts
    Alt1 = 12345, -- Alt3, etc make sure all have "," after each alt
    Alt2 = 12345,
}

-- [[ Launcher ]] --

if not game:service"Players":GetPlayerByUserId(controller) and game:service"Players".LocalPlayer.UserId ~= controller then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/PcDontCry.lua"))()
end
repeat wait() until game.Players:FindFirstChild(game:service"Players":GetPlayerByUserId(controller).Name)
repeat wait() until game:GetService("Workspace").Players:FindFirstChild(game:service"Players":GetPlayerByUserId(controller).Name)

-- [[ Launcher ]] --

loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/Modfication.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIuePydVbxTKTNkg/CosmoK/main/Bypasser.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Husam-Dev/altcontroller/main/premium.lua", true))()
