running
children
	^ { 
		self textEntryComponent .
		self browseComponent .
	 	self accountComponent .
	 	self playComponent .
		self loginComponent .
		self nullComponent .
	}