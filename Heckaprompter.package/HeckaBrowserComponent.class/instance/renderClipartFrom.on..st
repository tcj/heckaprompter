rendering
renderClipartFrom: texts on: html
	| clipartIdSet chosenClipart |
	clipartIdSet := self session clipartIdsForBrowser.

	"render selected clipart first"
	chosenClipart := self session browsingClipart.
	chosenClipart
		ifNotNil: [:clipart | | cid |
			cid := chosenClipart uniqueId.
			self renderClipartId: cid on: html.
			clipartIdSet remove: cid ].

	"now render the rest"	
	clipartIdSet do: [:clipartId | self renderClipartId: clipartId on: html ]