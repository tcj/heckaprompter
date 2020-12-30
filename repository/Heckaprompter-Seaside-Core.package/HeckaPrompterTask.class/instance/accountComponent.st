accessing
accountComponent

	^ accountComponent ifNil: [accountComponent := HeckaUserAccountComponent new]