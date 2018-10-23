blurb
newRandomBlurb
	currentBlurb := self randomBlurb.
	self text ifNotNil: [:oldText | oldText blurb: currentBlurb ].