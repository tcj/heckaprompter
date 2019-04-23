unused
textsForCurrentUser
	"move to HeckaText?"
	^ [ HeckaText findAll: [:text | text userId = self userId ] ]