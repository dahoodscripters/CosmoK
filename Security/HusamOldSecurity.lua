getgenv().controller = 3296031680
    local function __CheckSpoof__(CheckId)
        repeat wait() until game:GetService('Players'):GetPlayerByUserId(CheckId)
        local UserID_Data = game:HttpGet('https://users.roblox.com/v1/users/'..CheckId, true)
        local User = game:GetService('Players'):GetPlayerByUserId(CheckId)
        if UserID_Data and User then
            print('Husam#0001: Spoof Checking')
        else
            return
        end
        local DecodedData_User = game:GetService('HttpService'):JSONDecode(UserID_Data)
        if User.Name ~= User.Character.Name then
            game.Players.LocalPlayer:Kick("Husam#0001: Don't waste your time with spoofing (could be error, if it is error then rejoin and ignore or take help of me)")
            return
        end
        if game:GetService('Players'):GetUserIdFromNameAsync(User.Name) ~= User.UserId then
            game.Players.LocalPlayer:Kick("Husam#0001: Don't waste your time with spoofing (could be error, if it is error then rejoin and ignore or take help of me)")
            return
        end
        if User.DisplayName ~= DecodedData_User.displayName then
            game.Players.LocalPlayer:Kick("Husam#0001: Don't waste your time with spoofing (could be error, if it is error then rejoin and ignore or take help of me)")
            return
        end
        if DecodedData_User.isBanned then
            game.Players.LocalPlayer:Kick("Husam#0001: Don't waste your time with spoofing (could be error, if it is error then rejoin and ignore or take help of me)")
            return
        end
        if User then
            for i,v in pairs(game.Players:GetCharacterAppearanceAsync(tonumber(CheckId)):GetChildren()) do
                if v:IsA('Accessory') then
                    if User.Character:FindFirstChild(v.Name) then else
                        game.Players.LocalPlayer:Kick(" big problem Husam#0001: Don't waste your time with spoofing (could be error, if it is error then rejoin and ignore or take help of me)")
                        return
                    end
                end
            end
        else
            game.Players.LocalPlayer:Kick("Husam#0001: User not found for spoof check (join with controller account first then alts if you're using altcontrol or script based on putting someone else id")
        end
    end

    __CheckSpoof__(game.Players.LocalPlayer.UserId)
    __CheckSpoof__(getgenv().controller)
