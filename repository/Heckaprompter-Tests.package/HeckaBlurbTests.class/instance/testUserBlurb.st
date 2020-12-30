tests
testUserBlurb
	self assert: ( userBlurb contents endsWith: 'ocean.').
	self assert: ( userBlurb contents beginsWith: 'Her' ).
	self assert: ( userBlurb source isUser ).
	self deny: ( userBlurb source isUrl).