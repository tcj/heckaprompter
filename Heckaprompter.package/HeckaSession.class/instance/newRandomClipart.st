support for callbacks
newRandomClipart
	self currentText ifNotNil: [:text | text clipart: self randomClipart ].