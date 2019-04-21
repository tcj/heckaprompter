accessing
selectedClipart

	^ selectedClipart ifNil: [selectedClipart := self texts first clipartId]