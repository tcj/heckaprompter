blurb
newRandomBlurb
	self currentText ifNotNil: [:text | text blurb: self randomBlurb ].