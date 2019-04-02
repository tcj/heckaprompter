tests
testUrlBlurb
	self assert: ( urlBlurb contents endsWith: 'excuses' ).
	self assert: ( urlBlurb contents beginsWith: 'I found' ).
	self assert: ( urlBlurb source isUrl ).
	self deny: ( urlBlurb source isUser ).