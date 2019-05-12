initialize-release
initialize
	super initialize.
	user := HeckaLoggedOutUser instance.
	currentText := self newRandomText.
	timeStamp := DateAndTime now.
	browsingSelection := Dictionary new.