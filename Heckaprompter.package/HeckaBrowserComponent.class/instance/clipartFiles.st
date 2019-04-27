support for uniqueid
clipartFiles
	self flag: #hereIsWhereTheMagicHappens.
	^ Set withAll: (textCache collect: [:ea | self session clipartFileForId: ea clipartId ]).
