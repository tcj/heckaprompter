users
assignNewFakeIdToUser: aUser
	aUser fakeId: (self generateNewFakeId).
	aUser save.