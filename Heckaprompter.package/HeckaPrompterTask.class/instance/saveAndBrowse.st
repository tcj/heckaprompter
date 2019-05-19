callbacks
saveAndBrowse
	"Save current text (in edit mode)
	if allowed, and then browse, starting from current text."
	[ self saveCurrentText ]
		on: HeckaMustBeLoggedInError
		do: [:ex | 
			self inform: 'Must be logged in to save.'.
			^ self call: self textEntryComponent ].

	self session browseText: self textEntryComponent workingText.
	^ self call: self browseComponent.	
