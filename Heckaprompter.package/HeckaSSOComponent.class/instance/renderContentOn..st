rendering
renderContentOn: html	
	html div
		style: 'clear: both; ' ;
		with: [
			self session isLoggedIn
				ifTrue: [ 
					html paragraph: 'logged in'. ]
				ifFalse: [
					self renderSignInOptionsOn: html ].
			self renderMenuOn: html ]