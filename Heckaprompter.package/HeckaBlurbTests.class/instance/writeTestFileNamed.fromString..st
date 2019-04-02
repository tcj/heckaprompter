as yet unclassified
writeTestFileNamed: aFileName fromString: aString
	| file | 
	file := tempDir newFileNamed: aFileName.
	[ 
		file nextPutAll: aString.
	] ensure: [ file close ]. 