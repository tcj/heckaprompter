support for uniqueid
blurbs
	self flag: #hereIsWhereTheMagicHappens.
	^ Set withAll: (textCache collect: [:ea | self session blurbRegistry blurbForText: ea ]).
