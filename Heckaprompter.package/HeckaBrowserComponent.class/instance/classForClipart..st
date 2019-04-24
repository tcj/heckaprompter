rendering
classForClipart: aClipart
	^ self session browsingClipart
		ifNil: [ "none is selected"
			 'chooserClipartItem' ]
		ifNotNil: [:chosenClipart |
			( chosenClipart = aClipart )
				ifTrue: [ 'chooserClipartItemChosen' ]
				ifFalse: [ 'chooserClipartItem' ] ]