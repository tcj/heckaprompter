flow
makeActive: anActivity
	(currentActivity = anActivity )
		ifTrue: [ ^ self ]
		ifFalse: [ currentActivity := anActivity ].

	anActivity caseOf: {
		[HeckaBrowsing] -> [ self switchToBrowsing ].
		[HeckaTextEntry] -> [ self switchToTextEntry ].
	}.

	