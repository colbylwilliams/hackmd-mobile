#!/bin/bash

# c0lby:

## Create New Root.plist file ##

PreparePreferenceFile

		AddNewTitleValuePreference  -k "VersionNumber" 	-d "$versionNumber ($buildNumber)" 	-t "Version"


	AddNewPreferenceGroup 	-t "Test Settings"

		AddNewToggleSwitchPreference -k "UseLocalServer" 	-d true 	-t "Local Server"
		AddNewToggleSwitchPreference -k "ResetConversation" -d false 	-t "Reset Conversation"


	AddNewPreferenceGroup 	-t "Diagnostics Key"
		AddNewStringNode 	-e "FooterText" 	-v "$copyright"


	AddNewTitleValuePreference  -k "UserReferenceKey" 	-d "anonymous"  	-t ""
