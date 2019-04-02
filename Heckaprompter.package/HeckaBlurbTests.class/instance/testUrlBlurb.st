tests
testUrlBlurb
	self assert: ( urlBlurb contents endsWith: 'excuses' ).
	self assert: ( urlBlurb contents beginsWith: 'I found' ).