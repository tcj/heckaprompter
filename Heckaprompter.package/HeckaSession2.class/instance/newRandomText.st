text
newRandomText
	^ self currentText: (HeckaText 
		newForUser: self user
		fromClipart: self randomClipart
		andBlurb: self randomBlurb)