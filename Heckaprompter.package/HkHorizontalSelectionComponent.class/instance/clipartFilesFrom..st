unused
clipartFilesFrom: aCollection
	^ Set withAll: (aCollection collect: [:ea | self session clipartFileForId: ea clipartId ]).
