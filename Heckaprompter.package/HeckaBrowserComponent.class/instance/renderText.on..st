unused
renderText: aText on: html
	html table: [
		html tableRow: [ 
			html tableData: [ 
				html text: aText clipartId ].
			html tableData: [ 
				html text: aText blurbId ].
			html tableData: [ 
				html text: aText userId ].
			html tableData: [ 
				html text: aText text ].		
		]
	]