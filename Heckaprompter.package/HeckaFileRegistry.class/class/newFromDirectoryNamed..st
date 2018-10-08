as yet unclassified
newFromDirectoryNamed: aDirectoryName
	| d me | 
	d := FileDirectory on: aDirectoryName.
	me := self new.
	(d fileNamesMatching: self wildcard) do: [:fn | me addFile: (self fileClass new fileName: fn)].
	^ me
	
"
"
