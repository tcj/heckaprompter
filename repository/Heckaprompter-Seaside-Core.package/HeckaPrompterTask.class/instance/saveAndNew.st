callbacks
saveAndNew
	"Save current text (if allowed) and begin a new one."
	[ self saveCurrentText ]
		on: HeckaMustBeLoggedInError
		do: [:ex | 
			self inform: 'Must be logged in to save.'.
			"preserve the text the user was working on"
			^ #stayHere ].
		
	^ self createNew