utilities
fixBlurbId
	((blurbId at: 1) = $/)
		ifTrue: [ 
			self blurbId: (blurbId findTokens: '/' ) last.
			self save.]