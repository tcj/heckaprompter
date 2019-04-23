support for uniqueid
clipartIds
	^ Set withAll: (textCache collect: [:ea | ea clipartId ]).
