unused
randomSvgUrl
	| server directoryName svgFile |
	server := 'http://localhost/svg'.
	directoryName := '/Library/WebServer/Documents/svg'.
	svgFile := self clipartRegistry randomFileName.
	^ server, '/', svgFile
	
	