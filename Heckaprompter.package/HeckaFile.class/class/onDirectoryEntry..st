instance creation
onDirectoryEntry: aDirectoryEntry
	^ self basicNew 
		dirent: aDirectoryEntry; 
		yourself