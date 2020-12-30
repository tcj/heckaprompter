accessing
playComponent

	^ playComponent ifNil: [playComponent := HeckaPlayComponent new]