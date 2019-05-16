users
loginGoogleUser: userData
	| person |
"	userData inspect."
	person := HeckaUser 
		find: [:p | p emailAddress = (userData at: #email)]
		ifAbsent: [ | newUser |
			newUser := HeckaUser newFromGoogleData: userData.
			newUser save ].
	self user: person.