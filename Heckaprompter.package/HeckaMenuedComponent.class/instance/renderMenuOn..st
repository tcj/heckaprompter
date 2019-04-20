rendering
renderMenuOn: html
	html table
		id: 'hkamenu';
		with: [
			html tableRow:[
				html tableHeading
					id: 'hkalogo';
					with: 'heckaprompter'.
				html tableHeading: [ html space ].
				html tableHeading: [ html space ].
				html tableHeading: [ 
					html anchor
						callback: [ self answer: #createNew ];
						with: [ 
							html text: HeckaUnicode crayon.
							html text: ' create new' ] ].
				html tableHeading: [ html space ].
				html tableHeading: [ 
					html anchor 
						callback: [ self answer: #browseMode ];
						with: [
							html text: HeckaUnicode palette.
							html text: ' browse'. ] ].
				html tableHeading: [ html space ].
				html tableHeading: [ html space ].				
				html tableHeading
					id: 'hkauser';
					with: [ self renderUsernameOn: html ] ] ]