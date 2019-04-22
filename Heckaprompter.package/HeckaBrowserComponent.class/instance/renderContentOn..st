rendering
renderContentOn: html
	| texts | 
	texts := self session textsForBrowsing.
	self renderMenuOn: html.
	html render: self userFilterComponent.
	
	texts
		ifEmpty: [ 
			"no texts in sandstone database yet."
			self renderFreshStartOn: html ]
		ifNotEmpty: [
			html div
				class: 'clipartChooser';
				with: [ self renderClipartFrom: texts on: html ].
			html div 
				class: 'blurbChooser';
				with: [ self renderBlurbsFrom: texts on: html ] ].
"	self session currentClipart ifNotNil: [:clip | html text: 'chosen clipart: ', clip uniqueId ].
	html break.
	self session currentBlurb ifNotNil: [:blurb | html text: 'chosen blurb: ', blurb uniqueId ]."

	self renderFilteredTextsFrom: texts on: html.