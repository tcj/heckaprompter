instance creation
fromFileNamed: aFullFileName
	^ self fromHeckaBlurbFile: (HeckaBlurbFile on: aFullFileName)