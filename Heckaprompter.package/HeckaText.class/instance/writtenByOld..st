testing
writtenByOld: aUser
	"backwards compatibility"
	^ self userIdIsEmailAddress
		ifTrue: [ | emailAddress |
			[ emailAddress := aUser emailAddress ]
				on: Error
				do: [ 
					Transcript show: 'caught error'; cr.
					false ].
			Transcript show: 'got here: ', self userId, ' ', emailAddress; cr.
			self userId = emailAddress ]
		ifFalse: [ 
			"maybe 'logged out'
			or maybe '0101' 
			or maybe a Sandstone id"
			
			Transcript show: 'got here too ', self userId, ' ', aUser uniqueId ; cr.
			self userId = aUser uniqueId ]