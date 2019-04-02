instance creation
fromHeckaBlurbFile: aHeckaBlurbFile
	| lines |
	lines := aHeckaBlurbFile lines.
	^ self new 
		source: (HeckaSource fromString: lines removeFirst);
		storage: aHeckaBlurbFile;
		contents: lines second;
		yourself.