accessing
writeMenuComponent

	^ writeMenuComponent ifNil: [writeMenuComponent := HeckaWriteMenuComponent new target: self]