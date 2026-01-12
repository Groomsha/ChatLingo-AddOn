-- Author: Groomsha (Ihor Cheberiak)

-- Simple addon initialization without AceAddon to avoid conflicts
local function OnInitialize()
    -- Initialize SavedVariables
    if not ChatLingoAddonData then
        ChatLingoAddonData = {
            settings = {},
            pendingMessages = {},
            translatedMessages = {},
            excludeList = {}
        }
    else
        -- Ensure all fields exist
        ChatLingoAddonData.settings = ChatLingoAddonData.settings or {}
        ChatLingoAddonData.pendingMessages = ChatLingoAddonData.pendingMessages or {}
        ChatLingoAddonData.translatedMessages = ChatLingoAddonData.translatedMessages or {}
        ChatLingoAddonData.excludeList = ChatLingoAddonData.excludeList or {}
    end

    -- Print load message
    -- print("ChatLingo loaded!")  -- Disabled to avoid conflicts
end

-- Register the initialization function
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addonName)
    if addonName == "ChatLingo" then
        OnInitialize()
        self:UnregisterEvent("ADDON_LOADED")
    end
end)
