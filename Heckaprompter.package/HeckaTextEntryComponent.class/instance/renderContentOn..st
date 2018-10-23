rendering
renderContentOn: html
	html div
		id: 'content';
		with: [ 
			html div
				id: 'heckaclipart';
				with: [ self renderClipartOn: html ].
			self renderInputOn: html.
	].
"	html div
		id: 'heckablurb';
		with: [ self renderBlurbOn: html ]."
"
	html paragraph: (self application preferenceAt: #heckaBareURL).
	html paragraph: (self application preferenceAt: #heckaSVGFilePath).
"
