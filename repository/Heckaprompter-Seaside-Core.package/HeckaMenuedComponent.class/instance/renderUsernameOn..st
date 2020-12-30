rendering
renderUsernameOn: html
	self session isLoggedIn
		ifTrue: [ 
			html anchor
				callback: [self answer: #accountInfo];
				with: self session user publicName.
			html space.
			html anchor 
				callback: [self logout];
				with: 'logout'. ]
		ifFalse: [
			html text: self session user printString.
			html space.
			html anchor
				callback: [self login];
				with: 'login'. ]
			