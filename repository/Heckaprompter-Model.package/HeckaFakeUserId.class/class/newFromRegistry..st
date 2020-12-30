as yet unclassified
newFromRegistry: aFileRegistry
	^ self new
		first: (self randomCapitalizedWordFromRegistry: aFileRegistry);
		last: (self randomCapitalizedWordFromRegistry: aFileRegistry);
		yourself