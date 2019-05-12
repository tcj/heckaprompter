unused
allTextsForCurrentStatus
	"does not take into consideration whether we are looking at current user's texts
	or all users' or..."
	^ HeckaText findAll: [:text |
"		text userId = self user uniqueId
			and: ["
	(	(self browsingClipartFile isNil ) or: [ text usesClipartFile: self browsingClipart ] )
				and: 
			[ (self browsingBlurb isNil ) or: [ text usesBlurb: self browsingBlurb ] ] ]