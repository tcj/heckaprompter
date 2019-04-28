styles
textsToAssets: aCollection
	^ Set withAll: (aCollection collect: [:text | self session blurbForId: text blurbId ])