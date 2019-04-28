unused
blurbsFrom: aCollection
	^ Set withAll: (aCollection collect: [:ea | self session blurbForId: ea blurbId ]).
