support for uniqueid
clipartFiles
	^ Set withAll: (textCache collect: [:ea | self session clipartFileForId: ea clipartId ]).
