initialize-release
initialize
	super initialize.
	user := HeckaLoggedOutUser instance.
	self newRandomText.
	timeStamp := DateAndTime now.