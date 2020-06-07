rendering
renderContentOn: html
	super renderContentOn: html.
	self session isLoggedIn
		ifTrue: [ 
			self renderAccountInfoOn: html.
			html anchor
				callback: [self answer: #logout];
				with: 'logout']
		ifFalse: [ 
			html heading
				level: 3; with: 'currently logged out'.
				html render: self loginComponent ]