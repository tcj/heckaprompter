support for uniqueid
clipartIdsFrom: aCollection
	^ Set withAll: (aCollection collect: [:ea | ea clipartId ]).
