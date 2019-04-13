instance creation
newFromDirectoryNamed: aDirectoryName
	^ (self newOn: aDirectoryName)
		addAllFiles;
		yourself
