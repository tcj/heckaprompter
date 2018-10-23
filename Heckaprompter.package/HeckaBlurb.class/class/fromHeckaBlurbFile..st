as yet unclassified
fromHeckaBlurbFile: aHeckaBlurbFile
	| lines |
	lines := aHeckaBlurbFile lines.
	^ self new 
		source: (HeckaSource fromString: lines removeFirst);
		storage: self;
		contents: lines second.