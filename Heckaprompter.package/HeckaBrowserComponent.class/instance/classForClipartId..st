rendering
classForClipartId: anId
	"Transcript show: ('anId = {1}, clipart = {2}, chosen = {3}' format: { anId . self session clipartForId: anId . self session browsingClipart }); cr."
	^ self session browsingClipart
		ifNil: [ "none is selected"
			 'chooserClipartItem' ]
		ifNotNil: [:clipart |
			( clipart uniqueId = anId )
				ifTrue: [ 'chooserClipartItemChosen' ]
				ifFalse: [ 'chooserClipartItem' ] ]