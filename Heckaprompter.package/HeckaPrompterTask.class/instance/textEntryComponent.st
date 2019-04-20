accessing
textEntryComponent

	^ textEntryComponent ifNil: [textEntryComponent := HeckaTextEntryComponent2 new]