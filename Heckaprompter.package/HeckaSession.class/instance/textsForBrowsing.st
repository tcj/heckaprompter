text
textsForBrowsing
	^ HeckaText findAll: [:text | text userId = self user uniqueId ]