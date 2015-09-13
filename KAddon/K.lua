KAddon = {}
KAddon.name = "K"

function KAddon.OnAddOnLoaded(event, addonName)
  if addonName == KAddon.name then
    local PopulateChatterOption = ZO_Interaction.PopulateChatterOption
    function ZO_Interaction.PopulateChatterOption(manager, controlID, optionIndex, optionText, optionType, ...)
       if optionType == CHATTER_GOODBYE then
          optionText = "K."
       end

       PopulateChatterOption(manager, controlID, optionIndex, optionText, optionType, ...)
    end
  end
end
 
EVENT_MANAGER:RegisterForEvent(KAddon.name, EVENT_ADD_ON_LOADED, KAddon.OnAddOnLoaded)
