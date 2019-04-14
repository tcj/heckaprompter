rendering
renderContentOn: html
	texts := self session textsForAllUsers.
	texts
	   ifEmpty: [ 
		html heading
			level: 3;
			with: 'No texts yet!'.
		html heading
			level: 4;
			with: 'Log in and save a text to get started.' ]
	  ifNotEmpty: [
		html div
			class: 'clipartChooser';
			with: [ self clipartIdsSorted do: [:clipartId | self renderClipartId: clipartId on: html ] ].
		html div 
			class: 'blurbChooser';
			with: [ self blurbIds do: [:blurbId | self renderBlurbId: blurbId on: html ] ].
	].
"	self session currentClipart ifNotNil: [:clip | html text: 'chosen clipart: ', clip uniqueId ].
	html break.
	self session currentBlurb ifNotNil: [:blurb | html text: 'chosen blurb: ', blurb uniqueId ]."

	self session allTextsForCurrentStatus do: [:text | 
		html paragraph: [ html text: text text ] ].
			
