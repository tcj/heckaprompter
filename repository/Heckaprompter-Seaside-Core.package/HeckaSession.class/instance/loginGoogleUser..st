users
loginGoogleUser: userData
	| person |
"	userData inspect."
	person := HeckaUser 
		find: [:p | p emailAddress = (userData at: #email)]
		ifAbsent: [ | newUser fakeId |
			"create new user"
			fakeId := self generateNewFakeId.
			newUser := HeckaUser newFromGoogleData: userData withFakeId: fakeId.
			newUser save ].
	self user: person.