initialize-release
initialize
	super initialize.
	server := 'http://localhost/svg'.
	directoryName := '/Library/WebServer/Documents/svg'.
	directory := FileDirectory on: directoryName.
	svgFileNames := self getSVGFileNames.