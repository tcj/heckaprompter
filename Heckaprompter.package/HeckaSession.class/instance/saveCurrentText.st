support for callbacks
saveCurrentText
	"If user is logged in, save the text.  
	Check to make sure that a text created in logged-out mode is updated
	to reflect the logged-in user.  But do not otherwise update a userId (in case
	we are editing a text, we do not want to clobber the author's info."
	self isLoggedIn
		ifTrue: [
			"change author if text was attributed to logged-out user"
			(self currentText userId = HeckaLoggedOutUser instance uniqueId)
				ifTrue: [ self currentText userId: self userId ].
			self currentText save ]
		ifFalse: [ HeckaMustBeLoggedInError signal ]