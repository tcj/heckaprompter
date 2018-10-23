as yet unclassified
fromFile: aHeckaBlurbFile
	| lines |
	lines := aHeckaBlurbFile lines.
	^ self new 
		source: lines removeFirst;
		storage: self;
		contents: lines second.