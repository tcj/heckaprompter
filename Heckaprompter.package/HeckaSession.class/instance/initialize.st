initialize-release
initialize
	super initialize.
	user := HeckaUser example.
	clipartRegistry := HeckaClipartFileRegistry sample.
	blurbRegistry := HeckaBlurbFileRegistry sample. 
	self currentActivity: HeckaTextEntry.
	self newEverything.
	
