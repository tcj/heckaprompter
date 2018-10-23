rendering
renderContentOn: html
	texts := self session textsForAllUsers.
	self session currentClipart ifNotNil: [:clip | html text: 'chosen: ', clip uniqueId ].
	
	html div
		class: 'clipartChooser';
		with: [ self clipartIds do: [:clipartId | self renderClipartId: clipartId on: html ] ].
	html div 
		class: 'blurbChooser';
		with: [ self blurbIds do: [:blurbId | self renderBlurbId: blurbId on: html ] ].
			
	html heading
		level: 3; with: [ html text: ('{1}''s texts (total: {2})' format: { self userText . texts size printString }) ].
		
	texts do: [:aText | self renderText: aText on: html ].