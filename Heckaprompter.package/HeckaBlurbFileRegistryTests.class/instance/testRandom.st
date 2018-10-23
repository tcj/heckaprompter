testing
testRandom
	self assert: [ registry randomFileName isKindOf: String ].
	self assert: [ registry randomFile isKindOf: HeckaBlurbFile ].
	self assert: [ registry randomBlurb isKindOf: HeckaBlurb ].
	self assert: [ registry randomBlurbFile isKindOf: HeckaBlurbFile ].
	