as yet unclassified
specialUsers
	| heckaUser anonymousUser |
	heckaUser := HeckaLegacyUser new 
		uniqueId: '0001';
		shortName: 'HeckaUser';
		fullName: 'a HeckaUser';
		yourself.
		
	anonymousUser := HeckaLegacyUser new
		uniqueId: '0001a';
		shortName: 'Anonymous';
		fullName: 'Anonymous User';
		yourself.
		
	^ Array with: heckaUser with: anonymousUser