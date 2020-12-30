styles
textsToAssets: aCollection
	^ Set withAll: (aCollection collect: [:text | self session blurbRegistry blurbForText: text ])