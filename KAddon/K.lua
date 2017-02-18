KAddon = {}
KAddon.name = "K"

function KAddon.Install(interaction)
  local PopulateChatterOption = interaction.PopulateChatterOption
  function interaction.PopulateChatterOption(manager, controlID, optionIndex, optionText, optionType, ...)
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

function KAddon.OnAddOnLoaded(event, addonName)
  if addonName == KAddon.name then
    KAddon.Install(SYSTEMS:GetKeyboardObject(ZO_INTERACTION_SYSTEM_NAME))
    KAddon.Install(SYSTEMS:GetGamepadObject(ZO_INTERACTION_SYSTEM_NAME))
  end
end
 
EVENT_MANAGER:RegisterForEvent(KAddon.name, EVENT_ADD_ON_LOADED, KAddon.OnAddOnLoaded)
