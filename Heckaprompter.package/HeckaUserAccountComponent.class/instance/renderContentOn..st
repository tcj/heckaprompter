as yet unclassified
renderContentOn: html
	self renderMenuOn: html.
	html render: self loginComponent
	