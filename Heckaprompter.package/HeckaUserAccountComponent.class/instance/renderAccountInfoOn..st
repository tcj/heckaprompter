as yet unclassified
renderAccountInfoOn: html
	html table: [
		html tableRow: [ 
			html tableData: 'user name' .
			html tableData: [ html text: self session user shortName ] ].
		]