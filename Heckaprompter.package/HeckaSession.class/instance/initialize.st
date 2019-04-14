initialize-release
initialize
	super initialize.
	user := HeckaLoggedOutUser instance.
	self currentActivity: HeckaTextEntry.
	self newRandomText.
	timeStamp := DateAndTime now.