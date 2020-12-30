instance creation
onDirectoryEntry: aDirectoryEntry
	^ self basicNew 
		dirent: aDirectoryEntry; 
		initialize;
		yourself