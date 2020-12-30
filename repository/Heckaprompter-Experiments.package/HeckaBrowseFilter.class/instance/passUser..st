as yet unclassified
passUser: aUser
	^ self user isNil or: [aUser isNil] or: [ aUser id = self user userId ]