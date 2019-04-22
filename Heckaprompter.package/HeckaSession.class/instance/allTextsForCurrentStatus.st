browsing
allTextsForCurrentStatus
	^ HeckaText findAll: [:text |
"		text userId = self user uniqueId
			and: ["
	(	(self browsingClipart isNil ) or: [ text usesClipart: self browsingClipart ] )
				and: 
			[ (self browsingBlurb isNil ) or: [ text usesBlurb: self browsingBlurb ] ] ]