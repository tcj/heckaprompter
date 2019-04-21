as yet unclassified
renderContentOn: html
	self renderMenuOn: html.
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