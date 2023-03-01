-- Define the whitelist
local Whitelist = {
    Discord = "wbya",
    Keys = {
        ["B-O-O-M#4134-OWNER-Private"] = true,
        ["BxB-xyz-FGDO-MIZG-Premium"] = true,
        ["BxB-xyz-BBSH-AHEJ-Premium"] = true,
    },
    Hwid = {
        "3F27C118-5600-4F51-968A-994212D20A64",
        "FF0272E9-3286-4B88-AB02-C722A4B1618EF",
        "FF0272E9-3286-4B88-AB02-C722A4B1618",
    },
}

-- Get the client ID
local CliendID = game:GetService("RbxAnalyticsService"):GetClientId()

-- Check if the client ID is in the HWID whitelist
local HwidIndex = table.find(Whitelist.Hwid, CliendID)
local WhitelistKey = Whitelist.Hwid[HwidIndex] and next(Whitelist.Keys)

-- Check if the whitelist key is valid and matches the provided key
if WhitelistKey then
    if Whitelist.Keys[_G.Key] then
        -- Check if the Discord name is valid
        if Whitelist.Discord == "ALL" or Whitelist.Discord == game.Players.LocalPlayer.DisplayName then
            print("Script")
        else
            print("No Discord")
        end
    else
        print("No Key")
    end
else
    print("No HWID")
end
