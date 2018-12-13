initialize-release
initialize
	super initialize.
	user := HeckaUser example.
	clipartRegistry := HeckaClipartFileRegistry 
		newFromDirectoryNamed: (self requestContext application preferenceAt: #heckaSVGFilePath) .
	blurbRegistry := HeckaBlurbFileRegistry 
		newFromDirectoryNamed: (self requestContext application preferenceAt: #heckaBlurbFilePath).
	self currentActivity: HeckaTextEntry.
	self newRandomText.
	
