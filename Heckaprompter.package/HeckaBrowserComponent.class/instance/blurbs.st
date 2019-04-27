support for uniqueid
blurbs
	^ Set withAll: (textCache collect: [:ea | self session blurbForId: ea blurbId ]).
