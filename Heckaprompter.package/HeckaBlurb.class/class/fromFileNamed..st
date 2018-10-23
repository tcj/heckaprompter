as yet unclassified
fromFileNamed: aFullFileName
	| hbf lines |
	hbf := HeckaBlurbFile on: aFullFileName.
	lines := hbf lines.
	^ self new 
		source: lines removeFirst;
		storage: hbf;
		contents: lines second.