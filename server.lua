local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5[' .. GetCurrentResourceName() .. ']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest(
        'https://raw.githubusercontent.com/Andyauk/rsg-npcdoc/main/version.txt',
        function(err, text, headers)
            local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

            if not text then
                versionCheckPrint('error', 'Currently unable to run a version check.')
                return
            end

            --versionCheckPrint('success', ('Current Version: %s'):format(currentVersion))
            --versionCheckPrint('success', ('Latest Version: %s'):format(text))

            if text == currentVersion then
                versionCheckPrint('success', 'You are running the latest version.')
            else
                versionCheckPrint(
                    'error',
                    ('You are currently running an outdated version, please update to version %s'):format(text)
                )
            end
        end
    )
end

-----------------------------------------------------------------------

RSGCore.Functions.CreateCallback(
    'rsg-medic:server:payFortreatment',
    function(source, cb, amount, type)
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)
        if type == 'any' then
            local cashpay = Player.Functions.RemoveMoney('cash', amount, 'Paid For Treatment')
            local bankpay = Player.Functions.RemoveMoney('bank', amount, 'Paid For Treatment')
            if cashpay then
                cb(true)
            elseif bankpay then
                cb(true)
            else
                cb(false)
            end
        else
            local pay = Player.Functions.RemoveMoney(type, amount, 'Paid For Treatment')
            if pay then
                cb(true)
            else
                cb(false)
            end
        end
    end
)

--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()
