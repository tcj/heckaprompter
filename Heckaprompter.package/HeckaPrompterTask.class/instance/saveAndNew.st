callbacks
saveAndNew
	[ self session saveCurrentText ]
		on: HeckaMustBeLoggedInError
		do: [:ex | self inform: ex messageText].
		
	self session newRandomText.
	
	^ self call: self textEntryComponent.	
