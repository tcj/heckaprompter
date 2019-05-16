initialize-release
testSuffix
	self assert: [ HeckaClipartFileRegistry wildcard = '*.svg' ].
	self assert: [ HeckaBlurbFileRegistry wildcard = '*.txt' ].
	
	
	