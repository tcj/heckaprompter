support for callbacks
saveCurrentText
	| workingText |
	"If user is logged in, save the text.  
	Check to make sure that a text created in logged-out mode is updated
	to reflect the logged-in user.  But do not otherwise update a userId (in case
	we are editing a text, we do not want to clobber the author's info."
	workingText := self textEntryComponent workingText.
	self session isLoggedIn
		ifTrue: [
			"change author if text was attributed to logged-out user"
			(workingText userId = HeckaLoggedOutUser instance uniqueId)
				ifTrue: [ workingText userId: self session userId ].
			workingText save ]
		ifFalse: [ HeckaMustBeLoggedInError signal ]