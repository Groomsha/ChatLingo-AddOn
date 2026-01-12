local MAJOR, MINOR = "AceLocale-3.0", 6
local AceLocale, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not AceLocale then return end

local gameLocale = GetLocale()
if gameLocale == "enGB" then gameLocale = "enUS" end

local function initLookupTable(tbl, locale, defaultLocale)
    local lookup = {}
    for k,v in pairs(tbl) do
        lookup[k] = v
    end
    tbl[locale] = lookup
    if not tbl[defaultLocale] then
        tbl[defaultLocale] = lookup
    end
end

function AceLocale:NewLocale(application, locale, isDefault)
    local app = self.apps[application] or {}
    self.apps[application] = app
    if locale then
        locale = string.lower(locale)
        if locale == "en" then locale = "enUS" end
        if locale == "gb" then locale = "enGB" end
        app[locale] = isDefault and {} or false
        if isDefault then
            initLookupTable(app, locale, locale)
        end
    end
    return app
end

function AceLocale:GetLocale(application, silent)
    local app = self.apps[application]
    if not app then
        if not silent then
            error(("AceLocale: Application '%s' has not been registered."):format(application), 2)
        end
        return nil
    end
    return app[gameLocale] or app.enUS or app.enGB or app.default
end

AceLocale.apps = AceLocale.apps or {}