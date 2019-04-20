callbacks
saveAndBrowse
	[ self session saveCurrentText ]
		on: HeckaMustBeLoggedInError
		do: [:ex | self inform: ex messageText].

	^ self call: self browseComponent.	
