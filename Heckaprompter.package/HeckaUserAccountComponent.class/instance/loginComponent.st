accessing
loginComponent

	^ loginComponent ifNil: [loginComponent := HeckaSSOComponent2 new]