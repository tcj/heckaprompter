as yet unclassified
userWithId: anId
	^ self users at: anId ifAbsent: [ HeckaNoSuchUserError signal: 'no user with id ', anId ]