callbacks
saveAndNew
	"Save current text (if allowed) and begin a new one."
	[ self session saveCurrentText ]
		on: HeckaMustBeLoggedInError
		do: [:ex | self inform: 'Must be logged in to save.'].
		
	^ self createNew