accessing
clipartRegistry

	^ ClipartFileRegistry ifNil: [ClipartFileRegistry := HeckaClipartFileRegistry 
		newFromDirectoryNamed: (self requestContext application preferenceAt: #heckaSVGFilePath) ].