accessing
loginComponent

	^ loginComponent ifNil: [loginComponent := HeckaSSOComponent new]