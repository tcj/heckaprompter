styles
textsToAssets: aCollection
	^ Set withAll: ( aCollection collect: [:text | self session clipartRegistry clipartFileForText: text ] )