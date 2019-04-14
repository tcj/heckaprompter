callbacks
saveAndBrowse
	self session isLoggedIn
		ifTrue: [
			self session currentText save.
			self session makeActive: HeckaBrowsing.]
		ifFalse: [self inform: 'must be logged in to save.' ].
	
