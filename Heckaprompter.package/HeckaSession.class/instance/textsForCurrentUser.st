text
textsForCurrentUser
	^ HeckaText findAll: [:text | text userId = self user uniqueId ]