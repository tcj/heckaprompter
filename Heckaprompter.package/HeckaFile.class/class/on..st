instance creation
on: fullPathAndName
	^ self basicNew 
		dirent: (FileDirectory directoryEntryFor: fullPathAndName); 
		yourself