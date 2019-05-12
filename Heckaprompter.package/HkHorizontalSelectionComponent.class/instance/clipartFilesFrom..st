unused
clipartFilesFrom: aCollection
	^ Set withAll: (aCollection collect: [:aText | self session clipartRegistry clipartFileForText: aText ]).
