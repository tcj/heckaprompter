rendering
renderUsernameOn: html
	html text: self session user printString.
	html space.
	self session isLoggedIn
		ifTrue: [ 
			html anchor 
				callback: [self logout];
				with: 'logout'. ]
		ifFalse: [
			html anchor
				callback: [self login];
				with: 'login'. ]
			