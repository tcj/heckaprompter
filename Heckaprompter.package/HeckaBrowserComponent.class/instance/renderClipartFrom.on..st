rendering
renderClipartFrom: texts on: html
	| clipartIdSet chosenClipart |
	clipartIdSet := self clipartIds.

	"render selected clipart first"
	chosenClipart := self session browsingClipart.  "could be nil, watch out!"
	chosenClipart
		ifNotNil: [:clipart | | cid |
			cid := chosenClipart uniqueId.
			self renderClipartId: cid on: html.
			clipartIdSet remove: cid ].

	"now render the rest"	
	clipartIdSet do: [:clipartId | self renderClipartId: clipartId on: html ]