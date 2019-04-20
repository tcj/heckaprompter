accessing
browseComponent

	^ browseComponent ifNil: [browseComponent := HeckaBrowserComponent2 new]