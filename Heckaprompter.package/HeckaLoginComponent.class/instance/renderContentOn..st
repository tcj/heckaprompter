rendering
renderContentOn: html
	
"	self session isLoggedIn
		ifTrue: [ self handleLogout ]
		ifFalse: [  ]."
	html render: self ssoComponent.
	html heading
		level: 2;
		with: 'not yet implemented'