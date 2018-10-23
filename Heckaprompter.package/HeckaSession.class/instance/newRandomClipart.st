clipart
newRandomClipart
	currentClipart := self randomClipart.
	self text ifNotNil: [:oldText | oldText clipart: currentClipart ].