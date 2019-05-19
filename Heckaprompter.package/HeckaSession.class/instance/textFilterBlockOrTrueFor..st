browsing filters
textFilterBlockOrTrueFor: aSymbol
	"Return a filter block, or return a block that only returns true"
	^ (self browsingCategory: aSymbol)
		ifNil: [ "an item of that type is not currently selected.  match all" 
			[:item | true ] ]
		ifNotNil: [:chosenItem |
				"return the filter block against the item of that type chosen"
			[:aText | aText uses: chosenItem as: aSymbol ] ]