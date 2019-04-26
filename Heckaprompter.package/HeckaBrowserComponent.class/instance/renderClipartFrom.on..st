rendering
renderClipartFrom: texts on: html
	| clipartSet chosenClipart |
	clipartSet := self clipartFiles.

	"render selected clipart first"
	chosenClipart := self session browsingClipart.  "could be nil, watch out!"
	chosenClipart
		ifNotNil: [:clipart | 
			self renderClipart: clipart on: html.
			clipartSet remove: chosenClipart ].

	"now render the rest"	
	clipartSet do: [:clipart | self renderClipart: clipart on: html ]