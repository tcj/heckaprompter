initialize-release
initialize
	super initialize.
	user := HeckaLoggedOutUser instance.
	timeStamp := DateAndTime now.
	browsingSelection := Dictionary new.