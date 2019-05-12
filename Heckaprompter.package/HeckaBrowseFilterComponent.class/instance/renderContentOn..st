rendering
renderContentOn: html
	"I'm sure this should be CSS instead"
	html table
		id: 'browseFilter'; 
		with: [
			html tableRow: [
				html tableData: [ self renderBrowseModeSelectionOn: html ].
				html tableData: [ html space.  html text: '/'.  html space. ].
				html tableData: [ self renderUserFilterOn: html ] ] ]