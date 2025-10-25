local Domain = {}

if not BetterConsole then
    BetterConsole = {}
end

-- Ensures required module exists in BetterConsole namespace
-- Throws error if module is not loaded, enforcing proper initialization order
-- @param name string: Name of the required module
-- @return table: The requested module
local function ensure_module(name)
    if not BetterConsole[name] then
        error(("BetterConsole.%s must be defined before loading domain.lua"):format(name))
    end
    return BetterConsole[name]
end

Domain.Models = ensure_module("Models")
Domain.ErrorTypes = ensure_module("ErrorTypes")
Domain.StateManager = ensure_module("StateManager")
Domain.ValidationRules = ensure_module("ValidationRules")
Domain.Validators = ensure_module("Validators")

BetterConsole.Domain = Domain

return Domain
