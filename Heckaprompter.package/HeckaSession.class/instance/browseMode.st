accessing
browseMode

	^ browseMode ifNil: [browseMode := HeckaBrowseByClipart on: self]