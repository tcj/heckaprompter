support for uniqueid
clipartFiles
	self flag: #hereIsWhereTheMagicHappens.
	^ Set withAll: (textCache collect: [:text | self session clipartRegistry clipartFileForText: text ]).
