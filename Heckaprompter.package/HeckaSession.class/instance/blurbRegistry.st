accessing
blurbRegistry

	^ BlurbFileRegistry ifNil: [BlurbFileRegistry := HeckaBlurbFileRegistry 
		newFromDirectoryNamed: (self requestContext application preferenceAt: #heckaBlurbFilePath) ].