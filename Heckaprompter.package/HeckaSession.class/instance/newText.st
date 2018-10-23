text
newText
	^ text :=  HeckaText 
		newForUser: self user
		fromClipart: self currentClipart
		andBlurb: self currentBlurb