accessing
browseComponent

	^ browseComponent ifNil: [browseComponent := HeckaBrowserComponent new]