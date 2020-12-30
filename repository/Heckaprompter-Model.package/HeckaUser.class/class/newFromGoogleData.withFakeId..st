as yet unclassified
newFromGoogleData: userData withFakeId: fakeId
	^ self new
		fullName: (userData at: 'name');
		shortName: (userData at: 'given_name');
		emailAddress:  (userData at: 'email');
		fakeId: fakeId;
		yourself
