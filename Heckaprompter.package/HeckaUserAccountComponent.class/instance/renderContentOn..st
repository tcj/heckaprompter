rendering
renderContentOn: html
	super renderContentOn: html.
	self session isLoggedIn
		ifTrue: [ 
			self renderAccountInfoOn: html.
			html anchor
				callback: [self answer: #stayHere];
				with: 'back to it']
		ifFalse: [ 
			html heading
				level: 3; with: 'currently logged out'.
				html render: self loginComponent ]