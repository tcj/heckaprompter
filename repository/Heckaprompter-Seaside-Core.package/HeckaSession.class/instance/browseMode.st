accessing
browseMode

	^ browseMode ifNil: [browseMode := HeckaBrowseByClipart instance]