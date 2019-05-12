support for callbacks
newRandomText
	^ HeckaText 
		newForUser: self user
		fromClipart: self randomClipartFile
		andBlurb: self randomBlurb