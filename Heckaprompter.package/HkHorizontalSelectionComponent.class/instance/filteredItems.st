as yet unclassified
filteredItems
	"depending on what type of item is being selected here,
	show only the appropriate items for a prior selection component"
	^ self isPrimaryFilterSelector
		ifTrue: [ 
			"we are the first selection component"
			self textsToAssets: texts ]
		ifFalse: [ | primaryAssetType primarySelection |
			"what is selected in the first selection component?"
			primaryAssetType := self session browseMode primaryAssetType.
			primarySelection := self session browsingSelection at: primaryAssetType ifAbsent: [nil].
			primarySelection
				ifNil: [ "nothing is selected, return nothing"
					#( ) ]
				ifNotNil: [:browsingItem | | textsForItem |
					textsForItem := texts select: [:text | text uses: browsingItem as: primaryAssetType].
					self textsToAssets: textsForItem ] ].