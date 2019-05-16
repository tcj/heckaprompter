testing
uses: anObject as: aSymbol
	aSymbol = #blurb
		ifTrue: [ ^ self usesBlurb: anObject ].
	aSymbol = #clipartFile
		ifTrue: [ ^ self usesClipartFile: anObject ].
	aSymbol = #user
		ifTrue: [ ^ self writtenBy: anObject ].

	self error: 'unknown asset type: ', aSymbol printString.
