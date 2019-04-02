rendering
renderContentOn: html
	texts := self session textsForAllUsers.
	
	html div
		class: 'clipartChooser';
		with: [ self clipartIdsSorted do: [:clipartId | self renderClipartId: clipartId on: html ] ].
	html div 
		class: 'blurbChooser';
		with: [ self blurbIds do: [:blurbId | self renderBlurbId: blurbId on: html ] ].

"	self session currentClipart ifNotNil: [:clip | html text: 'chosen clipart: ', clip uniqueId ].
	html break.
	self session currentBlurb ifNotNil: [:blurb | html text: 'chosen blurb: ', blurb uniqueId ]."

	self session allTextsForCurrentStatus do: [:text | 
		html paragraph: [ html text: text text ] ].
			
