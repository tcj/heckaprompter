testing
uses: anAsset as: aSymbol
	aSymbol = #blurb
		ifTrue: [ ^ self usesBlurb: anAsset ].
	aSymbol = #clipartFile
		ifTrue: [ ^ self usesClipartFile: anAsset ].
	aSymbol = #user
		ifTrue: [ ^ self userId = anAsset uniqueId ].

	self error: 'unknown asset type: ', aSymbol printString.
