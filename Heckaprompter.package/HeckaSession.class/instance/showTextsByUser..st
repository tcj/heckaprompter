browsing
showTextsByUser: aUser
	^ self textFilterBlock: [ HeckaText findAll: [:text | text userId = aUser uniqueId ] ]