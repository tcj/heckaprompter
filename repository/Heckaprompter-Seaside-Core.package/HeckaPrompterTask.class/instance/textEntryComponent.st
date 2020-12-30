accessing
textEntryComponent

	^ textEntryComponent ifNil: [textEntryComponent := HeckaTextEntryComponent new]