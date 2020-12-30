as yet unclassified
classForItem: anObject
"	Transcript show: ('anObject = {1}, uniqueId = {2}, chosen = {3}' format: { anObject . anObject uniqueId . self session browsingClipart }); cr.
"	^ self chosenItem
		ifNil: [ "none is selected"
			self normalItemStyle ]
		ifNotNil: [:item |
			( item = anObject )
				ifTrue: [ self chosenItemStyle ]
				ifFalse: [ self normalItemStyle ] ]