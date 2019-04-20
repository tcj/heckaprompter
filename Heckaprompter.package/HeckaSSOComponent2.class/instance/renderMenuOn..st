rendering
renderMenuOn: html

	self session isLoggedIn 
		ifTrue: [ 
			html anchor
				callback: [ self logout] ;
				with: 'Logout' ].		
