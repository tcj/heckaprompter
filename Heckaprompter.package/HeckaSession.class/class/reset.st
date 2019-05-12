as yet unclassified
reset
	BlurbFileRegistry ifNotNil: [:reg | reg release ].
	ClipartFileRegistry ifNotNil: [:reg | reg release ].
	BlurbFileRegistry := nil.
	ClipartFileRegistry := nil.
	
"
HeckaSession reset
"