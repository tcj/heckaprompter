as yet unclassified
renderContentOn: html
	html table
		id: 'writeMenu'; 
		with: [
			html tableRow: [
				html tableData: [
					html anchor
						callback: [ target perform: #createNew ];
						with: 'new'. ].
				html tableData: [ html space.  html text: '/'.  html space. ].
				html tableData: [
					html anchor
						callback: [ target perform: #saveAndNew ];
						with: 'save and new'. ].
				html tableData: [ html space.  html text: '/'.  html space. ].
				html tableData: [
					html anchor
						callback: [ target perform: #saveAndBrowse ];
						with: 'save and browse'. ].				
				html tableData: [html space ].
			]
		]