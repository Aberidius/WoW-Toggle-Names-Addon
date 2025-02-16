SLASH_TOGGLENAMES1 = '/togglenames'

local function ToggleNames()
    local playerName = GetCVarBool("UnitNameOwn")
    local friendlyPlayerNames = GetCVarBool("UnitNameFriendlyPlayerName")
    local npcNames = GetCVarBool("UnitNameNPC")

    if playerName then
        SetCVar("UnitNameOwn", 0)
        SetCVar("UnitNameFriendlyPlayerName", 0)
    else
        SetCVar("UnitNameOwn", 1)
        SetCVar("UnitNameFriendlyPlayerName", 1)
    end

    if npcNames then
        SetCVar("UnitNameNPC", 0)
    else
        SetCVar("UnitNameNPC", 1)
    end
end

SlashCmdList["TOGGLENAMES"] = ToggleNames
