KAddon = {}
KAddon.name = "K"

function KAddon.OnAddOnLoaded(event, addonName)
  if addonName == KAddon.name then
    local PopulateChatterOption = INTERACTION.PopulateChatterOption
    function INTERACTION.PopulateChatterOption(manager, controlID, optionIndex, optionText, optionType, ...)
      if optionType == CHATTER_GOODBYE then
        if optionText == GetString(SI_DEFAULT_QUEST_COMPLETE_DECLINE_TEXT) then
          optionText = "JK!"
        else
          optionText = "K."
        end
      end

       PopulateChatterOption(manager, controlID, optionIndex, optionText, optionType, ...)
    end
  end
end
 
EVENT_MANAGER:RegisterForEvent(KAddon.name, EVENT_ADD_ON_LOADED, KAddon.OnAddOnLoaded)
