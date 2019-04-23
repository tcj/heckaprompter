support for callbacks
newRandomBlurb
	self currentText ifNotNil: [:text | text blurb: self randomBlurb ].