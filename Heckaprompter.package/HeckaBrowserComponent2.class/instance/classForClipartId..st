rendering
classForClipartId: anId
	"Transcript show: ('anId = {1}, clipart = {2}, chosen = {3}' format: { anId . self session clipartForId: anId . self session browsingClipart }); cr."
	^ (self session browsingClipart uniqueId = anId )
		ifTrue: [ 'chooserClipartItemChosen' ]
		ifFalse: [ 'chooserClipartItem' ]