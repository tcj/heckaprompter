private
addAllFiles
	| d |
	d := FileDirectory on: self path.
	(d fileNamesMatching: self class wildcard) do: [:fn | | dirent |
		"ignore hidden files"
		(fn at: 1) = $.
			ifFalse: [
				dirent := d directoryEntryFor: fn.
				self addFile: (self fileFromEntry: dirent)	].	
	]