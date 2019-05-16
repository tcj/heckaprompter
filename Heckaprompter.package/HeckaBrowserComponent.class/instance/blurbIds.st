support for uniqueid
blurbIds
	^ Set withAll: (textCache collect: [:ea | ea blurbId ]).
