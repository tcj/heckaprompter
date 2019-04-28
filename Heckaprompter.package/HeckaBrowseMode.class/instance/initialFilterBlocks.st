filters
initialFilterBlocks
	^ Dictionary newFrom: {
		#textsUsingBlurb -> [:text :selectedBlurb | text usesBlurb: selectedBlurb].
		#textsUsingClipart -> [:text :selectedClipart | text usesClipart: selectedClipart ].
	}