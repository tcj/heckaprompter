accessing
nullComponent

	^ nullComponent ifNil: [nullComponent := HeckaNullComponent new]