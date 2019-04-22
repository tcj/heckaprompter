accessing
userFilterComponent

	^ userFilterComponent ifNil: [userFilterComponent := HeckaUserFilterComponent new]