as yet unclassified
testSpecialUsers
	| userFound specialUsers |
	specialUsers := HeckaUserRegistry specialUsers.
	self assert: (specialUsers anyOne uniqueId beginsWith: '0001').
	
	self should: [self registry userWithId: '3131a309f'] raise: HeckaNoSuchUserError.
	
	userFound := self registry userWithId: '0001'.
	self assert: (userFound shortName) equals: 'HeckaUser'.
	