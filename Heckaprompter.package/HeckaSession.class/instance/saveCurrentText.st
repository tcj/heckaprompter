support for callbacks
saveCurrentText
	self isLoggedIn
		ifTrue: [ self currentText save ]
		ifFalse: [ HeckaMustBeLoggedInError signal ]