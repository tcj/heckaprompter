browsing filters
textFilterBlockOrTrueFor: aSymbol
	^ (self browsing: aSymbol)
		ifNil: [ "an item of that type is not currently selected.  match all" 
			[:item | true ] ]
		ifNotNil: [:chosenItem |
				"return the filter block against the item of that type chosen"
			[:aText | aText uses: chosenItem as: aSymbol ] ]