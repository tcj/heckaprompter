accessing
textFilterBlock
	"initially show texts for all users"
	^ textFilterBlock ifNil: [textFilterBlock := self textsForAllUsers]