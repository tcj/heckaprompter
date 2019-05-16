private
fileFromEntry: aDirEnt
	^ (self class fileClass onDirectoryEntry: aDirEnt)
		registry: self;
		yourself