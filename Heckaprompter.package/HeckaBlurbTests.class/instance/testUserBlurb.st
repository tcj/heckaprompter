tests
testUserBlurb
	self assert: ( userBlurb contents endsWith: 'ocean.').
	self assert: ( userBlurb contents beginsWith: 'Her' ).
	