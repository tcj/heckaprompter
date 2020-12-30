rendering
renderMenuOn: html
	html table
		id: 'hkamenu';
		with: [
			html tableRow:[
				html tableHeading
					id: 'hkalogo';
					with: [
						html anchor
							callback: [ self answer: #aboutHeckaprompter ];
							with: 'heckaprompter'. ].
				html tableHeading: [ html space ].
				html tableHeading: [ html space ].
				html tableHeading
					"class: 'writeNew';"
					with: [ 
						html anchor
							callback: [ self answer: #createNew ];
							with: [ 
								html text: HeckaUnicode crayon.
								html text: ' write ' ] ].
				html tableHeading: [ html space ].
				html tableHeading
					class: self browseAnchorClass; 
					with: [ 
						html anchor 
							callback: [ self answer: #browseMode ];
							with: [
								html text: HeckaUnicode palette.
								html text: ' browse'. ] ].
				html tableHeading: [ html space ].
				html tableHeading
					class: 'playMode';
					with: [
						html anchor 
							callback: [ self answer: #playMode ];
							with: [
								html text: HeckaUnicode performingArts.
								html text: ' play '. ] ].
				html tableHeading: [ html space ].				
				html tableHeading
					id: 'hkauser';
					with: [ self renderUsernameOn: html ] ] ]