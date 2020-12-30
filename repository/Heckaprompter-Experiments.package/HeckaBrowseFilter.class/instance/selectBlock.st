as yet unclassified
selectBlock
	^ [:text | 
		(self passUser: text user) 
			and: [ self passBlurb: text blurb ]
			and: [ self passClipart: text clipart ] ]
		