instance creation
newFromDirectoryNamed: aDirectoryName
	| d me | 
	self flag: #annoying.
	me := self newOn: aDirectoryName.

	d := FileDirectory on: aDirectoryName.
	(d fileNamesMatching: self wildcard) do: [:fn | | dirent |
		dirent := d directoryEntryFor: fn.
		me addFile: (self fileClass onDirectoryEntry: dirent)
	].
	^ me
	
"
"
