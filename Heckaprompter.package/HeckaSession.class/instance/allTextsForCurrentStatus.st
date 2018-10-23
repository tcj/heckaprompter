text
allTextsForCurrentStatus
	^ HeckaText findAll: [:text |
"		text userId = self user uniqueId
			and: ["
	(	(self currentClipart isNil ) or: [ text clipartId = self currentClipart uniqueId ] )
				and: 
			[ (self currentBlurb isNil ) or: [ text blurbId = self currentBlurb uniqueId ] ] ]