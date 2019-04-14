as yet unclassified
newFromGoogleData: userData
	^ self new
		fullName: (userData at: 'name');
		shortName: (userData at: 'given_name');
		emailAddress:  (userData at: 'email');
		yourself
