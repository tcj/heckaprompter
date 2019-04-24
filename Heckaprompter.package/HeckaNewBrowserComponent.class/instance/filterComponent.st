accessing
filterComponent

	^ filterComponent ifNil: [ filterComponent := HeckaBrowseFilterComponent new ]