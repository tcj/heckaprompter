support for uniqueid
cliparts
	^ Set withAll: (textCache collect: [:ea | self session clipartForId: ea clipartId ]).
