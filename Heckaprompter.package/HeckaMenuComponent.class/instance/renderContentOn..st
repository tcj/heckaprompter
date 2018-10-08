as yet unclassified
renderContentOn: html
	html table
		id: 'hkamenu';
		with: [
			html tableRow:[
				html tableHeading
					id: 'hkalogo';
					with: 'heckaprompter'.
				html tableHeading: [ html space ].
				html tableHeading
					id: 'hkauser';
					with: (self session user) ] ]