accessing
browseFilterComponent

	^ browseFilterComponent ifNil: [browseFilterComponent := HeckaBrowseFilterComponent new]