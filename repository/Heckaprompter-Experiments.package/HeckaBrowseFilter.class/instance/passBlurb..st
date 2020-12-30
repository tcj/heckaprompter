as yet unclassified
passBlurb: aBlurb
	^ self blurb isNil or: [aBlurb isNil] or: [ aBlurb id = self blurb blurbId ]