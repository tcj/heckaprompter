accessing
loginTask

	^ loginTask ifNil: [loginTask := HeckaLoginTask new]