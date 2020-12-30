rendering
renderClipartOn: html
"	self renderShowHideOn: html.
"	html figure
"		class: 'centeredinh';"
		with: [ 
			self renderSVGObjectOn: html.
			self renderClipartMenuOn: html.
			self renderBlurbOn: html ].