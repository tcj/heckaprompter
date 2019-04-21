callbacks
logout
	self session isLoggedIn
		ifTrue: [ 
			(self confirm: 'logout?')
				ifTrue: [
					self loginComponent clearResponsePanel.
					self session logoutUser. ] ].

	^ self createNew