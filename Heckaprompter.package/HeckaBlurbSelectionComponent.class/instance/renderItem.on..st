rendering
renderItem: anItem on: html
	html div
		class: 'hBlurb';
		with: [
			self chosenItem = anItem
				ifTrue: [ html text: anItem contents ]
				ifFalse: [ 
				html anchor
					class: 'blurbText';
					callback: [ self session browse: anItem ];
					with:  anItem contents ] ].