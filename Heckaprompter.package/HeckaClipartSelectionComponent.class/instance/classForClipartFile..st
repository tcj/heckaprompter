as yet unclassified
classForClipartFile: anObject
"	Transcript show: ('anObject = {1}, uniqueId = {2}, chosen = {3}' format: { anObject . anObject uniqueId . self session browsingClipart }); cr.
"	^ self session browsingClipart
		ifNil: [ "none is selected"
			 'chooserClipartItem' ]
		ifNotNil: [:clipart |
			( clipart = anObject )
				ifTrue: [ 'chooserClipartItemChosen' ]
				ifFalse: [ 'chooserClipartItem' ] ]