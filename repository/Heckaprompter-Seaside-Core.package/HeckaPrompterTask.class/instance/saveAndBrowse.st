callbacks
saveAndBrowse
	"Save current text (in edit mode)
	if allowed, and then browse, starting from current text."
	[ self saveCurrentText ]
		on: HeckaMustBeLoggedInError
		do: [:ex | 
			(self confirm: 'Must be logged in to save.  Log in now?')
				ifTrue: [ 
					self login.
					^ self saveAndBrowse ]
				ifFalse: [ ^ self call: self textEntryComponent ] ].

	self session browseText: self textEntryComponent workingText.
	^ self call: self browseComponent.	
