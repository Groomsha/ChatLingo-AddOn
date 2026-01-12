-- Author: Groomsha (Ihor Cheberiak)

local AceAddon = LibStub("AceAddon-3.0")
local ChatLingo = AceAddon:NewAddon("ChatLingo", "AceEvent-3.0", "AceLocale-3.0")

function ChatLingo:OnInitialize()
    -- Initialize SavedVariables
    if not ChatLingoData then
        ChatLingoData = {}
    end

    -- Get locale
    local L = self.L

    -- Print load message
    print(L["Loaded"])
end

function ChatLingo:OnEnable()
    -- Registration of events can be done here
end

function ChatLingo:OnDisable()
    -- Cleanup if needed
end
