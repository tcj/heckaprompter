styles
textsToAssets: aCollection
	^ Set withAll: ( aCollection collect: [:text | self session clipartFileForId: text clipartId ] )