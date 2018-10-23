callbacks
currentComponent
	^ self session currentActivity caseOf: {
		[HeckaBrowsing] -> [ self browseComponent ].
		[HeckaTextEntry] -> [ self textEntryComponent ].
	}
	