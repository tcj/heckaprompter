rendering
renderLoginInfoOn: html
	html paragraph: 'logged in'. 
	html paragraph: self session user emailAddress.
	html anchor
		callback: [ self answer: #logout ] ;
		with: 'Logout' 