accessing
textFilterBlock

	^ textFilterBlock ifNil: [textFilterBlock := self textsForAllUsers]