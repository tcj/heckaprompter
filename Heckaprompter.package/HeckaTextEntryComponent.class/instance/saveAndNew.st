callbacks
saveAndNew
	self session isLoggedIn
		ifTrue: [ self session saveAndNew.]
		ifFalse: [ self inform: 'must be logged in to save.' ].
