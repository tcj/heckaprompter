private
addAllFiles
	| d |
	d := FileDirectory on: self path.
	(d fileNamesMatching: self class wildcard) do: [:fn | | dirent |
		dirent := d directoryEntryFor: fn.
		self addFile: (self fileFromEntry: dirent)
	].