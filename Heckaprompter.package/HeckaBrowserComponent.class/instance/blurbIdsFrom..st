support for uniqueid
blurbIdsFrom: aCollection
	^ Set withAll: (aCollection collect: [:ea | ea blurbId ]).
