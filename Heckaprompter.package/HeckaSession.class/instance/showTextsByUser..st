browsing
showTextsByUser: aUser
	textsForBrowsing := HeckaText findAll: [:text | text userId = self user uniqueId ].