rendering
renderContentOn: html
	html render: self menuComponent.
	html div
		id: 'heckaclipart';
		with: [ self renderClipartOn: html ].
"
	html paragraph: (self application preferenceAt: #heckaBareURL).
	html paragraph: (self application preferenceAt: #heckaSVGFilePath).
"
