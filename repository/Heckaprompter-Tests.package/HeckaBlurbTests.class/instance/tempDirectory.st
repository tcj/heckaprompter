as yet unclassified
tempDirectory
	| path | 
	path := OSProcess thisOSProcess environment at: #TMPDIR.
	^ FileDirectory on: path.
	