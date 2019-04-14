users
loginGoogleUser: userData
	| person |
	userData inspect.
	person := HeckaUser 
		find: [:p | p emailAddress = (userData at: #email)]
		ifAbsent: [  
			"add a new person who is a member of no business units"
			"will set administrator privileges"
			| newPerson |
			newPerson := HeckaUser newFromGoogleData: userData.
			newPerson save ].
	self user: person.